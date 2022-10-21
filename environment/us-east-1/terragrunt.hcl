locals {
  environment_config = read_terragrunt_config(find_in_parent_folders("environment.hcl"))
  environment        = local.environment_config.locals.environment
}

remote_state {
  backend = "s3"
  generate = {
    path      = "_backend.tf"
    if_exists = "overwrite"
  }

  config = {
    bucket  = "${local.environment}-tfstates.supertest.com"
    key     = "remoteStates/${path_relative_to_include()}/terraform.tfstate"
    region  = "us-east-2"
    encrypt = true
  }
}

generate "myconfig" {
  path      = "_config.tf"
  if_exists = "overwrite"

  contents = <<EOF
provider "aws" {
    region = var.aws_region

    default_tags {
        tags = {
            Company    = "Super Test"
            Terraform  = "True"
            Created_by = "Sigma Software"
        }
    }
}

provider "aws" {
    region = "us-east-1"
    alias  = "acm"

    default_tags {
        tags = {
            Company    = "Super Test"
            Terraform  = "True"
            Created_by = "Sigma Software"
        }
    }
}

variable "aws_region" {}

EOF
}

terraform {
  extra_arguments "common_vars" {
    commands = get_terraform_commands_that_need_vars()

    required_var_files = [
      find_in_parent_folders("common.tfvars")
    ]
  }
}