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
| [aws_codedeploy_app.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codedeploy_app) | resource |
| [aws_codedeploy_deployment_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codedeploy_deployment_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apps_list"></a> [apps\_list](#input\_apps\_list) | n/a | <pre>map(object({<br>    name                  = string<br>    code_deploy_strategy  = string<br>    ecsCodeDeployRole_arn = string<br><br>    ecs_cluster_name      = string<br>    ecs_service_main_name = string<br><br>    alb_listener1           = string<br>    alb_test_listener2      = string<br>    main_target_group_name1 = string<br>    main_target_group_name2 = string<br><br>    trigger_name                     = string<br>    trigger_sns_topic_arn            = string<br>    termination_wait_time_in_minutes = number<br>  }))</pre> | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | the name of your environment, e.g. "prod" | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_codedeploy_apps"></a> [codedeploy\_apps](#output\_codedeploy\_apps) | n/a |
| <a name="output_codedeploy_group_configs"></a> [codedeploy\_group\_configs](#output\_codedeploy\_group\_configs) | n/a |
| <a name="output_codedeploy_group_names"></a> [codedeploy\_group\_names](#output\_codedeploy\_group\_names) | n/a |
<!-- END_TF_DOCS -->