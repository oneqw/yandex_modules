variable "vm-name" {
  //description = "VPC route name"
  type    = string
  default = "test"
}

variable "platform-id" {
  //  description = "Destination CIDR prefix"
  type    = string
  default = "test"
}

variable "cloud-zone" {
  //description = "Next hop ip addres"
  type    = string
  default = "test"
}

variable "cpu-cores" {
  //description = "Next hop ip addres"
  type    = number
  default = "2"
}

variable "ram" {
  //description = "Next hop ip addres"
  type    = number
  default = "4"
}

variable "boot-dsk-img-id" {
  //description = "Next hop ip addres"
  type    = string
  default = "test"
}

variable "subnet-id" {
  //description = "Next hop ip addres"
  type    = string
  default = "test"
}

variable "sg_id" {
  //description = "Next hop ip addres"
  type    = string
  default = "test"
}
