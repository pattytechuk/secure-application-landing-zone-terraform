variable "storage_account_name" {
  description = "Globally unique name for Terraform state storage."
  type        = string
}

variable "allowed_public_ip" {
  description = "Public IPv4 address allowed through the storage firewall."
  type        = string
}
