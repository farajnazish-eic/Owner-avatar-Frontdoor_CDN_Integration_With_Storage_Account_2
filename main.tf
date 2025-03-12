module "storage_account" {
  source = "./storage_account"
  resource_group_name = var.resource_group_name
}

module "frontdoor" {
  source              = "./frontdoor"
  resource_group_name = var.resource_group_name
  host_name           = module.storage_account.stoarage_account_static_primary_ep
  origin_host_header  = module.storage_account.stoarage_account_static_primary_ep
  stoarage_account_id = module.storage_account.stoarage_account_id
}