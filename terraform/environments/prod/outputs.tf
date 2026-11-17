output "vnet_id" {
  description = "ID of the Production virtual network."
  value       = module.networking.vnet_id
}

output "integration_subnet_id" {
  description = "ID of the Production App Service integration subnet."
  value       = module.networking.integration_subnet_id
}

output "private_endpoint_subnet_id" {
  description = "ID of the Production private endpoint subnet."
  value       = module.networking.private_endpoint_subnet_id
}
