# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "example-${random_string.fqdn.result}"
  location = var.location
  tags     = var.tags
}


# Generates a random string
resource "random_string" "fqdn" {
  length  = 6
  special = false
  upper   = false
  numeric  = false
}