variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "region" {
  description = "The deployment's region."
  type        = string
  default     = "eastus2"
}

variable "environment" {
  description = "The environment where the resources will be deployed."
  type        = string
  default     = "Dev"
}

variable "owner" {
  description = "The resource's owner."
  type        = string
  default     = "Gaspar Acevedo Zain"
}

variable "key_vault_specs" {
  description = <<EOT
    Specifications for the main KV = {
        name:   String. The KV's name.
        SKU:    String. The KV's SKU. Possible values are 'standard'and 'premium'. Defaults to 'standard'.
        enable_rbac_authorization:      Bool. Indicates whether the Key Vault uses Role Based Access Control (RBAC) for authorization of data actions. Defaults to true.
        enabled_for_disk_encryption:    Bool. Indicates whether Azure Disk Encryption is permitted to retrieve secrets from the vault. Defaults to false.
        public_network_access_enabled:  Bool. Indicates whether public network access is enabled for the Key Vault. Set to false to enforce private access. Defaults to true.
        purge_protection_enabled:       Bool. Indicates whethe Purge Protection is enabled for this Key Vault. Defaults to false.
        soft_delete_retention_days:     Number. The number of days that items should be retained after being soft-deleted. Defaults to 7.    
    }
  EOT
  type = object({
    name                          = string
    sku                           = optional(string, "standard")
    enable_rbac_authorization     = optional(bool, true)
    enable_for_disk_encryption    = optional(bool, false)
    public_network_access_enabled = optional(bool, true)
    purge_protection_enabled      = optional(bool, false)
    soft_delete_retention_days    = optional(number, 7)
  })
}

variable "vnet_specs" {
  description = <<EOT
    vnet_specs = {
        name:           String. The Virtual Network name.
        address_space:  String. The Virtual Network address space.
    }
  EOT
  type = object({
    name          = string
    address_space = string
  })
}

variable "acr_specs" {
  description = <<EOT
    acr_specs = {
        name:   String. The ACR's name.
        sku:    String. The SKU of the Container Registry. Accepted values are Basic, Standard and Premium. Defaults to Standard.
        network_rule_bypass_option: String. Whether to allow trusted Azure services to access the Container Registry. Possible values are None and AzureServices. Defaults to None.
        public_access_enabled:      Bool. Whether to allow public access to the container registry. Defaults to true.
    }
  EOT
  type = object({
    name                       = string
    sku                        = optional(string, "Standard")
    network_rule_bypass_option = optional(string, "None")
    public_access_enabled      = optional(bool, true)
  })
}

variable "kubernetes_subnet_specs" {
  description = <<EOT
    kubernetes_subnet_specs = {
      name:             String. The subnet's name.
      address_prefixes: String. The subnet's CIDR.
    }
  EOT
  type = object({
    name             = string
    address_prefixes = string
  })
}
