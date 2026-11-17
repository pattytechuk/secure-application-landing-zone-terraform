variable "subscription_id" {
  description = "Production subscription ID."
  type        = string
}

variable "tenant_id" {
  description = "Entra ID tenant ID."
  type        = string
}

variable "terraform_operator_object_id" {
  description = "Entra ID object ID of the Terraform operator."
  type        = string
}