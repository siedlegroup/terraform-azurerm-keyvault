terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/random"
      version = "~> 3.90.0"
    }
  }
}

run "verify_keyvault" {
  command = plan
  assert {
    condition     = azurerm.key_vault_name.this.id != ""
    error_message = "Expected: Actual:"
  }
}
