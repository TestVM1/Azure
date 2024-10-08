variable "resource_group_name" {
    type = string
    description = "(optional) describe your variable"
}

variable "sku" {
    type = string
    description = "(optional) describe your variable"
  
}

variable "admin_username" {
    type = string
    description = "(optional) describe your variable"
  
}

variable "admin_password" {
    type = string
    sensitive = true
    description = "(optional) describe your variable"
  
}

variable "instances" {
    type = number
    description = "(optional) describe your variable"
  
}

variable "name" {
    type = string
    description = "(optional) describe your variable"
  
}

variable "subnet_id" {
    type = string
    description = "(optional) describe your variable"
}

variable "location" {
    type = string
    description = "(optional) describe your variable"
  
}

variable "azurerm_resource_group" {
    type = string
    default = "scaleset"
    description = "(optional) describe your variable"
}

variable "azurerm_public_ip" {
    type = string
    default = "LB"
    description = "value"
        
    }
  