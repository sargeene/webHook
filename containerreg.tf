resource "azurerm_container_registry" "this_acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.this_rg.name
  location            = azurerm_resource_group.this_rg.location
  sku                 = "Premium"
}