variable "sns_topics" {
  type = map(object({
    name = string
  }))
}

variable "environment" {
  description = "Env"
}
