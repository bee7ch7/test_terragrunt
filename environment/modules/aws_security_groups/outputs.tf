output "cw_be_sg_alb" {
  value = aws_security_group.alb.id
}

output "cw_be_sg_ecs_tasks" {
  value = aws_security_group.ecs_tasks.id
}

output "cw_db_sg" {
  value = aws_security_group.db.id
}

output "cw_db_public_sg" {
  value = aws_security_group.db_public.id
}

output "cw_ec2_vpn" {
  value = aws_security_group.ec2-vpn.id
}