##################
# Common Variables
##################
variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}
 
variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default = {
    " Business Unit" = "PES-DevOps"
    "Manager"        = "Harshil Patel"
    "Owner"          = "Faraz Ansari"
  }
}
 
###########################
# Storage Account Variables
###########################
variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "farazstorageaccount"
}
 

variable "storage_account_location" {
  description = "location of the storage account"
  type        = string
  default     = "centralindia"
}
 

variable "storage_account_account_tier" {
  description = "The account tier of the storage account"
  type        = string
  default     = "Standard"
}
 

variable "storage_account_access_tier" {
  description = "The access tier of the storage account"
  type        = string
  default     = "Hot"
}
 

variable "storage_account_account_kind" {
  description = "The access tier of the storage account"
  type        = string
  default     = "StorageV2"
}
 

variable "storage_account_account_replication_type" {
  description = "The access tier of the storage account"
  type        = string
  default     = "RAGRS"
}
 

variable "storage_account_allow_nested_items_to_be_public" {
  description = "Allow public access to the nested items or not"
  type        = bool
  default     = true
}
 

variable "storage_account_cross_tenant_replication_enabled" {
  description = "cross tenant replication allowed or not!"
  type        = bool
  default     = false
}
 

variable "storage_account_default_to_oauth_authentication" {
  description = "value"
  type        = bool
  default     = false
}
 

variable "storage_account_dns_endpoint_type" {
  description = "Type of DNS Endpoint"
  type        = string
  default     = "Standard"
}
 

variable "storage_account_https_traffic_only_enabled" {
  description = "enable https traffic or not!"
  type        = bool
  default     = true
}
 

variable "storage_account_infrastructure_encryption_enabled" {
  description = "encrypt the infrastructure or not!"
  type        = bool
  default     = false
}
 

variable "storage_account_hns_enabled" {
  description = "enable hns or not"
  type        = bool
  default     = false
}
 

variable "storage_account_large_file_share_enabled" {
  description = "enable large file share or not"
  type        = bool
  default     = true
}
 

variable "storage_account_local_user_enabled" {
  description = "enable local user or not"
  type        = bool
  default     = true
}
 

variable "storage_account_min_tls_version" {
  description = "minimum tls version"
  type        = string
  default     = "TLS1_2"
}
 

variable "storage_account_nfsv3_enabled" {
  description = "enable nfs v3 or not"
  type        = bool
  default     = false
}
 

variable "storage_account_public_network_access_enabled" {
  description = "enable public network access or not"
  type        = bool
  default     = false
}
 

variable "storage_account_queue_encryption_key_type" {
  description = "value"
  type        = string
  default     = "Service"
}
 

variable "storage_account_sftp_enabled" {
  description = "enable sftp or not"
  type        = bool
  default     = false
}
 

variable "storage_account_shared_access_key_enabled" {
  description = "enable shared access key or not"
  type        = bool
  default     = true
}
 

variable "storage_account_table_encryption_key_type" {
  description = "value"
  type        = string
  default     = "Service"
}

variable "storage_account_blob_change_feed_enabled" {
  description = "value"
  type        = bool
  default     = false
}
 

variable "storage_account_blob_last_access_time_enabled" {
  description = "value"
  type        = bool
  default     = false
}
 

variable "storage_account_blob_versioning_enabled" {
  description = "value"
  type        = bool
  default     = false
}
 

variable "container_delete_retention_policy_days" {
  description = "value"
  type        = number
  default     = 7
}
 

variable "storage_account_blob_permanent_delete_enabled" {
  description = "value"
  type        = bool
  default     = false
}
 

variable "storage_account_blob_default_action" {
  description = "value"
  type        = string
  default     = "Allow"
}
 

variable "storage_account_blob_hour_metrics_enabled" {
  description = "value"
  type        = bool
  default     = true
}
 

variable "storage_account_blob_include_apis" {
  description = "value"
  type        = bool
  default     = true
}
 

variable "storage_account_blob_retention_policy_days" {
  description = "value"
  type        = number
  default     = 7
}
 

variable "storage_account_blob_version" {
  description = "value"
  type        = string
  default     = "1.0"
}
 

variable "storage_account_blob_logging_delete" {
  description = "value"
  type        = bool
  default     = false
}
 

variable "storage_account_blob_logging_read" {
  description = "value"
  type        = bool
  default     = false
}
 

variable "storage_account_logging_version" {
  description = "value"
  type        = string
  default     = "1.0"
}
 
variable "storage_account_logging_write" {
  description = "value"
  type        = bool
  default     = false
}

variable "minute_metrics_enabled" {
  description = "value"
  type        = bool
  default     = false
}
 
variable "minute_metrics_include_apis" {
  description = "value"
  type        = bool
  default     = false
}
 
variable "minute_metrics_version" {
  description = "value"
  type        = string
  default     = "1.0"
}
 

variable "share_properties_retention_policy_days" {
  description = "value"
  type        = number
  default     = 7
}