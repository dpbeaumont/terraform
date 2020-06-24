resource "azurerm_resource_group" "service_bus" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_servicebus_namespace" "service_bus" {
  name                = "${var.name}-namespace"
  location            = azurerm_resource_group.service_bus.location
  resource_group_name = azurerm_resource_group.service_bus.name
  sku                 = "Standard"
}

resource "azurerm_servicebus_namespace_authorization_rule" "service_bus" {
  name                = "${var.name}-auth"
  namespace_name      = azurerm_servicebus_namespace.service_bus.name
  resource_group_name = azurerm_resource_group.service_bus.name
  send                = true
  listen              = true
  manage              = true
}