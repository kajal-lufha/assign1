terraform {
  backend "azurerm" {
    resource_group_name  = "assignment-key-RG"
    storage_account_name = "tfstate1621"
    container_name       = "tfstate"
    key                  = "i7QFwHsF4hwy8NhJJQgMCDWRPfNNz2rWNmu7lP8XiErMLlcM4UyDx02nuYyIU+QHkf6lJFyFU6+j+AStuAupgw=="


  }
}