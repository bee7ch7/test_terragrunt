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
| [aws_security_group.alb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.db](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.db_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.ec2-vpn](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.ecs_tasks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | the name of your environment, e.g. "prod" | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | the name of your stack, e.g. "demo" | `any` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | VPC cidr block | `any` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC id | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cw_be_sg_alb"></a> [cw\_be\_sg\_alb](#output\_cw\_be\_sg\_alb) | n/a |
| <a name="output_cw_be_sg_ecs_tasks"></a> [cw\_be\_sg\_ecs\_tasks](#output\_cw\_be\_sg\_ecs\_tasks) | n/a |
| <a name="output_cw_db_public_sg"></a> [cw\_db\_public\_sg](#output\_cw\_db\_public\_sg) | n/a |
| <a name="output_cw_db_sg"></a> [cw\_db\_sg](#output\_cw\_db\_sg) | n/a |
| <a name="output_cw_ec2_vpn"></a> [cw\_ec2\_vpn](#output\_cw\_ec2\_vpn) | n/a |
<!-- END_TF_DOCS -->