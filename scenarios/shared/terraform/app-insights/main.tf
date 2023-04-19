resource "azurerm_application_insights" "this" {
  name                       = var.name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  workspace_id               = var.workspace_resource_id
  application_type           = var.app_insights_type
  internet_ingestion_enabled = var.public_network_access_for_ingestion
  internet_query_enabled     = var.public_network_access_for_query
  retention_in_days          = var.retention_in_days
  sampling_percentage        = var.sampling_percentage
  tags                       = var.tags
}
