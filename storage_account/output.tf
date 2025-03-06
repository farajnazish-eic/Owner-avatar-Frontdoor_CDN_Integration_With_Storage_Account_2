output "stoarage_account_static_primary_ep" {
  description = "The primary endpoint for the storage account"
  value       = azurerm_storage_account.example.primary_web_host
}
output "stoarage_account_id" {
  description = "The primary endpoint for the storage account"
  value       = azurerm_storage_account.example.id
}