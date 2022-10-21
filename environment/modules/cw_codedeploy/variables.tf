variable "environment" {
  description = "the name of your environment, e.g. \"prod\""
}

variable "apps_list" {
  type = map(object({
    name                  = string
    code_deploy_strategy  = string
    ecsCodeDeployRole_arn = string

    ecs_cluster_name      = string
    ecs_service_main_name = string

    alb_listener1           = string
    alb_test_listener2      = string
    main_target_group_name1 = string
    main_target_group_name2 = string

    trigger_name                     = string
    trigger_sns_topic_arn            = string
    termination_wait_time_in_minutes = number
  }))
}