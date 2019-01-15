# Resource group name for all network stuff. |
# ```
# "myresourcegroup"
# ```
output "rg-name" {
  value = "${azurerm_resource_group.this.name}"
}

# Resource group location. |
# ```
# "westeurope"
# ```
output "rg-location" {
  value = "${azurerm_resource_group.this.location}"
}

# Virtual network name. |
# ```
# "myvnet"
# ```
output "vnet-name" {
    value = "${azurerm_virtual_network.this.name}"
}

# Virtual network Azure ID. |
output "vnet-id" {
    value = "${azurerm_virtual_network.this.id}"
}

# Subnet Azure ID. |
output "subnet-id" {
    value = "${azurerm_subnet.this.*.id}"
}

# Subnet name. |
# ```
# "mysubnet"
# ```
output "subnet-name" {
    value = "${azurerm_subnet.this.*.name}"
}


