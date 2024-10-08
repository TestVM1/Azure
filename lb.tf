resource "azurerm_resource_group" "LB" {
  name     = "LoadBalancerRG"
  location = "West Europe"
}

resource "azurerm_public_ip" "LB" {
  name                = var.azurerm_public_ip
  location            = azurerm_resource_group.LB.location
  resource_group_name = azurerm_resource_group.LB.name
  allocation_method   = "Static"
}

resource "azurerm_lb" "LB" {
  name                = "TestLoadBalancer"
  location            = azurerm_resource_group.LB.location
  resource_group_name = azurerm_resource_group.LB.name

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.LB.id
  }
}

resource "azurerm_lb_backend_address_pool" "LB" {
  loadbalancer_id = azurerm_lb.LB.id
  name            = "BackEndAddressPool"
}