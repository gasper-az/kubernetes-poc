locals {
  # regions
  azure_region_hcl = read_terragrunt_config("../_envcommon/azure_regions.hcl")
  azure_region     = local.azure_region_hcl.locals.azure_regions

  # environments
  environments_hcl = read_terragrunt_config("../_envcommon/environments.hcl")
  environments     = local.environments_hcl.locals.environments

  # azure resources
  azure_resources_hcl             = read_terragrunt_config("../_envcommon/azure_resources.hcl")
  azure_container_registry        = local.azure_resources_hcl.locals.azure_container_registry
  azure_key_vault_access_policies = local.azure_resources_hcl.locals.azure_key_vault_access_policies
  azure_key_vault_key             = local.azure_resources_hcl.locals.azure_key_vault_key
  azure_key_vault                 = local.azure_resources_hcl.locals.azure_key_vault
  azure_public_ip                 = local.azure_resources_hcl.locals.azure_public_ip
  azure_storage_account           = local.azure_resources_hcl.locals.azure_storage_account
  express_route                   = local.azure_resources_hcl.locals.express_route
  private_endpoints               = local.azure_resources_hcl.locals.private_endpoints

  # rbac
  rbac_hcl = read_terragrunt_config("../_envcommon/rbac.hcl")
  rbac     = local.rbac_hcl.locals.rbac

}