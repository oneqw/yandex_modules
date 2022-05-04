
resource "yandex_vpc_subnet" "vpc-subnet" {
  //count = length(var.subnet-cidrs)
  //name  = "${var.subnet-name[count.index]}-network"
  name       = var.subnet-name
  zone       = var.cloud-zone
  network_id = var.vpc_id
  //v4_cidr_blocks = [element(var.subnet-cidrs, count.index)]
  v4_cidr_blocks = [var.subnet-cidr]
}
