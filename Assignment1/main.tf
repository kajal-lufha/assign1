module "rgroup" {
  source = "./modules/rgroup"
}

module "network" {
  source = "./modules/network"
  subnet_name = "subnet1621"
  resource_group_name = "N01531621-assignment1-RG"
  vnet_name = "vnet1621"
  address_space = ["10.0.0.0/16"]
  subnet_address_prefix = "10.0.1.0/24"

}

module "common" {
  source = "./modules/common"

  resource_group_name = "N01531621-assignment1-RG"
  location            = "eastus"


}
module "vmlinux" {
  source   = "./modules/vmlinux"
  vm_count = 2
  vm_size  = "Standard_B1s"
  ssh_user = "centos"
  resource_group_name = "N01531621-assignment1-RG"
  subnet_id   = module.network.subnet_id
  vnet_name   = module.network.vnet_name
  subnet_name = module.network.subnet_name
  storage_account_uri = module.common.storage_account_uri
  
}

module "vm_windows" {
  source                          = "./modules/vmwindows"
  resource_group_name             = "N01531621-assignment1-RG"
  location                        = "eastus"
  subnet_id                       = module.network.subnet_id
  vm_name                         = "vm-windows"
  vm_size                         = "Standard_B1s"
  admin_username                  = "adminuser"
  admin_password                  = "kajal@1999"
  os_disk_name                    = "osdisk-windows"
  os_type                         = "Windows"
  dns_label                       = "public-ipwindows"
  avail_set_name                  = "1621windows-avail-set"
  public_ip_dns_label             = "win1621publicip"
  antimalware_extension_name      = "IaaSAntimalware"
  antimalware_extension_publisher = "Microsoft.Azure.Security"
  antimalware_extension_type      = "IaaSAntimalware"
  antimalware_extension_version   = "1.3"
  boot_diagnostics_storage_uri    = module.common.storage_account_uri

}



module "datadisk" {
  source              = "./modules/datadisk"
  location            = "eastus"
  resource_group_name = "N01531621-assignment1-RG"
  subnet_id           = module.network.subnet_id
  vm_count            = 3
  tags                = var.tags
  linux_vm_ids        = module.vmlinux.vm_ids
  vmwindows_vm_id     = module.vm_windows.vm_id
}








module "loadbalancer" {
  source              = "./modules/loadbalancer"
   resource_group_name = "N01531621-assignment1-RG"
  location            = "eastus"
linux_vm_ids = module.vmlinux.vm_ids

}



module "database" {
  source              = "./modules/database"
  prefix              = "n1621"
  location            = "eastus"
  resource_group_name = "N01531621-assignment1-RG"
  db_name             = "mydatabase"
  db_admin_username   = "adminuser"
  db_admin_password   = "kajal@1999"
}
