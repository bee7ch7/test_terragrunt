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
| [aws_secretsmanager_secret.google_client_id](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret.google_client_secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.google_client_id](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [aws_secretsmanager_secret_version.google_client_secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `any` | n/a | yes |
| <a name="input_google_client_id"></a> [google\_client\_id](#input\_google\_client\_id) | ID itself | `any` | n/a | yes |
| <a name="input_google_client_secret"></a> [google\_client\_secret](#input\_google\_client\_secret) | Secret itself | `any` | n/a | yes |
| <a name="input_secret_for"></a> [secret\_for](#input\_secret\_for) | Type of secret | `any` | n/a | yes |
| <a name="input_secret_name_client_id"></a> [secret\_name\_client\_id](#input\_secret\_name\_client\_id) | Name for Google client\_id | `any` | n/a | yes |
| <a name="input_secret_name_client_secret"></a> [secret\_name\_client\_secret](#input\_secret\_name\_client\_secret) | Name for Google client\_secret | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_google_client_id_arn"></a> [google\_client\_id\_arn](#output\_google\_client\_id\_arn) | n/a |
| <a name="output_google_client_secret_arn"></a> [google\_client\_secret\_arn](#output\_google\_client\_secret\_arn) | n/a |
<!-- END_TF_DOCS -->