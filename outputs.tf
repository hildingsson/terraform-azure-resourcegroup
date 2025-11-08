output "resource_group_name" {
  description = "Outputs the name of the Resource Group"
  value       = azurerm_resource_group.this.name
}

output "resource_group_location" {
  description = "Outputs the location of the Resource Group"
  value       = azurerm_resource_group.this.location
}

output "resource_group_id" {
  description = "Outputs the ID of the Resource Group"
  value       = azurerm_resource_group.this.id
}

output "subscription_id" {
  description = "Outputs the subscription ID used by this deployment"
  value       = data.azurerm_subscription.current.subscription_id
}
