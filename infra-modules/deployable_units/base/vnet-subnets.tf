module "vnet" {
  source              = "../../modules/virtual-networks"
  name                = var.vnet_specs.name
  location            = var.region
  resource_group_name = azurerm_resource_group.resource_group.name
  address_space       = var.vnet_specs.address_space
  tags                = local.tags
}

module "kubernetes_subnets" {
  source               = "../../modules/subnets"
  name                 = var.kubernetes_subnet_specs.name
  resource_group_name  = azurerm_resource_group.resource_group.name
  virtual_network_name = module.vnet.name
  address_prefixes     = var.kubernetes_subnet_specs.address_prefixes
}
