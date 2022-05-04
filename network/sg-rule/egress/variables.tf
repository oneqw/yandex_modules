variable "sg-id" {
  description = "Security group id"
  type        = string
  default     = "test"
}

variable "description" {
  default = "Egress rule for "
}

variable "cidrs" {
  description = "Subnet cidrs for sg rule"
  default     = ["192.168.0.0/24", "10.10.10.0/24"]
}

variable "protocol" {
  description = "Subnet cidrs for vpc"
  default     = "TCP"
}

variable "from-port" {
  description = "Subnet cidrs for vpc"
  default     = "0"
}

variable "to-port" {
  description = "Subnet cidrs for vpc"
  default     = "65000"
}
