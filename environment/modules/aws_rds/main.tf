module "rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "5.1.0"

  identifier = "${var.name}-${var.environment}"
  #   db_name    = var.db_name

  engine               = var.engine
  engine_version       = var.engine_version
  family               = var.family               # DB parameter group
  major_engine_version = var.major_engine_version # DsB option group
  instance_class       = var.instance_class
  availability_zone    = length(var.availability_zone) > 0 ? var.availability_zone : null
  publicly_accessible  = var.publicly_accessible

  storage_type          = var.storage_type
  allocated_storage     = var.allocated_storage
  max_allocated_storage = var.max_allocated_storage

  # Encryption at rest is not available for DB instances running SQL Server Express Edition
  storage_encrypted = var.storage_encrypted

  username               = var.db_username
  password               = var.db_password_secret_string
  create_random_password = var.create_random_password
  port                   = var.port

  multi_az               = var.multi_az
  subnet_ids             = var.db_subnet_ids
  vpc_security_group_ids = [var.vpc_security_group_ids]
  db_subnet_group_name   = var.db_subnet_group_name

  maintenance_window              = var.maintenance_window
  backup_window                   = var.backup_window
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
  create_cloudwatch_log_group     = var.create_cloudwatch_log_group

  backup_retention_period = var.backup_retention_period
  skip_final_snapshot     = var.skip_final_snapshot
  deletion_protection     = var.deletion_protection

  #   performance_insights_enabled          = true
  #   performance_insights_retention_period = 7
  #   create_monitoring_role                = true
  #   monitoring_interval                   = 60

  #   options                   = var.options
  create_db_option_group    = var.create_db_option_group
  create_db_parameter_group = var.create_db_parameter_group
  license_model             = var.license_model
  timezone                  = var.timezone
  character_set_name        = var.character_set_name
  option_group_name         = var.option_group_name

  #   tags = local.tags
}