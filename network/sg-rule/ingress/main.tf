resource "yandex_vpc_security_group_rule" "ingress-rule" {
  //count                  = length(var.cidrs)
  security_group_binding = var.sg-id
  direction              = "ingress"
  description            = var.description
  v4_cidr_blocks         = [var.cidr]
  port                   = var.port
  protocol               = var.protocol
}
