resource "azurerm_resource_group" "this" {
    name     = "${var.resource_group-name}"
    location = "${var.resource_group-location}"
}

resource "azurerm_virtual_network" "this" {
    name                = "${var.resource_name_pattern}-vnet"
    location            = "${azurerm_resource_group.this.location}"
    resource_group_name = "${azurerm_resource_group.this.name}"
    address_space       = ["${var.vnet-address_space}"]
}

resource "azurerm_subnet" "this" {
    count                = "${length(var.subnets)}"
    name                 = "${var.resource_name_pattern}-${lookup(var.subnets[count.index], "name")}-subnet"
    virtual_network_name = "${azurerm_virtual_network.this.name}"
    resource_group_name  = "${azurerm_resource_group.this.name}"
    address_prefix       = "${lookup(var.subnets[count.index], "address_prefix")}"
}