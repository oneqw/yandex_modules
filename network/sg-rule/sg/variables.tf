variable "name" {
  description = "Security group id"
  //  type        = string
  default = "test"
}

variable "description" {
  default = "Ingress rule for "
}

variable "network-id" {
  //  type    = string
  default = "test"
}

variable "label" {
  description = "Subnet cidrs for vpc"
  default     = "TCP"
}
