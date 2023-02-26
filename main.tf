resource "azurerm_app_configuration" "appconf" {
  name                       = local.name
  resource_group_name        = var.resource_group_name
  location                   = var.location
  local_auth_enabled         = var.local_auth_enabled
  sku                        = var.sku
  purge_protection_enabled   = var.purge_protection_enabled
  soft_delete_retention_days = var.soft_delete_retention_days
  public_network_access      = var.public_network_access

  identity {
    type         = var.managed_identity_type
    identity_ids = var.identity_ids
  }

  dynamic "encryption" {
    for_each = var.key_vault_key_identifier && var.key_vault_identity_client_id != null ? ["enabled"] : []
    content {
      key_vault_key_identifier = var.key_vault_key_identifier
      identity_client_id       = var.key_vault_identity_client_id
    }
  }

  tags = merge(var.default_tags, var.extra_tags)
}