output "key_vault_id" {
  description = "The Key Vault ID"
  value       = azurerm_key_vault.key_vault.id
}

output "vault_uri" {
  description = "The URI of the Key Vault, used for performing operations on keys and secrets."
  value       = azurerm_key_vault.key_vault.vault_uri
}
