resource "azurerm_resource_group" "test" {
  name     = "test-resources"
  location = var.location
}


resource "azurerm_windows_virtual_machine_scale_set" "test" {
  name                 = var.name
  resource_group_name  = var.resource_group_name
  location             = azurerm_resource_group.test.location
  sku                  = var.sku
  instances            = var.instances
  admin_password       = var.admin_password
  admin_username       = var.admin_username
  computer_name_prefix = "vm-"


  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter-Server-Core"
    version   = "latest"
  }

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }

  network_interface {
    name    = "test"
    primary = true

    ip_configuration {
      name      = "Private"
      primary   = true
      subnet_id = var.subnet_id
      load_balancer_backend_address_pool_ids = ["${azurerm_lb_backend_address_pool.LB.id}"]
    }
  }
}

