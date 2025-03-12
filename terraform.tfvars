resource_group_name                           = "xxxxxxxxxxxxxxxxxxxxx"
azurerm_cdn_frontdoor_profile                 = "FarazFrontdoorProfile"
frontdoor_profile_sku_name                    = "Premium_AzureFrontDoor"
frontdoor_origin_name                         = "default-origin"
frontdoor_origin_location                     = "centralindia"
frontdoor_origin_target_type                  = "web"
frontdoor_origin_request_message              = "Faraz Frontdoor Request Message"
frontdoor_origin_group_name                   = "default-origin-group"
origin_group_health_path                      = "/"
origin_group_health_protocol                  = "Http"
origin_group_health_request_type              = "HEAD"
frontdoor_endpoint_name                       = "FarazFrontdoorEP"
frontdoor_route_name                          = "default-route"
frontdoor_route_forwarding_protocol           = "MatchRequest"
frontdoor_route_patterns_to_match             = ["/*"]
frontdoor_route_supported_protocols           = ["Http", "Https"]
frontdoor_route_query_string_caching_behavior = "UseQueryString"
