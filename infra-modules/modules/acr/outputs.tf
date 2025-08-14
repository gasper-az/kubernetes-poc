output "container_registry_id" {
  value       = azurerm_container_registry.private_acr.id
  description = "The ID of the Azure Container Registry."
}

output "container_registry_name" {
  value       = azurerm_container_registry.private_acr.name
  description = "The name of the Azure Container Registry."
}
