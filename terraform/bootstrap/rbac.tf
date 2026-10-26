resource "azurerm_role_assignment" "patty_dev_state" {
  scope                = azurerm_storage_container.state["dev"].id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = "10d94bc5-4489-4934-b849-7b60da086b0d"
  principal_type       = "User"
}

resource "azurerm_role_assignment" "patty_shared_state" {
  scope                = azurerm_storage_container.state["shared"].id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = "10d94bc5-4489-4934-b849-7b60da086b0d"
  principal_type       = "User"
}