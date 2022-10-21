variable "environment" {
  #   default = "test"
}

variable "secret_for" {
  description = "Type of secret"
}

variable "secret_name_client_id" {
  description = "Name for Google client_id"
}

variable "google_client_id" {
  description = "ID itself"
}

variable "secret_name_client_secret" {
  description = "Name for Google client_secret"
}

variable "google_client_secret" {
  description = "Secret itself"
}