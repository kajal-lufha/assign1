resource "azurerm_log_analytics_workspace" "la_workspace" {
  name                = "la-workspace1621"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  
}

resource "azurerm_recovery_services_vault" "rs_vault" {
  name                = "rs-vault1621"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku = var.sku
  
}


resource "azurerm_storage_account" "storage_account" {
  name                     = "st1621"
  location                 = var.location
  resource_group_name      = var.resource_group_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  
}