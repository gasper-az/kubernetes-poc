module "acr" {
  source                     = "../../modules/acr"
  acr_name                   = var.acr_specs.name
  acr_sku                    = var.acr_specs.sku
  resource_group_name        = azurerm_resource_group.resource_group.name
  location                   = var.region
  network_rule_bypass_option = var.acr_specs.network_rule_bypass_option
  public_access_enabled      = var.acr_specs.public_access_enabled
  tags                       = local.tags
}
