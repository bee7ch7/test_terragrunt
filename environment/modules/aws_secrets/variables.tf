variable "environment" {
  #   default = "test"
}

variable "secrets" {
  type = map(any)
}

variable "secret_value" {

}

variable "random_password" {
  description = "Generate random password?"
  default     = false
}

