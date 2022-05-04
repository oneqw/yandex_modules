output "sg-ingress-id" {
  value = yandex_vpc_security_group_rule.ingress-rule[*].id
}
