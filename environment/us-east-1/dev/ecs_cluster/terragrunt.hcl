include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/aws_ecs"
}

inputs = {
  // environment = "dev"
  clusters = {
    cw = {
      name               = "cw"
      container_insights = "disabled"
    }
  }
}