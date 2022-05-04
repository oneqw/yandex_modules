
resource "yandex_vpc_security_group_rule" "egress-rule" {
  security_group_binding = var.sg-id
  direction              = "egress"
  description            = var.description
  v4_cidr_blocks         = var.cidrs
  protocol               = var.priotocol
  from_port              = var.from-port
  to_port                = var.to-port
}
