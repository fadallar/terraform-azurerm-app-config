output "id" {
  description = "The App Configuration ID"
  value       = id
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