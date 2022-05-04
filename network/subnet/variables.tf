variable "vpc_id" {
  description = "VPC id"
  type        = string
  default     = "test"
}

variable "cloud-zone" {
  description = "Yandex cloud zone"
  //type        = list(string)
  //default = ["ru-central1-a"]
  default = "ru-central1-a"
}

variable "subnet-cidr" {
  description = "Subnet cidrs for vpc"
  //type        = list(string)
  default = "192.168.0.0/24"
}

variable "subnet-name" {
  description = "Subnet cidrs for vpc"
  //type        = list(string)
  default = "office"
}
