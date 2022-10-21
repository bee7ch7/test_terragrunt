variable "name" {
  description = "the name of your stack, e.g. \"demo\""
}

variable "environment" {
  description = "the name of your environment, e.g. \"prod\""
}

variable "main_container_name" {
  description = "Name of main container"
}

variable "main_container_port" {
  description = "Port of container"
}

variable "main_container_cpu" {
  description = "The number of cpu units used by the task"
}

variable "main_container_memory" {
  description = "The amount (in MiB) of memory used by the task"
}

variable "main_container_image" {
  description = "Docker image to be launched"
}

variable "main_service_desired_count" {
  description = "Number of services running in parallel"
}

variable "main_entrypoint" {
  description = "Main entrypoint"
}

variable "logs_region" {
  description = "Region for ECS logs"
  default     = "us-east-2"
}

variable "vpc_id" {
  description = "VPC id"
}

variable "private_subnet_ids" {
  description = "List of private subnet ids"
  type        = list(any)
}

variable "public_subnet_ids" {
  description = "List of public subnet ids"
  type        = list(any)
}

variable "main_target_group_arn1" {
  description = "First target group ARN"
}

variable "main_target_group_arn2" {
  description = "Second target group ARN"
}

variable "sg_ecs_tasks" {
  description = "Security group for service"
}

variable "ecsTaskExecutionRole_arn" {
  description = "Task execution role ARN"
}

# variable "main_db_connection_string_arn" {
#   description = "DB connection string ARN"
# }

# variable "db_password_secret_arn" {
#   description = "DB password ARN"
# }

variable "main_list_of_task_secrets" {
  description = "List of secrets to pass to task definition"
  type        = list(any)
}

variable "main_port_mapping" {
  description = "Port mappings to pass to task definition"
  type        = list(any)
}

variable "deployment_type" {
  description = "Deployment type: CODE_DEPLOY, ECS, EXTERNAL"
}

variable "container_insights" {
  description = "Container Insights: enabled or disabled"
  default     = "disabled"
}