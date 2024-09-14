resource "azurerm_role_assignment" "this_role" {
  principal_id                     = azurerm_kubernetes_cluster.this_aks.kubelet_identity[0].object_id
  role_definition_name             = var.role_definition_name
  scope                            = azurerm_container_registry.this_acr.id
  skip_service_principal_aad_check = true
}
resource "azurerm_user_assigned_identity" "this_user_id" {
  location            = azurerm_resource_group.this_rg.location
  name                = "${local.owner}-user-assigned-id-${local.environment}"
  resource_group_name = azurerm_resource_group.this_rg.name
}
