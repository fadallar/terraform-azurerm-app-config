// APP Conf Data Reader
resource "azurerm_user_assigned_identity" "apconf_data_reader" {
  location            = var.location
  name                = format("id-data-reader-%s", azurerm_app_configuration.appconf.name)
  resource_group_name = var.resource_group_name
  tags                = var.default_tags
}

resource "azurerm_role_assignment" "rbac_apconf_data_reader" {
  scope                = azurerm_app_configuration.appconf.id
  role_definition_name = "App Configuration Data Reader"
  principal_id         = azurerm_user_assigned_identity.apconf_data_reader.principal_id
}

// APP Conf Data Owner

resource "azurerm_user_assigned_identity" "apconf_data_owner" {
  location            = var.location
  name                = format("id-data-owner-%s", azurerm_app_configuration.appconf.name)
  resource_group_name = var.resource_group_name
  tags                = var.default_tags
}

resource "azurerm_role_assignment" "rbac_appconf_data_owner" {
  scope                = azurerm_app_configuration.appconf.id
  role_definition_name = "App Configuration Data Owner"
  principal_id         = azurerm_user_assigned_identity.apconf_data_owner.principal_id
}