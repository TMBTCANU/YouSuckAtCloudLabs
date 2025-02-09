resource "azurerm_resource_group" "the0xResourceGroup" {
  name     = var.resource_group_name
  location = var.location
  tags = var.tags
}

resource "azurerm_storage_account" "the0xsa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.the0xResourceGroup.name
  location                 = azurerm_resource_group.the0xResourceGroup.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}
