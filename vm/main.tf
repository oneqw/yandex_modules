
resource "yandex_compute_instance" "compute-instance" {
  name        = var.vm-name
  platform_id = var.platform-id
  zone        = var.cloud-zone

  resources {
    cores  = var.cpu-cores
    memory = var.ram
  }

  boot_disk {
    initialize_params {
      image_id = var.boot-dsk-img-id
    }
  }

  network_interface {
    subnet_id = var.subnet-id
    //  security_group_ids = [var.sg_id]
  }

  metadata = {
    foo                = "bar"
    ssh-keys           = "sdwdfghjhk"
    serial-port-enable = 1
    //user-data          = "${data.template_file.local_init.rendered}"
  }

  scheduling_policy {
    preemptible = true
  }
}
