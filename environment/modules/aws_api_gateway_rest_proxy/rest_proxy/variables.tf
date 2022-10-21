variable "environment" {
  description = "Environment"
}

variable "api_gateway_name" {
  description = "REST API Gateway name"
}

variable "resourse_path_part" {
  description = "Path part, for proxy usage: '{proxy+}'"
}

variable "http_method" {
  description = "ANY, GET, POST, etc."
}

variable "api_key_required" {
  type = bool
}

variable "integration_http_method" {
  description = "Integration http method: ANY, POST, GET, etc."
}

variable "integration_type" {
  description = "Integration type: HTTP_PROXY, AWS_PROXY, MOCK, HTTP"
}

variable "integration_uri" {
  description = "URI to exiting REST API: https://api.test.com/{proxy}"
}

variable "endpoint_types" {
  description = "Valid types: EDGE, REGIONAL or PRIVATE"
  type        = list(any)
}

variable "vpc_endpoint_ids" {
  description = "VPC endpoint ids"
  type        = list(any)
}
