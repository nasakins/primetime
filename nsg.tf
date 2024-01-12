/*resource "azurerm_network_security_group" "dynamic_sg" {
  name                = "dynamic_sg"
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule {
    for_each = var.dynamic_sg
    content {
    name                       = "dynmaic"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "80"
    destination_port_range     = "80"
    source_address_prefix      = "192.168.1.0/24"
    destination_address_prefix = "10.0.0.0/24"
  

  tags     = local.common_tags
    }
  }
}
*/