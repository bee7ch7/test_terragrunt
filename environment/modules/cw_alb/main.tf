
resource "aws_lb" "main" {
  name               = "${var.name}-alb-${var.environment}"
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  security_groups    = [var.cw_be_sg_alb]
  subnets            = var.subnet_ids

  enable_deletion_protection = var.enable_deletion_protection

  tags = {
    Name        = "${var.name}-alb-${var.environment}",
    Environment = var.environment
  }
}