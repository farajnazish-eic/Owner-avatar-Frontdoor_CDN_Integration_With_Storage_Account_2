module "storage_account" {
  source = "./storage_account"
  resource_group_name = var.resource_group_name
  private_endpoint_id = module.frontdoor.frontdoor_private_endpoint_id
  private_endpoint_connection_name = module.frontdoor.frontdoor_private_endpoint_name
}

module "frontdoor" {
  source              = "./frontdoor"
  resource_group_name = var.resource_group_name
  host_name           = module.storage_account.stoarage_account_static_primary_ep
  origin_host_header  = module.storage_account.stoarage_account_static_primary_ep
  stoarage_account_id = module.storage_account.stoarage_account_id
}