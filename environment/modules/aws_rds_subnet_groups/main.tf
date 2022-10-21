resource "aws_db_subnet_group" "this" {
  for_each   = var.db_subnet_groups
  name       = each.value.name
  subnet_ids = each.value.db_subnet_ids

}
