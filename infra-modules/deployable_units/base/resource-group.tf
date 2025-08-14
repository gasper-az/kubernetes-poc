resource "azurerm_resource_group" "resource_group" {
  name     = module.naming.generated_names[var.generator.main_generator].resource_group[0]
  location = var.region
  tags     = local.tags
}
