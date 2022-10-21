resource "aws_lb_listener_rule" "this" {
  for_each     = var.listener_rules
  listener_arn = each.value.listener_arn
  #   priority     = 100

  action {
    type             = each.value.type             // "forward"
    target_group_arn = each.value.target_group_arn // aws_alb_target_group.main-1.id
  }

  dynamic "condition" {
    for_each = [
      for condition_rule in each.value.conditions :
      condition_rule
      if length(lookup(condition_rule, "host_headers", [])) > 0
    ]
    content {
      host_header {
        values = condition.value["host_headers"] // ["dev-api.prime.coverwhale.com"]
      }
    }
  }

  dynamic "condition" {
    for_each = [
      for condition_rule in each.value.conditions :
      condition_rule
      if length(lookup(condition_rule, "path_patterns", [])) > 0
    ]
    content {
      path_pattern {
        values = condition.value["path_patterns"] // ["/api/client/*"]
      }
    }
  }
  lifecycle {
    ignore_changes = [
      action
    ]
  }
}