module "resourcegroup" {
  source          = "git::https://github.com/Himanshu8445/common//resourcegroup?ref=main"
  resource_groups = var.resource_groups
}

resource "azurerm_storage_account" "storage_acct" {
  for_each   = var.storage_accounts
  depends_on = [module.resourcegroup]
  name       = each.value.name

  resource_group_name           = each.value.resource_group_name != null ? each.value.resource_group_name : var.resource_group_name
  location                      = each.value.location != null ? each.value.location : var.location
  account_tier                  = "Standard"
  account_replication_type      = "LRS"
  public_network_access_enabled = "false"
  blob_properties {
    delete_retention_policy {
      days = 7
    }
    versioning_enabled = true
  }

  tags = var.sa_additional_tags

}

resource "azurerm_storage_container" "management" {
  for_each              = var.containers
  depends_on            = [azurerm_storage_account.storage_acct]
  name                  = each.value.name
  storage_account_name  = each.value.storage_account_name
  container_access_type = each.value.container_access_type
}
