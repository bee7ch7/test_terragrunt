variable "name" {
  description = "Name"
}

variable "environment" {
  description = "Environment"
}

variable "main_sqs_queue" {
  description = "Main SQS queue ARN"
}

variable "db_secrets" {
  description = "List of secrets"
  type        = list(any)
}

variable "s3_environment_folder" {
  description = "Link to environment folder with file on S3"
}

variable "s3_environment_bucket" {
  description = "Link to environment bucket"
}

variable "s3_mssql_backup_folder" {

}
variable "s3_mssql_backup_bucket" {

}