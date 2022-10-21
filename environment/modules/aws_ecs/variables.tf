variable "environment" {
  description = "test, dev, prod, etc"
}

variable "clusters" {
  type = map(object({
    name               = string
    container_insights = string
  }))
}