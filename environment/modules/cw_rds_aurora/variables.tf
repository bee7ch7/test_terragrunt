variable "name" {
  description = "Specify name"
}

variable "db_name" {
  description = "Specify initial database name"
}

variable "database_name" {
  description = "Specify initial database name"
}

variable "environment" {
  description = "Set environment"
}

variable "db_subnet_ids" {
  description = "DB subnets"
  type        = list(any)
}

variable "vpc_id" {
  description = "VPC id for database cluster"
}

variable "vpc_security_group_ids" {
  description = "DB security groups"
}

variable "vpc_cidr" {
  description = "Allowed VPC cidr block"
}

variable "db_password_secret_string" {
  description = "DB password"
}

variable "db_username" {
  description = "DB username"
}

variable "preffered_maintenance_window" {
  description = "For example: \"sun:08:00-sun:09:00\""
  default     = "sun:08:00-sun:09:00"
}

variable "instances" {
  type = map(any)
}