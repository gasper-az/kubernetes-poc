module "vnet" {
  source              = "../../modules/virtual-networks"
  name                = var.vnet_specs.name
  location            = var.region
  resource_group_name = azurerm_resource_group.resource_group.name
  address_space       = var.vnet_specs.addres_space
  tags                = local.tags
}
