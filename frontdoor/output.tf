output "frontdoor_private_endpoint_name" {
  description = "The endpoint name of the frontdoor private endpoint"
  value       = azurerm_cdn_frontdoor_endpoint.example.name
}

output "frontdoor_private_endpoint_id" {
  description = "The endpoint ID of the frontdoor private endpoint"
  value       = azurerm_cdn_frontdoor_endpoint.example.id
}
