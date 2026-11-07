/* This takes the networking module's vnet_id output and makes it available to 
 other modules that call this module." */

output "vnet_id" {
  description = "ID of the Dev virtual network."
  value       = module.networking.vnet_id
}

output "api_managed_identity_principal_id" {
  description = "Entra ID principal ID of the Dev API system-assigned managed identity"
  value       = azurerm_linux_web_app.api.identity[0].principal_id
}