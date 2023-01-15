<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_security_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment | `any` | n/a | yes |
| <a name="input_groups"></a> [groups](#input\_groups) | Map of values | <pre>map(object({<br>    name = string<br>    ports_in = object({<br>      from_tcp         = list(any)<br>      to_tcp           = list(any)<br>      from_udp         = list(any)<br>      to_udp           = list(any)<br>      cidr_blocks      = list(any)<br>      ipv6_cidr_blocks = list(any)<br>      security_groups  = list(any)<br>    })<br>    ports_out = object({<br>      cidr_blocks      = list(any)<br>      ipv6_cidr_blocks = list(any)<br>    })<br>  }))</pre> | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_security_group_ids"></a> [security\_group\_ids](#output\_security\_group\_ids) | n/a |
<!-- END_TF_DOCS -->