output "rest_api_id" {
  value = aws_api_gateway_rest_api.this.id
}

output "rest_api_arn" {
  value = aws_api_gateway_rest_api.this.arn
}

output "rest_api_name" {
  value = aws_api_gateway_rest_api.this.name
}

output "api_integration_id" {
  value = aws_api_gateway_integration.this.id
}

output "api_stage_id" {
  value = aws_api_gateway_stage.this.id
}

output "api_stage_name" {
  value = aws_api_gateway_stage.this.stage_name
}

output "api_stage_url" {
  value = aws_api_gateway_stage.this.invoke_url
}
