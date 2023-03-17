

resource "azurerm_postgresql_server" "database" {
  name                         = "database1621"
  location                     = var.location
  resource_group_name          = var.resource_group_name
  version                      = var.dbversion
  administrator_login          = var.db_admin_username
  administrator_login_password = var.db_admin_password
  sku_name                     = var.db_sku_name
  storage_mb                   = var.db_storage_mb
  ssl_enforcement_enabled = true


  tags = var.tags
}
