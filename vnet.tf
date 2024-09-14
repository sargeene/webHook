resource "azurerm_virtual_network" "this_vnet" {
  name                = "${local.owner}-${var.vnet-name}-${local.environment}"
  location            = azurerm_resource_group.this_rg.location
  resource_group_name = azurerm_resource_group.this_rg.name
  address_space       = ["10.0.0.0/16"]
  tags                = local.tags
}
resource "azurerm_subnet" "this_subnet" {
  name                 = "${local.owner}-${var.subnet-name}-${local.environment}"
  resource_group_name  = azurerm_resource_group.this_rg.name
  virtual_network_name = azurerm_virtual_network.this_vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}