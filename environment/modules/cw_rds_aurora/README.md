<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aurora"></a> [aurora](#module\_aurora) | terraform-aws-modules/rds-aurora/aws | 7.2.2 |

## Resources

| Name | Type |
|------|------|
| [aws_db_subnet_group.db](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | Specify initial database name | `any` | n/a | yes |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | Specify initial database name | `any` | n/a | yes |
| <a name="input_db_password_secret_string"></a> [db\_password\_secret\_string](#input\_db\_password\_secret\_string) | DB password | `any` | n/a | yes |
| <a name="input_db_subnet_ids"></a> [db\_subnet\_ids](#input\_db\_subnet\_ids) | DB subnets | `list(any)` | n/a | yes |
| <a name="input_db_username"></a> [db\_username](#input\_db\_username) | DB username | `any` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Set environment | `any` | n/a | yes |
| <a name="input_instances"></a> [instances](#input\_instances) | n/a | `map(any)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Specify name | `any` | n/a | yes |
| <a name="input_preffered_maintenance_window"></a> [preffered\_maintenance\_window](#input\_preffered\_maintenance\_window) | For example: "sun:08:00-sun:09:00" | `string` | `"sun:08:00-sun:09:00"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | Allowed VPC cidr block | `any` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC id for database cluster | `any` | n/a | yes |
| <a name="input_vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#input\_vpc\_security\_group\_ids) | DB security groups | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_endpoint"></a> [db\_endpoint](#output\_db\_endpoint) | n/a |
| <a name="output_db_hosted_zone"></a> [db\_hosted\_zone](#output\_db\_hosted\_zone) | n/a |
| <a name="output_db_id"></a> [db\_id](#output\_db\_id) | n/a |
| <a name="output_db_name"></a> [db\_name](#output\_db\_name) | n/a |
| <a name="output_db_port"></a> [db\_port](#output\_db\_port) | n/a |
| <a name="output_db_reader_endpoint"></a> [db\_reader\_endpoint](#output\_db\_reader\_endpoint) | n/a |
| <a name="output_db_user"></a> [db\_user](#output\_db\_user) | n/a |
<!-- END_TF_DOCS -->