locals {
  azure_container_registry = {
    sku = {
      standard = "Standard"
      premium  = "Premium"
    }
  }

  azure_key_vault = {
    sku = {
      standard = "standard"
      premium  = "premium"
    }
  }

  azure_key_vault_access_policies = {
    key_permissions = {
      backup            = "Backup"
      create            = "Create"
      decrypt           = "Decrypt"
      delete            = "Delete"
      encrypt           = "Encrypt"
      get               = "Get"
      import            = "Import"
      list              = "List"
      purge             = "Purge"
      recover           = "Recover"
      restore           = "Restore"
      sign              = "Sign"
      unwrapKey         = "UnwrapKey"
      update            = "Update"
      verify            = "Verify"
      wrapKey           = "WrapKey"
      release           = "Release"
      rotate            = "Rotate"
      getRotationPolicy = "GetRotationPolicy"
      setRotationPolicy = "SetRotationPolicy"
    }
  }

  azure_key_vault_key = {
    key_opts = {
      decrypt   = "decrypt"
      encrypt   = "encrypt"
      sign      = "sign"
      unwrapKey = "unwrapKey"
      verify    = "verify"
      wrapKey   = "wrapKey"
    }
    key_size = {
      size_2048 = 2048
    }
    key_type = {
      ec      = "EC"
      ec_hsm  = "EC-HSM"
      rsa     = "RSA"
      rsa_hsm = "RSA-HSM"
    }
  }

  azure_public_ip = {
    allocation_methods = {
      static = "Static"
    }
    sku = {
      standard = "Standard"
    }
    sku_tier = {
      regional = "Regional"
    }
  }

  azure_storage_account = {
    access_tier = {
      Hot  = "Hot"
      Cold = "Cold"
    }
    account_kind = {
      BlobStorage      = "BlobStorage"
      BlockBlobStorage = "BlockBlobStorage"
      FileStorage      = "FileStorage"
      Storage          = "Storage"
      StorageV2        = "StorageV2"
    }
    account_tier = {
      Standard = "Standard"
      Premium  = "Premium"
    }
    replication_type = {
      GRS    = "GRS"
      GZRS   = "GZRS"
      LRS    = "LRS"
      RAGRS  = "RAGRS"
      RAGZRS = "RAGZRS"
      ZRS    = "ZRS"
    }
  }

  express_route = {
    gw_sku = {
      standard = "Standard"
    }
    peering_location = {
      new_york = "New York"
    }
    service_provider = {
      equinix = "Equinix"
    }
    sku_tier = {
      standard = "Standard"
    }
    sku_family = {
      metered_data = "MeteredData"
    }
  }

  private_endpoints = {
    subresource_names = {
      function              = "sites"
      keyvault_vaults       = "vault"
      container_registry    = "registry"
      storage_account_blob  = "blob"
      storage_account_file  = "file"
      storage_account_queue = "queue"
      storage_account_table = "table"
      storage_account_dfs   = "dfs"
    }
  }
}
