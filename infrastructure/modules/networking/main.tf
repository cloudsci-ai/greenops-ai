resource "azurerm_resource_group" "cicd" {
  name     = var.resource_group_name
  location = var.location

  tags = var.tags
}

resource "azurerm_virtual_network" "cicd" {
  name                = var.vnet_name
  location            = azurerm_resource_group.cicd.location
  resource_group_name = azurerm_resource_group.cicd.name
  address_space       = var.vnet_address_space

  tags = var.tags
}

resource "azurerm_network_security_group" "agent" {
  name                = var.agent_nsg_name
  location            = azurerm_resource_group.cicd.location
  resource_group_name = azurerm_resource_group.cicd.name

  tags = var.tags
}

resource "azurerm_subnet" "agent" {
  name                 = var.agent_subnet_name
  resource_group_name  = azurerm_resource_group.cicd.name
  virtual_network_name = azurerm_virtual_network.cicd.name
  address_prefixes     = var.agent_subnet_prefixes
}

resource "azurerm_subnet_network_security_group_association" "agent" {
  subnet_id                 = azurerm_subnet.agent.id
  network_security_group_id = azurerm_network_security_group.agent.id
}

resource "azurerm_subnet" "private_endpoint" {
  name                 = var.private_endpoint_subnet_name
  resource_group_name  = azurerm_resource_group.cicd.name
  virtual_network_name = azurerm_virtual_network.cicd.name
  address_prefixes     = var.private_endpoint_subnet_prefixes

  private_endpoint_network_policies = "Disabled"
}
