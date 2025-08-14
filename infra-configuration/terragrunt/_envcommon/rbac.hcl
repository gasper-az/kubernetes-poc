locals {
  rbac = {
    azure_container_registry = {
      acr_pull = "AcrPull"
    }
    azure_kubernetes_service = {
      aks_cluster_admin_role = "Azure Kubernetes Service Cluster Admin Role"
      aks_rbac_cluster_admin = "Azure Kubernetes Service RBAC Cluster Admin"
    }
    dns_zones = {
      dns_zone_contributor = "DNS Zone Contributor"
    }
    key_vault = {
      key_vault_administrator        = "Key Vault Administrator"
      key_vault_certificates_officer = "Key Vault Certificates Officer"
      key_vault_certificate_user     = "Key Vault Certificate User"
    }
    networking = {
      network_contributor = "Network Contributor"
    }
    privileged = {
      owner = "Owner"
    }
    service_bus = {
      service_bus_data_owner = "Azure Service Bus Data Owner"
    }
    storage_account = {
      storage_blob_data_contributor = "Storage Blob Data Contributor"
    }
  }
}
