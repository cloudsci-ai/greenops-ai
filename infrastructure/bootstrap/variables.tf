variable "subscription_id" {
  description = "Azure subscription ID used for the GreenOps AI platform."
  type        = string
}

variable "location" {
  description = "Azure region for Terraform backend resources."
  type        = string
  default     = "germanywestcentral"
}

variable "resource_group_name" {
  description = "Resource group containing Terraform backend resources."
  type        = string
  default     = "rg-greenops-tfstate-gwc"
}

variable "storage_account_name" {
  description = "Globally unique Storage Account name used for Terraform state."
  type        = string
}

variable "container_name" {
  description = "Blob container used to store Terraform state."
  type        = string
  default     = "tfstate"
}

variable "tags" {
  description = "Common resource tags."
  type        = map(string)

  default = {
    project     = "greenops-ai"
    managed-by  = "terraform"
    environment = "shared"
    purpose     = "terraform-state"
  }
}