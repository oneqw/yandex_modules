/*
output "local_route_id" {
  value = module.local_route_to_vpn.route_id
}
*/

output "remote_route_id" {
  value = module.remote_route_to_vpn.route_id
}
/*
output "local_vpn_ext_ip" {
  value = yandex_vpc_address.local_ext_ip_address.external_ipv4_address[0].address
}

output "remote_vpn_ext_ip" {
  value = yandex_vpc_address.remote_ext_ip_address.external_ipv4_address[0].address
}

output "local_ext_ip_zone_id" {
  value = yandex_vpc_address.local_ext_ip_address.external_ipv4_address[0].zone_id
}

output "remote_ext_ip_zone_id" {
  value = yandex_vpc_address.remote_ext_ip_address.external_ipv4_address[0].zone_id
}
*/

output "local_vpn_vm_id" {
  value = module.local_vpn_vm.vpn_vm_id
}

output "remote_vpn_vm_id" {
  value = module.remote_vpn_vm.vpn_vm_id
}

output "local_vpn_vm_ip" {
  value = module.local_vpn_vm.vpn_vm_ip
}

output "remote_vpn_vm_ip" {
  value = module.remote_vpn_vm.vpn_vm_ip
}
