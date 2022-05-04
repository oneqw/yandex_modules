// ----------------- переменные для сети

variable "init_file_name" {
  default = "default_vpc"
}

variable "public_key_path" {
  default = "ru-central1-a"
}

variable "local_ext_ip_address" {
  default = "192.168.1.0/24"
}

variable "remote_ext_ip_address" {
  default = "Office network"
}

variable "ipsec_password" {
  default = "Route to DC"
}

variable "cloud_zone" {
  default = "192.168.7.0/24"
}

variable "name_vpn_vm" {
  default = "192.168.1.10"
}

variable "hostname_vpn_vm" {
  default = "Route to mng network"
}

variable "subnet_id" {
  default = "192.168.1.3.0/24"
}

variable "ext_ip_address" {
  default = "192.168.1.3.0"
}
