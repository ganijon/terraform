# Create a rg.tf file to define your resource group. Naming convension is: rg-<your-resource-suffix-kebabcase>

# Add tags “Application” and “Environment” to all your resources.

# Use local state

# Deploy to Azure



# Create a resource group
resource "azurerm_resource_group" "this" {
  name     = format("rg-%s", local.resource_suffix_kebab_case)
  location = var.location
  tags = locals.tags
}
