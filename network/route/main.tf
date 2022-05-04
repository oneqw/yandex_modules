resource "yandex_vpc_route_table" "vpc-route" {
  name       = var.route-name
  network_id = var.vpc_id

  static_route {
    destination_prefix = var.dst-prefix
    next_hop_address   = var.nxt-hop
  }
}
