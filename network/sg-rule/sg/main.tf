resource "yandex_vpc_security_group" "sg_group" {
  name        = var.name
  description = var.description
  network_id  = var.network-id

  labels = {
    my-label = var.label
  }
}
