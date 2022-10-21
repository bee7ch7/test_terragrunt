variable "db_subnet_ids" {
  description = "DB subnets"
  type        = list(any)
}

variable "vpc_security_group_ids" {

}

variable "db_password_secret_string" {

}

variable "db_username" {

}

variable "name" {

}

variable "availability_zone" {

}

variable "publicly_accessible" {

}

variable "environment" {

}

variable "engine" {

}

variable "engine_version" {

}

variable "family" {

}

variable "major_engine_version" {

}

variable "instance_class" {

}

variable "allocated_storage" {

}

variable "max_allocated_storage" {

}

variable "storage_encrypted" {

}

variable "port" {

}

variable "multi_az" {

}

variable "maintenance_window" {

}

variable "backup_window" {

}

variable "enabled_cloudwatch_logs_exports" {
  type = list(any)
}

variable "create_cloudwatch_log_group" {

}

variable "backup_retention_period" {

}

variable "skip_final_snapshot" {

}

variable "deletion_protection" {

}

# variable "options" {
#   type = list(any)
# }

variable "create_db_option_group" {

}

variable "create_db_parameter_group" {

}

variable "license_model" {

}

variable "timezone" {

}

variable "character_set_name" {

}

variable "storage_type" {

}

variable "create_random_password" {

}

variable "db_subnet_group_name" {

}

variable "option_group_name" {

}

