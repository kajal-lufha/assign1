
variable "tags" {
  type        = map(string)
  default = {
    Project        = "Automation Project – Assignment 1"
    Name           = "kajal.lufha"
    ExpirationDate = "2023-06-30"
    Environment    = "Lab"
  }
}

variable  "linux-av-set" {
  default = "linux-av-set"
}



variable "resource_group_name" {
  type    = string
 
}

variable "location" {
	default = "eastus" 
}


variable "vnet_name" {
  type    = string
  default = "1621vnet"
}

variable "subnet_name" {
  type    = string
  default = "1621subnet"
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "vm_count" {
  type    = number
  default = 2
}

variable "dns_label_prefix" {
  type    = string
  default = "1621"
}

variable "ssh_user" {
  type    = string
  default = "centos"
}

variable "ssh_public_key_path" {
  type    = string
  default = "~/.ssh/id_rsa.pub"
}

variable "subnet_id" {
  type = string
}

variable "storage_account_uri" {
}