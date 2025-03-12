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
variable "host_name" {
  description = "host name of the origin"
  type        = string
}
variable "origin_host_header" {
  description = "host header of the origin"
  type        = string  
}
variable "stoarage_account_id" {
  description = "The primary endpoint for the storage account"
  type        = string
  
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

#######################
# CDN Profile Variables
#######################
variable "cdn_profile_name" {
  description = "CDN Profile name."
  type        = string
  default = "farazCustomDomain"
}

variable "certificate_type" {
  description = "CDN Profile host name."
  type        = string
  default     = "ManagedCertificate"
}

variable "minimum_tls_version" {
  description = "CDN Profile host name."
  type        = string
  default     = "TLS12"
}

variable "dns_zone_id" {
  description = "CDN Profile DNS Zone ID."
  type        = string
  default = "null"
}

variable "frontdoor_custom_domain_host_name" {
  description = "CDN Profile host name."
  type        = string
  default = "farazsa.z29.web.core.windows.net"
}