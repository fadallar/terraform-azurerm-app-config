output "id" {
  description = "The App Configuration ID"
  value       = azurerm_app_configuration.appconf.id
}

output "endpoint" {
  value       = azurerm_app_configuration.appconf.endpoint
  description = "The URL of the App Configuration"
}

output "primary_read_key" {
  value       = azurerm_app_configuration.appconf.primary_read_key
  description = "A primary_read_key block containing the primary read access key."
}

output "primary_write_key" {
  value       = azurerm_app_configuration.appconf.primary_write_key
  description = "A primary_write_key block containing the primary write access key."
}

output "secondary_read_key" {
  value       = azurerm_app_configuration.appconf.secondary_read_key
  description = "A secondary_read_key block containing the secondary read access key."
}

output "secondary_write_key" {
  value       = azurerm_app_configuration.appconf.secondary_write_key
  description = "A secondary_write_key block as containing the secondary write access key."
}

output "identity" {
  value       = azurerm_app_configuration.appconf.identity
  description = "An identity block"
}

output "clientid_apconf_data_reader" {
  value       = azurerm_user_assigned_identity.apconf_data_reader.client_id
  description = "Client Id to the user-managed identity with App Config Data Reader"
}

output "principalid_apconf_data_reader" {
  value       = azurerm_user_assigned_identity.apconf_data_reader.principal_id
  description = "Principal Id to the user-managed identity with App Config Data Reader"
}

output "tenantid_apconf_data_reader" {
  value       = azurerm_user_assigned_identity.apconf_data_reader.tenant_id
  description = "Tenant Id to the user-managed identity with App Config Data Reader"
}

output "clientid_apconf_data_owner" {
  value       = azurerm_user_assigned_identity.apconf_data_owner.client_id
  description = "Client Id to the user-managed identity with App Config Data Owner"
}

output "principalid_apconf_data_owner" {
  value       = azurerm_user_assigned_identity.apconf_data_owner.principal_id
  description = "Principal Id to the user-managed identity with App Config Data Owner"
}

output "tenantid_apconf_data_owner" {
  value       = azurerm_user_assigned_identity.apconf_data_owner.tenant_id
  description = "Tenant Id to the user-managed identity with App Config Data Owner"
}