data "azurerm_resource_group" "myrg" {
  name = "joel-chan"
}

resource "azurerm_virtual_network" "network" {
  name                = "vm-act2"
  address_space       = ["10.0.0.0/16"]
  location            = data.azurerm_resource_group.myrg.location
  resource_group_name = data.azurerm_resource_group.myrg.name
}

resource "azurerm_subnet" "subnet-act2" {
  name                 = "subnet-act2"
  resource_group_name  = data.azurerm_resource_group.myrg.name
  virtual_network_name = azurerm_virtual_network.network.name
  address_prefixes     = ["10.0.1.0/24"]

  delegation {
    name = "delegation"
    service_delegation {
      name    = "Microsoft.ContainerInstance/containerGroups"
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
    }
  }
}
