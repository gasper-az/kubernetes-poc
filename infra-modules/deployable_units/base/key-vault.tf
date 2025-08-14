module "key-vault" {
  source                        = "../../modules/key-vault"
  name                          = var.key_vault_specs.name
  resource_group_name           = azurerm_resource_group.resource_group.name
  location                      = var.region
  sku_name                      = var.key_vault_specs.sku
  enable_rbac_authorization     = var.key_vault_specs.enable_rbac_authorization
  enabled_for_disk_encryption   = var.key_vault_specs.enable_for_disk_encryption
  public_network_access_enabled = var.key_vault_specs.public_network_access_enabled
  purge_protection_enabled      = var.key_vault_specs.purge_protection_enabled
  soft_delete_retention_days    = var.key_vault_specs.soft_delete_retention_days
  tags                          = local.tags
}
