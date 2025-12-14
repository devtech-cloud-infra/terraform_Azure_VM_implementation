
variable "subscription_id" {
  type        = string
  description = "Azure subscription id"
  sensitive   = true
}
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

module "azure" {
  source         = "./modules/vm"
  resource_group = "demo"
  location       = "East US"
  vm-name        = "demo-vm"
  vm-size        = "Standard_F2"

}


