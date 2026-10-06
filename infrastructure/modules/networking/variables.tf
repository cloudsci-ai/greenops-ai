variable "location" {
  description = "Azure region."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group for GreenOps CI/CD networking."
  type        = string
}

variable "vnet_name" {
  description = "CI/CD virtual network name."
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the CI/CD VNet."
  type        = list(string)
}

variable "agent_subnet_name" {
  description = "Subnet hosting Azure DevOps self-hosted agents."
  type        = string
}

variable "agent_subnet_prefixes" {
  description = "Address prefixes for the agent subnet."
  type        = list(string)
}

variable "private_endpoint_subnet_name" {
  description = "Subnet hosting private endpoints."
  type        = string
}

variable "private_endpoint_subnet_prefixes" {
  description = "Address prefixes for the private endpoint subnet."
  type        = list(string)
}

variable "agent_nsg_name" {
  description = "NSG assigned to the Azure DevOps agent subnet."
  type        = string
}

variable "tags" {
  description = "Common Azure tags."
  type        = map(string)
  default     = {}
}
