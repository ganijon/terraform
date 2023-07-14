# Create an app.tf and define:
# 	An App Service Plan with Basic SKU
# 	An App Service for Linux 

# Create a data.tf file and use the terraform_remote_state resource to connect to the network state with the correct credential methodology: 
# https://developer.hashicorp.com/terraform/language/settings/backends/azurerm

# In your locals.tf get the subnet ids for the app service and paas subnets.

# In the app.tf use the azurerm_app_service_virtual_network_swift_connection resource to connect the app service to the app service subnet:
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service_virtual_network_swift_connection

