resource "aws_alb_target_group" "this" {
  for_each    = var.tg_groups
  name        = "${each.value.name}-tg-${each.value.canary}-${var.environment}"
  port        = each.value.port
  protocol    = each.value.protocol
  vpc_id      = var.vpc_id
  target_type = each.value.target_type

  dynamic "health_check" {
    for_each = each.value.health_check
    content {
      enabled             = lookup(health_check.value, "enabled", null)
      healthy_threshold   = lookup(health_check.value, "healthy_threshold", null)
      interval            = lookup(health_check.value, "interval", null)
      protocol            = lookup(health_check.value, "protocol", null)
      matcher             = lookup(health_check.value, "matcher", null)
      timeout             = lookup(health_check.value, "timeout", null)
      path                = lookup(health_check.value, "health_check_path", null)
      unhealthy_threshold = lookup(health_check.value, "unhealthy_threshold", null)
    }
  }

  tags = {
    Name        = "${each.value.name}-tg-${each.value.canary}-${var.environment}"
    Environment = var.environment
  }
}
