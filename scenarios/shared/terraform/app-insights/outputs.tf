output "app_insights_name" {
  description = "The name of the application insights resource."
  value       = azurerm_application_insights.this.id
}

output "app_insights_id" {
  description = "The resource ID of the application insights component."
  value       = azurerm_application_insights.this.name
}

output "app_insights_instrumentation_key" {
  description = "The applicationInsights Instrumentation Key."
  value       = azurerm_application_insights.this.instrumentation_key
}

output "app_insights_connection_string" {
  description = "The applicationInsights Connection String."
  value       = azurerm_application_insights.this.connection_string
}

output "app_insights_connection_string" {
  description = "The application ID of the application insights component."
  value       = azurerm_application_insights.this.app_id
}
