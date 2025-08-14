locals {
  common_vars_hcl = read_terragrunt_config(find_in_parent_folders("commons.hcl"))
  common_vars     = local.common_vars_hcl.locals
  environment     = local.common_vars.environments.dev
  primary_region  = local.common_vars.azure_region.eastus2
}

remote_state {
  backend = "local"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }
  config = {
    path = "${get_parent_terragrunt_dir()}/${path_relative_to_include()}/terraform.tfstate"
  }
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents  = <<EOF
provider "azurerm" {
  subscription_id      = "a7c38d21-c587-4bd0-9913-67218cfdc5bf"
  features {}
}
EOF
}

generate "required_providers" {
  path      = "main.tf"
  if_exists = "overwrite"
  contents  = <<EOF
terraform {
  required_version = ">= 1.7.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.4.0"
    }
  }
}
EOF
}
