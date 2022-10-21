variable "name" {
  description = "the name of your stack, e.g. \"demo\""
}

variable "environment" {
  description = "the name of your environment, e.g. \"prod\""
}

variable "alb_dns_name" {
  description = "ALB dns name"
}

variable "ordered_cache_behavior" {
  description = "List of ordered cache behaviour"
  type        = list(any)
}

variable "front_bucket_name" {
  description = "Name for bucket dedicated for front, example: test.example.com"
}

variable "aliases" {
  type = list(any)
}

variable "viewer_certificate" {
  type = map(any)
}