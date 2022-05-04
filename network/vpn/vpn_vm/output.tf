output "vpn_vm_id" {
  value = yandex_compute_instance.vpn_vm.id
}

output "vpn_vm_ip" {
  value = yandex_compute_instance.vpn_vm.network_interface[0].ip_address
}

output "vpn_vm_name" {
  value = yandex_compute_instance.vpn_vm.name
}

output "vpn_vm_subnet_id" {
  value = yandex_compute_instance.vpn_vm.network_interface[0].subnet_id
}

/*
output "vpn_vm_nat_ip" {
  value = yandex_compute_instance.vpn_vm.network_interface.nat_ip_address
}
*/
