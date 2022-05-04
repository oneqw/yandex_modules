variable "route-name" {
  //description = "compute_instance name"
  type    = string
  default = "test"
}

variable "vpc_id" {
  //description = "Destination CIDR prefix"
  type    = string
  default = "test"
}

variable "dst-prefix" {
  //description = "Destination CIDR prefix"
  type    = string
  default = "test"
}

variable "nxt-hop" {
  //description = "Destination CIDR prefix"
  type    = string
  default = "2"
}
