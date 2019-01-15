## Inputs

| Name | Description | ParameterType | Example | ValueType | Default |
|------|-------------|----------|---------|:----:|:-----:|
| resource\_group-location | Azure resource group location. &nbsp;More details [here](https://azure.microsoft.com/en-us/global-infrastructure/regions/). |**Required** |```"westeurope"``` | string | `""` |
| resource\_group-name | Azure resource group name |**Required** |```"myresourcegroup"``` | string | `""` |
| resource\_name\_pattern | Azure resource name pattern |**Required** |```"myresource"``` | string | `""` |
| subnets | A list of desired subnets. |**Optional** | | list | `[]` |
| vnet-address\_space | Virtual network address space. &nbsp;You can supply more than one address spaces. |**Required** | | list | `[]` |

## Outputs

| Name | Description | Example |
|------|-------------|----------|
| rg-location | Resource group location. |```"westeurope"``` |
| rg-name | Resource group name for all network stuff. |```"myresourcegroup"``` |
| subnet-id | Subnet Azure ID. | |
| subnet-name | Subnet name. |```"mysubnet"``` |
| vnet-id | Virtual network Azure ID. | |
| vnet-name | Virtual network name. |```"myvnet"``` |

