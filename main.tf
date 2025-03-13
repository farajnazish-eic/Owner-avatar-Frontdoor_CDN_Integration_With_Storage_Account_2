# module "dns_zone" {
#   source              = "./dns_zone"
#   resource_group_name = var.resource_group_name
# }

module "storage_account" {
  resource_group_name = var.resource_group_name
  source = "./storage_account"
}

module "frontdoor" {
  source              = "./frontdoor"
  resource_group_name = var.resource_group_name
  # dns_zone_id         = module.dns_zone.dns_zone_id
  host_name           = module.storage_account.stoarage_account_static_primary_ep
  origin_host_header  = module.storage_account.stoarage_account_static_primary_ep
  stoarage_account_id = module.storage_account.stoarage_account_id
}
