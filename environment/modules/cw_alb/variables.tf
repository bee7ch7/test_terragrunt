variable "name" {
  description = "the name of your stack, e.g. \"demo\""
}

# variable "tg_name" {
#   description = "the name of target groups, e.g. \"demo\""
# }

variable "environment" {
  description = "the name of your environment, e.g. \"prod\""
}

variable "port_listener1" {
  description = "Port for listener 1"
}

variable "test_port_listener2" {
  description = "Port for listener 2"
}

variable "cw_be_sg_alb" {
  description = "ALB security group"
}

variable "subnet_ids" {
  description = "Public subnet ids for ALB"
  type        = list(any)
}

variable "vpc_id" {
  description = "VPC id"
}

# variable "path_main_1" {
#   description = "Healthcheck path for TG 1"
#   default     = "/"
# }

# variable "path_main_2" {
#   description = "Healthcheck path for TG 2"
#   default     = "/"
# }

variable "certificate_arn" {
  description = "Certificate ARN"
}

variable "test_port_https_listener2" {
  description = "Port for HTTPS listener 1"
}

variable "port_https_listener1" {
  description = "Port for HTTPS listener 2"
}

variable "target_group_cw_green" {

}

variable "target_group_cw_blue" {

}

variable "internal" {
  description = "Internal true / false"
  type        = bool
}

variable "load_balancer_type" {
  description = "Load balancer type: application, network"
}

variable "enable_deletion_protection" {
  description = "true / false"
  type        = bool
}