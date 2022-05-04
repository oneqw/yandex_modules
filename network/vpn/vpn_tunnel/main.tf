
module "local_route_to_vpn" {
  //source     = "../../route"
  source     = "git::git@github.com:oneqw/yandex_modules.git//network/route"
  vpc_id     = var.local_vpc_id
  route-name = var.local_route_name
  dst-prefix = var.local_dst_prefix
  //nxt-hop    = var.local_nxt_hop
  nxt-hop = module.local_vpn_vm.vpn_vm_ip
}

module "remote_route_to_vpn" {
  //source     = "../../route"
  source     = "git::git@github.com:oneqw/yandex_modules.git//network/route"
  vpc_id     = var.remote_vpc_id
  route-name = var.remote_route_name
  dst-prefix = var.remote_dst_prefix
  //nxt-hop    = var.remote_nxt_hop
  nxt-hop = module.remote_vpn_vm.vpn_vm_ip
}

module "local_vpn_vm" {
  //source          = "../vpn_vm"
  source          = "git::git@github.com:oneqw/yandex_modules.git//network/vpn/vpn_vm"
  init_file_name  = var.local_init_file_name
  public_key_path = var.public_key_path
  //local_ext_ip_address  = var.local_ext_ip_address
  //  remote_ext_ip_address = var.remote_ext_ip_address
  local_ext_ip_address  = var.l_local_ext_ip_address
  remote_ext_ip_address = var.l_remote_ext_ip_address
  ipsec_password        = var.ipsec_password
  cloud_zone            = var.local_cloud_zone
  name_vpn_vm           = var.local_name_vpn_vm
  hostname_vpn_vm       = var.local_hostname_vpn_vm
  subnet_id             = var.local_subnet_id
  //subnet_id             = module.subnet_network.subnet_id
  //ip_address            = var.ip_address
  //sg_id = var.sg_id
  ext_ip_address = var.l_local_ext_ip_address
}


module "remote_vpn_vm" {
  //source          = "../vpn_vm"
  source          = "git::git@github.com:oneqw/yandex_modules.git//network/vpn/vpn_vm"
  init_file_name  = var.remote_init_file_name
  public_key_path = var.public_key_path
  //local_ext_ip_address  = var.remote_ext_ip_address
  //remote_ext_ip_address = var.local_ext_ip_address
  //local_ext_ip_address  = yandex_vpc_address.remote_ext_ip_address.external_address[0].ip_address
  //remote_ext_ip_address = yandex_vpc_address.locale_ext_ip_address.external_address[0].ip_address
  local_ext_ip_address  = var.r_remote_ext_ip_address
  remote_ext_ip_address = var.r_local_ext_ip_address
  ipsec_password        = var.ipsec_password
  cloud_zone            = var.remote_cloud_zone
  name_vpn_vm           = var.remote_name_vpn_vm
  hostname_vpn_vm       = var.remote_hostname_vpn_vm
  subnet_id             = var.remote_subnet_id
  //subnet_id             = module.subnet_network.subnet_id
  //ip_address            = var.ip_address
  //sg_id = var.sg_id
  ext_ip_address = var.l_remote_ext_ip_address

  depends_on = [
    module.local_vpn_vm,
  ]
}
