

variable "db_name" {
  
}

variable "db_sku_name" {
  default     = "B_Gen5_1"
}

variable "db_storage_mb" {
  default     = 5120
}

variable "db_admin_username" {
}

variable "db_admin_password" {
}


variable "resource_group_name"{}

variable "location"{}
variable "prefix"{}