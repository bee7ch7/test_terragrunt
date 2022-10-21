resource "aws_security_group" "this" {

  for_each = var.groups

  name   = "${each.value.name}-${var.environment}"
  vpc_id = var.vpc_id

  dynamic "ingress" {
    for_each = each.value.ports_in.from_tcp
    content {
      protocol         = "tcp"
      from_port        = ingress.value
      to_port          = length(each.value.ports_in.to_tcp) > 0 ? each.value.ports_in.to_tcp[0] : ingress.value
      cidr_blocks      = length(each.value.ports_in.cidr_blocks) == 0 && length(each.value.ports_in.security_groups) == 0 ? ["0.0.0.0/0"] : each.value.ports_in.cidr_blocks
      ipv6_cidr_blocks = length(each.value.ports_in.ipv6_cidr_blocks) == 0 && length(each.value.ports_in.security_groups) == 0 ? null : each.value.ports_in.cidr_blocks
      security_groups  = each.value.ports_in.security_groups
    }
  }

  dynamic "ingress" {
    for_each = each.value.ports_in.from_udp
    content {
      protocol         = "udp"
      from_port        = ingress.value
      to_port          = length(each.value.ports_in.to_udp) > 0 ? each.value.ports_in.to_udp[0] : ingress.value
      cidr_blocks      = length(each.value.ports_in.cidr_blocks) == 0 && length(each.value.ports_in.security_groups) == 0 ? ["0.0.0.0/0"] : each.value.ports_in.cidr_blocks
      ipv6_cidr_blocks = length(each.value.ports_in.ipv6_cidr_blocks) == 0 && length(each.value.ports_in.security_groups) == 0 ? null : each.value.ports_in.cidr_blocks
      security_groups  = each.value.ports_in.security_groups
    }
  }

  dynamic "egress" {
    for_each = length(each.value.ports_out.cidr_blocks) == 0 ? ["0"] : each.value.ports_out.cidr_blocks
    content {
      protocol         = "-1"
      from_port        = 0
      to_port          = 0
      cidr_blocks      = length(each.value.ports_out.cidr_blocks) == 0 ? ["0.0.0.0/0"] : each.value.ports_out.cidr_blocks
      ipv6_cidr_blocks = length(each.value.ports_out.ipv6_cidr_blocks) == 0 ? ["::/0"] : each.value.ports_out.cidr_blocks

    }
  }

  tags = {
    Name = "${each.value.name}-${var.environment}"
  }
}
