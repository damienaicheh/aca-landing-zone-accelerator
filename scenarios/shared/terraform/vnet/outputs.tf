output "vnet_id" {
  description = "Resource id of the newly created Virtual network"
  value       = azurerm_virtual_network.this.id
}

output "vnet_name" {
  description = "Resource name of the newly created Virtual network"
  value       = azurerm_virtual_network.this.name
}

output "vnet_subnets" {
  description = "Outputs the array of the subnets, printing: index, subnetResourceId, subnerName."
  value = [for i, v1 in var.subnets : [
    {
      subnet_index = i,
      id           = azurerm_virtual_network.this.subnet[i].id,
      name         = azurerm_virtual_network.this.subnet[i].name
    }
    ]
  ]
}
