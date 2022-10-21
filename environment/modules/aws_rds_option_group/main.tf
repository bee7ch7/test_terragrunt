resource "aws_db_option_group" "this" {
  for_each                 = var.option_groups
  name                     = "${each.value.name}-${var.environment}"        //"option-group-test-terraform"
  option_group_description = "${each.value.description}-${var.environment}" //"Terraform Option Group"
  engine_name              = each.value.engine_name                         //"sqlserver-ee"
  major_engine_version     = each.value.engine_version                      //"11.00"

  dynamic "option" {
    for_each = each.value.options
    content {
      option_name = option.value.name
      dynamic "option_settings" {
        for_each = lookup(option.value, "option_settings", {})
        content {
          name  = option.value.option_settings.name
          value = option.value.option_settings.value
        }
      }
    }
  }
}