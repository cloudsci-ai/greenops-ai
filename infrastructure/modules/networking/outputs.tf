output "resource_group_name" {
  value = azurerm_resource_group.cicd.name
}

output "resource_group_id" {
  value = azurerm_resource_group.cicd.id
}

output "vnet_id" {
  value = azurerm_virtual_network.cicd.id
}

output "vnet_name" {
  value = azurerm_virtual_network.cicd.name
}

output "agent_subnet_id" {
  value = azurerm_subnet.agent.id
}

output "private_endpoint_subnet_id" {
  value = azurerm_subnet.private_endpoint.id
}
