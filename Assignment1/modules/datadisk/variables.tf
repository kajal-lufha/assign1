variable "vm_count" {

}

variable "location" {
}

variable "resource_group_name" {
}
variable "subnet_id" {

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
variable "linux_vm_ids" {
  type = list(string)
}

variable "vmwindows_vm_id" {
  type = string
}

