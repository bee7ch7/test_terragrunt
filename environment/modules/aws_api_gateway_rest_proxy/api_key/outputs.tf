output "api_key" {
  value     = aws_api_gateway_api_key.this
  sensitive = true
}

output "usage_plan_id" {
  value = aws_api_gateway_usage_plan.this.id
}

output "usage_plan_arn" {
  value = aws_api_gateway_usage_plan.this.arn
}

output "usage_plan_name" {
  value = aws_api_gateway_usage_plan.this.name
}
