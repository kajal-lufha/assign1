variable "tags" {
  type        = map(string)
  default = {
    Project        = "Automation Project – Assignment 1"
    Name           = "kajal.lufha"
    ExpirationDate = "2023-06-30"
    Environment    = "Lab"
  }
}
variable "resource_group_name" {}
variable "location" {}
variable "lb_backend_pool_name" {
  default = "backend-pool"
}
variable "lb_probe_port" {
  default = 80
}
variable "linux_vm_ids"{}

variable "allocation_method"  {
  default = "Static"
}

variable "lb_name" {
  default = "kajal_lb"
}

variable "lb_publicip" {
  default = "LB_PublicIP"
}