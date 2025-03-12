resource "azurerm_cdn_frontdoor_profile" "example" {
  name                     = var.azurerm_cdn_frontdoor_profile
  resource_group_name      = var.resource_group_name
  response_timeout_seconds = var.response_timeout_seconds
  sku_name                 = var.frontdoor_profile_sku_name
  tags                     = var.tags
}
 
resource "azurerm_cdn_frontdoor_origin" "example" {
  cdn_frontdoor_origin_group_id  = azurerm_cdn_frontdoor_origin_group.example.id
  certificate_name_check_enabled = var.certificate_name_check_enabled
  enabled                        = var.frontdoor_origin_enabled
  host_name  = var.host_name
  http_port  = var.frontdoor_origin_http_port
  https_port = var.frontdoor_origin_https_port
  name       = var.frontdoor_origin_name
  origin_host_header = var.origin_host_header
  priority           = var.frontdoor_origin_priority
  weight             = var.frontdoor_origin_weight

  private_link {
    location               = var.frontdoor_origin_location
    private_link_target_id = var.stoarage_account_id
    request_message        = var.frontdoor_origin_request_message
    target_type            = var.frontdoor_origin_target_type
  }
}

resource "azurerm_cdn_frontdoor_origin_group" "example" {
  cdn_frontdoor_profile_id                                  = azurerm_cdn_frontdoor_profile.example.id
  name                                                      = var.frontdoor_origin_group_name
  restore_traffic_time_to_healed_or_new_endpoint_in_minutes = var.frontdoor_origin_group_restore_traffic_time_to_healed
  session_affinity_enabled                                  = var.frontdoor_origin_group_session_affinity
  health_probe {
    interval_in_seconds = var.origin_group_interval_in_seconds
    path                = var.origin_group_health_path
    protocol            = var.origin_group_health_protocol
    request_type        = var.origin_group_health_request_type
  }
  load_balancing {
    additional_latency_in_milliseconds = var.origin_group_health_additional_latency_in_milliseconds
    sample_size                        = var.origin_group_health_sample_size
    successful_samples_required        = var.origin_group_health_successful_samples_required
  }
}
 
resource "azurerm_cdn_frontdoor_endpoint" "example" {
  cdn_frontdoor_profile_id = azurerm_cdn_frontdoor_profile.example.id
  enabled                  = var.frontdoor_endpoint_enabled
  name                     = var.frontdoor_endpoint_name
}
 

resource "azurerm_cdn_frontdoor_route" "example" {
  cdn_frontdoor_origin_ids      = [azurerm_cdn_frontdoor_origin.example.id]
  cdn_frontdoor_endpoint_id     = azurerm_cdn_frontdoor_endpoint.example.id
  cdn_frontdoor_origin_group_id = azurerm_cdn_frontdoor_origin_group.example.id
  enabled                       = var.frontdoor_route_enabled
  forwarding_protocol           = var.frontdoor_route_forwarding_protocol
  https_redirect_enabled        = var.frontdoor_route_https_redirect_enabled
  link_to_default_domain        = var.frontdoor_route_link_to_default_domain
  name                          = var.frontdoor_route_name
  patterns_to_match             = var.frontdoor_route_patterns_to_match
  supported_protocols           = var.frontdoor_route_supported_protocols
  cache {
    compression_enabled           = var.frontdoor_route_cache_compression_enabled
    content_types_to_compress     = var.frontdoor_route_content_types_to_compress
    query_string_caching_behavior = var.frontdoor_route_query_string_caching_behavior
  }
}