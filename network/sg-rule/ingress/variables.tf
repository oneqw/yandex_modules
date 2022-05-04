variable "sg-id" {
  description = "Security group id"
  type        = string
  default     = "test"
}

variable "description" {
  default = "Ingress rule for "
}

variable "cidr" {
  description = "Subnet cidrs for sg rule"
  //  type        = list(string)
  default = "10.10.10.0/24"
}

variable "protocol" {
  description = "Subnet cidrs for vpc"
  default     = "TCP"
}

variable "port" {
  description = "Subnet cidrs for vpc"
  default     = "0"
}
