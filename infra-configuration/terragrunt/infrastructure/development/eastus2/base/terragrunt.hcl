include "environment" {
  path   = find_in_parent_folders("development.hcl")
  expose = true
}

terraform {
  source = "../../../../../..//infra-modules/deployable_units/base"
}

locals {
  variables = include.environment.locals
}

inputs = {
  environment         = local.variables.environment
  region              = local.variables.primary_region
  resource_group_name = "rg-gasper-aks"
  owner               = "Gaspar Acevedo Zain"
  key_vault_specs = {
    name                          = "kv-gasper-001"
    sku                           = local.variables.common_vars.azure_key_vault.sku.standard
    enable_rbac_authorization     = true
    enable_for_disk_encryption    = false
    public_network_access_enabled = true
    purge_protection_enabled      = false
    soft_delete_retention_days    = 7
  }

  vnet_specs = {
    name          = "vnet-gasper-001"
    address_space = "10.150.0.0/16"
  }

  kubernetes_subnet_specs = {
    name             = "snet-aks-gasper-001"
    address_prefixes = "10.150.0.0/21"
  }

  acr_specs = {
    name                       = "acrgasper001"
    sku                        = local.variables.common_vars.azure_container_registry.sku.standard
    network_rule_bypass_option = "None"
    public_access_enabled      = true
  }
}