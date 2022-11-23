# output "admin_rg" {
#   value = azurerm_resource_group.admin_resource_group
##}

output "admin_storage_acount" {
  value     = azurerm_storage_account.storage_acct
  sensitive = true
}

output "resourcegroup" {
  value     = module.resourcegroup
  sensitive = true
}