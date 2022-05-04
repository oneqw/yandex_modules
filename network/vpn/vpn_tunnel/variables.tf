// ----------------- переменные для маршрута

variable "local_vpc_id" {
  default = "default_vpc"
}

variable "local_route_name" {
  type    = string
  default = "default_vpc"
}

variable "local_dst_prefix" {
  type    = string
  default = "default_vpc"
}

variable "local_nxt_hop" {
  type    = string
  default = "default_vpc"
}

// ----------------- переменные для маршрута

variable "remote_vpc_id" {
  default = "default_vpc"
}

variable "remote_route_name" {
  default = "default_vpc"
}

variable "remote_dst_prefix" {
  default = "default_vpc"
}

variable "remote_nxt_hop" {
  default = "default_vpc"
}

// ----------------- переменные для vm vpn

variable "local_init_file_name" {
  default = "default_vpc"
}

variable "public_key_path" {
  default = "ru-central1-a"
}

variable "l_local_ext_ip_address" {
  default = "192.168.1.0/24"
}

variable "l_remote_ext_ip_address" {
  default = "Office network"
}

variable "ipsec_password" {
  default = "Route to DC"
}

variable "local_cloud_zone" {
  default = "Route to DC"
}

variable "local_name_vpn_vm" {
  default = "192.168.1.10"
}

variable "local_hostname_vpn_vm" {
  default = "Route to mng network"
}

variable "local_subnet_id" {
  default = "192.168.1.3.0/24"
}


// ----------------- переменные для vm vpn

variable "remote_init_file_name" {
  default = "default_vpc"
}

variable "r_local_ext_ip_address" {
  default = "192.168.1.0/24"
}

variable "r_remote_ext_ip_address" {
  default = "Office network"
}

variable "remote_cloud_zone" {
  default = "192.168.7.0/24"
}

variable "remote_name_vpn_vm" {
  default = "192.168.1.10"
}

variable "remote_hostname_vpn_vm" {
  default = "Route to mng network"
}

variable "remote_subnet_id" {
  default = "192.168.1.3.0/24"
}
