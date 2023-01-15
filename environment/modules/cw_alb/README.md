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
| [aws_alb_listener.http-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_listener) | resource |
| [aws_alb_listener.test-http-2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_listener) | resource |
| [aws_lb.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.https-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_listener.test-https-2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_certificate_arn"></a> [certificate\_arn](#input\_certificate\_arn) | Certificate ARN | `any` | n/a | yes |
| <a name="input_cw_be_sg_alb"></a> [cw\_be\_sg\_alb](#input\_cw\_be\_sg\_alb) | ALB security group | `any` | n/a | yes |
| <a name="input_enable_deletion_protection"></a> [enable\_deletion\_protection](#input\_enable\_deletion\_protection) | true / false | `bool` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | the name of your environment, e.g. "prod" | `any` | n/a | yes |
| <a name="input_internal"></a> [internal](#input\_internal) | Internal true / false | `bool` | n/a | yes |
| <a name="input_load_balancer_type"></a> [load\_balancer\_type](#input\_load\_balancer\_type) | Load balancer type: application, network | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | the name of your stack, e.g. "demo" | `any` | n/a | yes |
| <a name="input_port_https_listener1"></a> [port\_https\_listener1](#input\_port\_https\_listener1) | Port for HTTPS listener 2 | `any` | n/a | yes |
| <a name="input_port_listener1"></a> [port\_listener1](#input\_port\_listener1) | Port for listener 1 | `any` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | Public subnet ids for ALB | `list(any)` | n/a | yes |
| <a name="input_target_group_cw_blue"></a> [target\_group\_cw\_blue](#input\_target\_group\_cw\_blue) | n/a | `any` | n/a | yes |
| <a name="input_target_group_cw_green"></a> [target\_group\_cw\_green](#input\_target\_group\_cw\_green) | n/a | `any` | n/a | yes |
| <a name="input_test_port_https_listener2"></a> [test\_port\_https\_listener2](#input\_test\_port\_https\_listener2) | Port for HTTPS listener 1 | `any` | n/a | yes |
| <a name="input_test_port_listener2"></a> [test\_port\_listener2](#input\_test\_port\_listener2) | Port for listener 2 | `any` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC id | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alb_https_listener1"></a> [alb\_https\_listener1](#output\_alb\_https\_listener1) | n/a |
| <a name="output_alb_listener1"></a> [alb\_listener1](#output\_alb\_listener1) | n/a |
| <a name="output_alb_test_https_listener2"></a> [alb\_test\_https\_listener2](#output\_alb\_test\_https\_listener2) | n/a |
| <a name="output_alb_test_listener2"></a> [alb\_test\_listener2](#output\_alb\_test\_listener2) | n/a |
| <a name="output_main_dns_name"></a> [main\_dns\_name](#output\_main\_dns\_name) | n/a |
| <a name="output_main_lb_arn"></a> [main\_lb\_arn](#output\_main\_lb\_arn) | n/a |
| <a name="output_main_lb_id"></a> [main\_lb\_id](#output\_main\_lb\_id) | n/a |
| <a name="output_main_zone_id"></a> [main\_zone\_id](#output\_main\_zone\_id) | n/a |
<!-- END_TF_DOCS -->