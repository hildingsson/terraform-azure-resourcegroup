resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
  timeouts {
    create = var.timeouts.create
    read   = var.timeouts.read
    update = var.timeouts.update
    delete = var.timeouts.delete
  }

  tags = merge(local.mandatory_tags, var.common_tags)
}
