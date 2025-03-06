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

#############################
# Frontdoor Profile Variables
#############################
variable "azurerm_cdn_frontdoor_profile" {
  description = "Name of the CDN Profile"
  type        = string
  default     = "FarazFrontdoorProfile"
}
variable "response_timeout_seconds" {
  description = "The response timeout in seconds"
  type        = number
  default     = 60
}
variable "frontdoor_profile_sku_name" {
  description = "The SKU name of the Azure Front Door Profile"
  type        = string
  default     = "Premium_AzureFrontDoor"
}

################################
# CDN Frontdoor Origin Variables
################################
variable "frontdoor_origin_name" {
  description = "Indicates the https port"
  type        = string
  default     = "default-origin"
}
variable "certificate_name_check_enabled" {
  description = "Indicates whether the certificate name check is enabled"
  type        = bool
  default     = true
}
variable "frontdoor_origin_enabled" {
  description = "Indicates whether the origin is enabled"
  type        = bool
  default     = true
}
variable "frontdoor_origin_http_port" {
  description = "Indicates whether the origin is enabled"
  type        = number
  default     = 80
}
variable "frontdoor_origin_https_port" {
  description = "Indicates the http port"
  type        = number
  default     = 443
}
variable "frontdoor_origin_location" {
  description = "location of frontdoor origin"
  type        = string
  default     = "centralindia"
}
variable "frontdoor_origin_target_type" {
  description = "target type of frontdoor origin"
  type        = string
  default     = "web"
}
variable "frontdoor_origin_request_message" {
  description = "request message for private link"
  type        = string
  default     = "Faraz Frontdoor Request Message"
}
variable "frontdoor_origin_priority" {
  description = "priority of the origin"
  type        = number
  default     = 1
}
variable "frontdoor_origin_weight" {
  description = "weight of the origin"
  type        = number
  default     = 1000
}

######################################
# CDN Frontdoor Origin Group Variables
######################################
variable "frontdoor_origin_group_name" {
  description = "name of the origin group"
  type        = string
  default     = "default-origin-group"
}
variable "frontdoor_origin_group_restore_traffic_time_to_healed" {
  description = "value of restore traffic time to healed"
  type        = number
  default     = 0
}
variable "frontdoor_origin_group_session_affinity" {
  description = "value of session affinity"
  type        = bool
  default     = false
}
variable "origin_group_interval_in_seconds" {
  description = "value"
  type        = number
  default     = 100
}
variable "origin_group_health_path" {
  description = "health path for origin group"
  type        = string
  default     = "/"
}
variable "origin_group_health_protocol" {
  description = "health protocol for origin group"
  type        = string
  default     = "Http"
}
variable "origin_group_health_request_type" {
  description = "health request type for origin group"
  type        = string
  default     = "HEAD"
}
variable "origin_group_health_additional_latency_in_milliseconds" {
  description = "health request type for origin group"
  type        = number
  default     = 50
}
variable "origin_group_health_sample_size" {
  description = "value"
  type        = number
  default     = 4
}
variable "origin_group_health_successful_samples_required" {
  description = "value"
  type        = number
  default     = 3
}
##################################
# CDN Frontdoor Endpoint Variables
##################################
variable "frontdoor_endpoint_name" {
  description = "Name of frontdoor route"
  type        = string
  default     = "FarazFrontdoorEP"
}
variable "frontdoor_endpoint_enabled" {
  description = "To generate the frontdoor endpoint or not!"
  type        = bool
  default     = true
}



###############################
# CDN Frontdoor Route Variables
###############################
variable "frontdoor_route_name" {
  description = "Name of frontdoor route"
  type        = string
  default     = "default-route"
}
variable "frontdoor_route_enabled" {
  description = "To keep the route enabled or not!"
  type        = bool
  default     = true
}
variable "frontdoor_route_forwarding_protocol" {
  description = "frontdoor route to resource protocol"
  type        = string
  default     = "MatchRequest"
}
variable "frontdoor_route_https_redirect_enabled" {
  description = "frontdoor route to resource coonection"
  type        = bool
  default     = true
}
variable "frontdoor_route_link_to_default_domain" {
  description = "value"
  type        = bool
  default     = true
}
variable "frontdoor_route_patterns_to_match" {
  description = "value"
  type        = list(string)
  default     = ["/*", ]
}
variable "frontdoor_route_supported_protocols" {
  description = "value"
  type        = list(string)
  default     = ["Http", "Https", ]
}
variable "frontdoor_route_cache_compression_enabled" {
  description = "compress the cache or not"
  type        = bool
  default     = true
}
variable "frontdoor_route_content_types_to_compress" {
  description = "value"
  type        = list(string)
  default = [
    "application/eot",
    "application/font",
    "application/font-sfnt",
    "application/javascript",
    "application/json",
    "application/opentype",
    "application/otf",
    "application/pkcs7-mime",
    "application/truetype",
    "application/ttf",
    "application/vnd.ms-fontobject",
    "application/xhtml+xml",
    "application/xml",
    "application/xml+rss",
    "application/x-font-opentype",
    "application/x-font-truetype",
    "application/x-font-ttf",
    "application/x-httpd-cgi",
    "application/x-javascript",
    "application/x-mpegurl",
    "application/x-opentype",
    "application/x-otf",
    "application/x-perl",
    "application/x-ttf",
    "font/eot",
    "font/ttf",
    "font/otf",
    "font/opentype",
    "image/svg+xml",
    "text/css",
    "text/csv",
    "text/html",
    "text/javascript",
    "text/js",
    "text/plain",
    "text/richtext",
    "text/tab-separated-values",
    "text/xml",
    "text/x-script",
    "text/x-component",
    "text/x-java-source",
  ]
}
variable "frontdoor_route_query_string_caching_behavior" {
  description = "value"
  type        = string
  default     = "UseQueryString"
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
  default     = false
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
  default     = "Deny"
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