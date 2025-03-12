terraform {
  required_providers {
    azapi = {
      source = "azure/azapi"
    }
  }
}

resource "azurerm_storage_account" "example" {
  access_tier                       = var.storage_account_access_tier
  account_kind                      = var.storage_account_account_kind
  account_replication_type          = var.storage_account_account_replication_type
  account_tier                      = var.storage_account_account_tier
  allow_nested_items_to_be_public   = var.storage_account_allow_nested_items_to_be_public
  cross_tenant_replication_enabled  = var.storage_account_cross_tenant_replication_enabled
  default_to_oauth_authentication   = var.storage_account_default_to_oauth_authentication
  dns_endpoint_type                 = var.storage_account_dns_endpoint_type
  https_traffic_only_enabled        = var.storage_account_https_traffic_only_enabled
  infrastructure_encryption_enabled = var.storage_account_infrastructure_encryption_enabled
  is_hns_enabled                    = var.storage_account_hns_enabled
  large_file_share_enabled          = var.storage_account_large_file_share_enabled
  local_user_enabled                = var.storage_account_local_user_enabled
  location                          = var.storage_account_location
  min_tls_version                   = var.storage_account_min_tls_version
  name                              = var.storage_account_name
  nfsv3_enabled                     = var.storage_account_nfsv3_enabled
  public_network_access_enabled     = var.storage_account_public_network_access_enabled
  queue_encryption_key_type         = var.storage_account_queue_encryption_key_type
  resource_group_name               = var.resource_group_name
  sftp_enabled                      = var.storage_account_sftp_enabled
  shared_access_key_enabled         = var.storage_account_shared_access_key_enabled
  table_encryption_key_type         = var.storage_account_table_encryption_key_type
  tags                              = var.tags
  blob_properties {
    change_feed_enabled      = var.storage_account_blob_change_feed_enabled
    last_access_time_enabled = var.storage_account_blob_last_access_time_enabled
    versioning_enabled       = var.storage_account_blob_versioning_enabled
    container_delete_retention_policy {
      days = var.container_delete_retention_policy_days
    }
    delete_retention_policy {
      days                     = var.container_delete_retention_policy_days
      permanent_delete_enabled = var.storage_account_blob_permanent_delete_enabled
    }
  }
  network_rules {
    bypass = [
      "AzureServices",
    ]
    default_action = var.storage_account_blob_default_action
  }
  queue_properties {
    hour_metrics {
      enabled               = var.storage_account_blob_hour_metrics_enabled
      include_apis          = var.storage_account_blob_include_apis
      retention_policy_days = var.storage_account_blob_retention_policy_days
      version               = var.storage_account_blob_version
    }
    logging {
      delete  = var.storage_account_blob_logging_delete
      read    = var.storage_account_blob_logging_read
      version = var.storage_account_logging_version
      write   = var.storage_account_logging_write
    }
    minute_metrics {
      enabled      = var.minute_metrics_enabled
      include_apis = var.minute_metrics_include_apis
      version      = var.minute_metrics_version
    }
  }
  share_properties {
    retention_policy {
      days = var.share_properties_retention_policy_days
    }
  }
  static_website {
    error_404_document = null
    index_document     = "index.html"
  }
}

data "azapi_resource_list" "private_endpoint_connections" {
  type      = "Microsoft.Storage/storageAccounts/privateEndpointConnections@2022-09-01"
  parent_id = azurerm_storage_account.example.id
}

resource "azapi_update_resource" "approval" {
  type      = "Microsoft.Storage/storageAccounts/privateEndpointConnections@2022-09-01"
  name      = lookup(data.azapi_resource_list.private_endpoint_connections.output.value[0], "name")
  parent_id = azurerm_storage_account.example.id

  body = {
    properties = {
      privateLinkServiceConnectionState = {
        description = "Faraz Frontdoor Request Message"
        status      = "Approved"
      }
    }
  }
}
