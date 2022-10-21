terraform {
  experiments = [module_variable_optional_attrs]
}

variable "task_definitions" {
  type = map(object({
    container_cpu            = number
    container_memory         = number
    ecsTaskExecutionRole_arn = string
    entrypoint               = optional(list(any))
    container_image          = string
    container_name           = string
    logs_region              = string
    log_retantion_period     = number

    environmentFiles     = optional(list(map(any)))
    port_mapping         = list(any)
    list_of_task_secrets = optional(list(map(any)))
    command              = optional(list(any))
  }))
}

variable "environment" {
  description = "Environment"
}