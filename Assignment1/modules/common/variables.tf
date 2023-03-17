variable "resource_group_name" {
	default = "N01531621-assignment1-RG"


}

variable "location" {
	default = "eastus"
}

variable "account_tier"{
default = "Standard"

}
variable "account_replication_type"{
  default = "LRS"

}
variable "sku" {
  default = "Standard"
}