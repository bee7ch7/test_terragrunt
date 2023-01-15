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
| [aws_iam_policy.db_secrets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.rds_s3_backup_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.s3_environment_file](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.s3_single_bucket_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.sqs_ecs_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.ecs_codedeploy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.ecs_task_execution_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.ecs_task_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.rds_s3_backup](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.db-secrets-attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.ecs-codedeploy-role-policy-attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.ecs-s3-role-policy-attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.ecs-task-execution-role-policy-attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.rds-backup-attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.s3-envfiles-attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.sqs-attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_secrets"></a> [db\_secrets](#input\_db\_secrets) | List of secrets | `list(any)` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment | `any` | n/a | yes |
| <a name="input_main_sqs_queue"></a> [main\_sqs\_queue](#input\_main\_sqs\_queue) | Main SQS queue ARN | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name | `any` | n/a | yes |
| <a name="input_s3_environment_bucket"></a> [s3\_environment\_bucket](#input\_s3\_environment\_bucket) | Link to environment bucket | `any` | n/a | yes |
| <a name="input_s3_environment_folder"></a> [s3\_environment\_folder](#input\_s3\_environment\_folder) | Link to environment folder with file on S3 | `any` | n/a | yes |
| <a name="input_s3_mssql_backup_bucket"></a> [s3\_mssql\_backup\_bucket](#input\_s3\_mssql\_backup\_bucket) | n/a | `any` | n/a | yes |
| <a name="input_s3_mssql_backup_folder"></a> [s3\_mssql\_backup\_folder](#input\_s3\_mssql\_backup\_folder) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ecsCodeDeployRole_arn"></a> [ecsCodeDeployRole\_arn](#output\_ecsCodeDeployRole\_arn) | n/a |
| <a name="output_ecsTaskExecutionRole_arn"></a> [ecsTaskExecutionRole\_arn](#output\_ecsTaskExecutionRole\_arn) | n/a |
| <a name="output_rds_s3_backup_arn"></a> [rds\_s3\_backup\_arn](#output\_rds\_s3\_backup\_arn) | n/a |
<!-- END_TF_DOCS -->