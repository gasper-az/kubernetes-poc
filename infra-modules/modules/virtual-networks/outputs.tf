output "id" {
  description = "The virtual NetworkConfiguration ID."
  value       = azurerm_virtual_network.vnet.id
}

output "name" {
  description = "The VNet name."
  value       = azurerm_virtual_network.vnet.name
}
