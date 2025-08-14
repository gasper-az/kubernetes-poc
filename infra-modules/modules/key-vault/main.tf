data "azurerm_client_config" "current" {}

resource "azurerm_role_assignment" "key_vault_admin" {
  principal_id         = data.azurerm_client_config.current.object_id
  principal_type       = "ServicePrincipal"
  role_definition_name = "Key Vault Administrator"
  scope                = azurerm_key_vault.key_vault.id
}

resource "azurerm_key_vault" "key_vault" {
  name                          = var.name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  enabled_for_disk_encryption   = var.enabled_for_disk_encryption
  tenant_id                     = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days    = var.soft_delete_retention_days
  purge_protection_enabled      = var.purge_protection_enabled
  enable_rbac_authorization     = var.enable_rbac_authorization
  sku_name                      = var.sku_name
  public_network_access_enabled = var.public_network_access_enabled

  network_acls {
    default_action = var.network_acl_default_action
    bypass         = "AzureServices"
  }

  tags = var.tags
}
