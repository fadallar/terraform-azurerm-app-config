variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure region to use."
  type        = string
}

variable "location_short" {
  description = "Short string for Azure location."
  type        = string
}

variable "environment" {
  description = "Project environment."
  type        = string
}

variable "stack" {
  description = "Project stack name."
  type        = string
}

variable "sku" {
  description = "The SKU name of the App Configuration Store. Possible values are `free`, `standard`"
  type        = string
  default     = "standard"
}

variable "local_auth_enabled" {
  description = "Whether local authentication methods is enabled."
  type        = bool
  default     = false
}

variable "purge_protection_enabled" {
  description = "Whether Purge Protection is enabled. This field only works for standard sku"
  type        = bool
  default     = false
}

variable "soft_delete_retention_days" {
  description = "The number of days that items should be retained for once soft-deleted. This field only works for standard sku. This value can be between 1 and 7 days.Changing this forces a new resource to be created."
  type        = number
  default     = 7
}

variable "key_vault_key_identifier" {
  description = "Specifies the URI of the key vault key used to encrypt data."
  type        = string
  default     = null
}

variable "key_vault_identity_client_id" {
  description = "Specifies the client id of the identity which will be used to access key vault."
  type        = string
  default     = null
}

variable "managed_identity_type" {
  description = "Specifies the type of Managed Service Identity that should be configured on this App Configuration. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned"
  type        = string
  default     = "SystemAssigned, UserAssigned"
}

variable "identity_ids" {
  description = "A list of User Assigned Managed Identity IDs to be assigned to this App Configuration."
  type        = list(string)
  default     = []
}

variable "public_network_access" {
  description = "The Public Network Access setting of the App Configuration"
  type        = string
  default     = "Disabled"
}