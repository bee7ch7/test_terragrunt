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
| [aws_eip.vpn](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_instance.vpn](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_ami.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | the name of your environment, e.g. "prod" | `any` | n/a | yes |
| <a name="input_install_vpn"></a> [install\_vpn](#input\_install\_vpn) | Include user\_data with pritunl vpn installation | `bool` | n/a | yes |
| <a name="input_instance_size"></a> [instance\_size](#input\_instance\_size) | Size of EC2 instance | `string` | `"t2.micro"` | no |
| <a name="input_name"></a> [name](#input\_name) | the name of your stack, e.g. "demo" | `any` | n/a | yes |
| <a name="input_public_subnet_id"></a> [public\_subnet\_id](#input\_public\_subnet\_id) | Public subnet id for EC2 | `any` | n/a | yes |
| <a name="input_sg_cw_ec2_vpn"></a> [sg\_cw\_ec2\_vpn](#input\_sg\_cw\_ec2\_vpn) | Security group for EC2 | `any` | n/a | yes |
| <a name="input_ssh_key_name"></a> [ssh\_key\_name](#input\_ssh\_key\_name) | Name of SSH key | `string` | `"cw_vpn"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_vpn_dns"></a> [ec2\_vpn\_dns](#output\_ec2\_vpn\_dns) | n/a |
| <a name="output_ec2_vpn_eip"></a> [ec2\_vpn\_eip](#output\_ec2\_vpn\_eip) | n/a |
| <a name="output_ec2_vpn_ip"></a> [ec2\_vpn\_ip](#output\_ec2\_vpn\_ip) | n/a |
<!-- END_TF_DOCS -->