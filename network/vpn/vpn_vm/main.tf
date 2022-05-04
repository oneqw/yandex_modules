data "yandex_compute_image" "vpn_image" {
  family = "ipsec-instance-ubuntu"
}


//------------------------------ настройки VPN сервера -------------------------

data "template_file" "local_init" {
  //template = file("local-init.tpl.yaml")
  template = file(var.init_file_name)
  vars = {
    ssh_key = "${file(var.public_key_path)}"
    //local_addr  = yandex_vpc_address.local_ext_ip_address.external_ipv4_address[0].address
    //  remote_addr = yandex_vpc_address.remote_ext_ip_address.external_ipv4_address[0].address
    local_addr  = var.local_ext_ip_address
    remote_addr = var.remote_ext_ip_address
    ipsec_pass  = var.ipsec_password
  }
}

//------------------------------ VPN  в сторону DC remote -------------------------

resource "yandex_compute_instance" "vpn_vm" {
  zone        = var.cloud_zone
  name        = var.name_vpn_vm
  hostname    = var.hostname_vpn_vm
  platform_id = "standard-v2"
  resources {
    cores  = 2
    memory = 4
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.vpn_image.id
      type     = "network-ssd"
      size     = 20
    }
  }
  network_interface {
    subnet_id = var.subnet_id
    //ip_address     = var.ip_address
    nat            = true
    nat_ip_address = var.ext_ip_address
    //  security_group_ids = [var.sg_id]
  }

  metadata = {
    user-data          = "${data.template_file.local_init.rendered}"
    serial-port-enable = 1
  }
}
