output "ecsCodeDeployRole_arn" {
  value = aws_iam_role.ecs_codedeploy.arn
}

output "ecsTaskExecutionRole_arn" {
  value = aws_iam_role.ecs_task_execution_role.arn
}

output "rds_s3_backup_arn" {
  value = aws_iam_role.rds_s3_backup.arn
}