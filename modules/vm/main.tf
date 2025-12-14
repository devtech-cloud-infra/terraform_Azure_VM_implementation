resource "azurerm_resource_group" "rg" {
  name= var.resource_group
  location = var.location
}
resource "azurerm_network_interface" "nic" {
    name = "${var.vm-name}-nic"
    location = var.location
    resource_group_name = azurerm_resource_group.rg.name

    ip_configuration {
      name = "internal"
      subnet_id = azurerm_subnet.subnet.id
      private_ip_address_allocation = "Dynamic"
    }
  
}

resource "azurerm_subnet" "subnet" {
   name = "${var.vm-name}-subnet"
   resource_group_name = azurerm_resource_group.rg.name
   virtual_network_name = azurerm_virtual_network.vnet.name
   address_prefixes = ["10.0.1.0/24"]
}

resource "azurerm_virtual_network" "vnet" {
  name = "${var.vm-name}-vnet"
  location = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space = ["10.0.0.0/16"]

}


resource "azurerm_linux_virtual_machine" "vm" {
name = var.vm-name
  resource_group_name = azurerm_resource_group.rg.name
  location = var.location
  size = var.vm-size
  admin_username = "azureuser"
  network_interface_ids = [azurerm_network_interface.nic.id]
 admin_ssh_key {
   username = "azureuser"
   public_key = "ssh-rsa ..."
 
 }

 os_disk {
   caching = "ReadWrite"
   storage_account_type = "Standard_LRS"
 }
 source_image_reference {
   publisher = "Canonical"
   offer = "0001-com-ubuntu-server-jammy"
   sku = "22_04-lts"
   version = "latest"
 }



}

