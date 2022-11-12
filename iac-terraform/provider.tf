# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  # More information on the authentication methods supported by
  # the AzureRM Provider can be found here:
  # https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
  skip_provider_registration = true
  subscription_id            = "2c9a4fa7-3d46-4c62-b0c6-c5bb820d7f9f"
  # client_id       = "..."
  # client_secret   = "..."
  #tenant_id       = "c3f7cc15-d4ca-47bc-b473-130e34e9e706"
}

