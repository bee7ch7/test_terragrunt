# variable "main_db_endpoint" {
#   description = "the name of your stack, e.g. \"demo\""
# }

# variable "main_db_reader_endpoint" {
#   description = "the name of your stack, e.g. \"demo\""
# }

# variable "main_db_port" {
#   description = "the name of your stack, e.g. \"demo\""
# }

# variable "main_db_name" {
#   description = "the name of your stack, e.g. \"demo\""
# }

# variable "main_db_user" {
#   description = "the name of your stack, e.g. \"demo\""
# }

# variable "param_name" {
#   description = "the name of your environment, e.g. \"prod\""
# }

variable "monitoring" {
  description = "the name of your environment, e.g. \"prod\""
}

variable "google_params" {
  description = "the name of your environment, e.g. \"prod\""
}

variable "environment" {
  description = "the name of your environment, e.g. \"prod\""
}

variable "google_client_id" {
  description = "Client ID"
}

variable "google_client_secret" {
  description = "Client Secret"
}

variable "nr_license_key" {
  description = "New Relic license key"
}