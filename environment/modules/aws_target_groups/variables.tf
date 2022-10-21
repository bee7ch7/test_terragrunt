variable "environment" {
  description = "the name of your environment, e.g. \"prod\""
}

variable "vpc_id" {
  description = "VPC id"
}

# variable "health_check_path" {
#   description = "Health check path"
# }

variable "tg_groups" {
  type = map(any)
}