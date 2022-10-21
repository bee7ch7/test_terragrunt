resource "aws_db_subnet_group" "db" {
  name       = "main_db_subnet_group"
  subnet_ids = var.db_subnet_ids

  tags = {
    Name        = "${var.name}-db-subnet-group-${var.environment}",
    Environment = var.environment
  }
}


module "aurora" {
  source  = "terraform-aws-modules/rds-aurora/aws"
  version = "7.2.2"

  name           = "${var.db_name}-cluster"
  engine         = "aurora-mysql"
  engine_version = "8.0.mysql_aurora.3.02.0"

  instances = var.instances

  vpc_id                 = var.vpc_id
  db_subnet_group_name   = aws_db_subnet_group.db.name
  create_db_subnet_group = false
  create_security_group  = false
  vpc_security_group_ids = [var.vpc_security_group_ids]
  allowed_cidr_blocks    = [var.vpc_cidr]


  # iam_database_authentication_enabled = true
  database_name          = var.database_name
  master_username        = var.db_username
  master_password        = var.db_password_secret_string
  create_random_password = false

  apply_immediately            = true
  skip_final_snapshot          = true
  preferred_maintenance_window = "sun:08:00-sun:09:00"

  # performance_insights_enabled          = var.environment != "test" ? true : false
  # performance_insights_retention_period = var.environment != "test" ? 7 : null


  # lifecycle {
  #   ignore_changes = [
  #     engine_version,
  #     availability_zones,
  #     master_username,
  #     master_password
  #   ]
  # }


  tags = {
    Name        = "${var.name}-db-${var.environment}",
    Environment = var.environment
  }
}

