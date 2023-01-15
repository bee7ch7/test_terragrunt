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
| [aws_ssm_parameter.google_client_id](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.google_client_secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.new_relic_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | the name of your environment, e.g. "prod" | `any` | n/a | yes |
| <a name="input_google_client_id"></a> [google\_client\_id](#input\_google\_client\_id) | Client ID | `any` | n/a | yes |
| <a name="input_google_client_secret"></a> [google\_client\_secret](#input\_google\_client\_secret) | Client Secret | `any` | n/a | yes |
| <a name="input_google_params"></a> [google\_params](#input\_google\_params) | the name of your environment, e.g. "prod" | `any` | n/a | yes |
| <a name="input_monitoring"></a> [monitoring](#input\_monitoring) | the name of your environment, e.g. "prod" | `any` | n/a | yes |
| <a name="input_nr_license_key"></a> [nr\_license\_key](#input\_nr\_license\_key) | New Relic license key | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_google_client_id"></a> [google\_client\_id](#output\_google\_client\_id) | n/a |
| <a name="output_google_client_secret"></a> [google\_client\_secret](#output\_google\_client\_secret) | n/a |
| <a name="output_new_relic_key"></a> [new\_relic\_key](#output\_new\_relic\_key) | n/a |
<!-- END_TF_DOCS -->