
output "database_name" {
  value = azurerm_postgresql_server.database.name
}
variable "tags" {
  type        = map(string)
  default = {
    Project        = "Automation Project – Assignment 1"
    Name           = "kajal.lufha"
    ExpirationDate = "2023-06-30"
    Environment    = "Lab"
  }
}

variable "dbversion" {
default = "10.0"

}