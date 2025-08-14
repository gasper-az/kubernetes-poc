resource "azurerm_container_registry" "private_acr" {
  name                          = var.acr_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  sku                           = var.acr_sku
  public_network_access_enabled = var.public_access_enabled
  network_rule_bypass_option    = var.network_rule_bypass_option
  tags                          = var.tags
}
