variable "vpc_id" {
  description = "VPC id"
  type        = string
}

variable "groups" {
  description = "Map of values"
  type = map(object({
    name = string
    ports_in = object({
      from_tcp         = list(any)
      to_tcp           = list(any)
      from_udp         = list(any)
      to_udp           = list(any)
      cidr_blocks      = list(any)
      ipv6_cidr_blocks = list(any)
      security_groups  = list(any)
    })
    ports_out = object({
      cidr_blocks      = list(any)
      ipv6_cidr_blocks = list(any)
    })
  }))
}

variable "environment" {
  description = "Environment"
}