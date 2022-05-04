output "subnet_id" {
  value = yandex_vpc_subnet.vpc-subnet.id
}

output "zone" {
  value = yandex_vpc_subnet.vpc-subnet.zone
}

output "subnet_cidr" {
  value = yandex_vpc_subnet.vpc-subnet.v4_cidr_blocks
}
