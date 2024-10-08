module "scaleset" {
  source = "../../module"
  
  
  name                 = "Windows-machine-test"
  resource_group_name  = "testscale-set"
  location             ="West Europe"
  sku                  = "Standard_F2"
  instances            = 1
  admin_password       = "${file("../../windows_password.txt")}"
  admin_username       = "vikas"
  subnet_id = "/subscriptions/255cd4fe-3191-4011-bd2b-1569f4feba39/resourceGroups/APIs-Cluster-Staging/providers/Microsoft.Network/virtualNetworks/Apis-Management-Vnet/subnets/default"
  
  
}
