# Azure resource group name |
# **Required** |
# ```
# "myresourcegroup"
# ```
variable "resource_group-name" {
    default = ""
}

# Azure resource group location. &nbsp;
# More details [here](https://azure.microsoft.com/en-us/global-infrastructure/regions/). |
# **Required** |
# ```
# "westeurope"
# ```
variable "resource_group-location" {
    default = ""
}

# Azure resource name pattern |
# **Required** |
# ```
# "myresource"
# ```
variable "resource_name_pattern" {
    default = ""
}

# Virtual network address space. &nbsp;
# You can supply more than one address spaces. |
# **Required** |
variable "vnet-address_space" {
    default = []
}

# A list of desired subnets. |
# **Optional** |
variable "subnets" {
    default = []
}