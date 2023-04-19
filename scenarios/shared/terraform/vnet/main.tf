resource "azurerm_virtual_network" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_prefixes

  ddos_protection_plan {
    id     = var.ddos_protection_plan_id != "" ? var.ddos_protection_plan_id : ""
    enable = var.ddos_protection_plan_id != "" ? true : false
  }

  dynamic "subnet" {
    for_each = toset(var.subnets)
    content {
      name           = subnet.name
      address_prefix = subnet.address_prefix
    }
  }

  tags = var.tags
}
