## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | n/a |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault) | resource |
| [azurerm_key_vault_secret.keys](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) | resource |
| [azurerm_monitor_diagnostic_setting.diag](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_private_dns_a_record.arecord1](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_a_record) | resource |
| [azurerm_private_dns_zone.dnszone1](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone_virtual_network_link.vent-link1](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_private_endpoint.pep1](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |
| [azurerm_subnet.snet-ep](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [random_password.passwd](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [azuread_group.adgrp](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/group) | data source |
| [azuread_service_principal.adspn](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/service_principal) | data source |
| [azuread_user.adusr](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/user) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_private_endpoint_connection.private-ip1](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/private_endpoint_connection) | data source |
| [azurerm_virtual_network.vnet01](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_policies"></a> [access\_policies](#input\_access\_policies) | List of access policies for the Key Vault. | `list(object)` | `[]` | no |
| <a name="input_certificate_contacts"></a> [certificate\_contacts](#input\_certificate\_contacts) | Contact information to send notifications triggered by certificate lifetime events | <pre>list(object({<br>    email = string<br>    name  = optional(string)<br>    phone = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_create_resource_group"></a> [create\_resource\_group](#input\_create\_resource\_group) | Whether to create resource group and use it for all networking resources | `bool` | n/a | yes |
| <a name="input_enable_private_endpoint"></a> [enable\_private\_endpoint](#input\_enable\_private\_endpoint) | Manages a Private Endpoint to Azure Container Registry | `bool` | `false` | no |
| <a name="input_enable_purge_protection"></a> [enable\_purge\_protection](#input\_enable\_purge\_protection) | Is Purge Protection enabled for this Key Vault? Careful: this will prevent deletion/replacement for the length of the retention period | `bool` | `false` | no |
| <a name="input_enable_rbac_authorization"></a> [enable\_rbac\_authorization](#input\_enable\_rbac\_authorization) | Specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions | `bool` | `false` | no |
| <a name="input_enabled_for_deployment"></a> [enabled\_for\_deployment](#input\_enabled\_for\_deployment) | Allow Virtual Machines to retrieve certificates stored as secrets from the key vault. | `bool` | `true` | no |
| <a name="input_enabled_for_disk_encryption"></a> [enabled\_for\_disk\_encryption](#input\_enabled\_for\_disk\_encryption) | Allow Disk Encryption to retrieve secrets from the vault and unwrap keys. | `bool` | `true` | no |
| <a name="input_enabled_for_template_deployment"></a> [enabled\_for\_template\_deployment](#input\_enabled\_for\_template\_deployment) | Allow Resource Manager to retrieve secrets from the key vault. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (stage) name for this Key Vault | `string` | n/a | yes |
| <a name="input_existing_private_dns_zone"></a> [existing\_private\_dns\_zone](#input\_existing\_private\_dns\_zone) | Name of the existing private DNS zone | `string` | `null` | no |
| <a name="input_existing_subnet_id"></a> [existing\_subnet\_id](#input\_existing\_subnet\_id) | The resource id of existing subnet to be reused here | `string` | `null` | no |
| <a name="input_existing_vnet_id"></a> [existing\_vnet\_id](#input\_existing\_vnet\_id) | The resource id of existing virtual network to be reused here | `string` | `null` | no |
| <a name="input_key_vault_name"></a> [key\_vault\_name](#input\_key\_vault\_name) | The Name for this Key Vault | `string` | n/a | yes |
| <a name="input_key_vault_sku_pricing_tier"></a> [key\_vault\_sku\_pricing\_tier](#input\_key\_vault\_sku\_pricing\_tier) | The name of the SKU used for the Key Vault. The options are: `standard`, `premium`. | `string` | `"standard"` | no |
| <a name="input_kv_diag_logs"></a> [kv\_diag\_logs](#input\_kv\_diag\_logs) | Keyvault Monitoring Category details for Azure Diagnostic setting | `list(string)` | <pre>[<br>  "AuditEvent",<br>  "AzurePolicyEvaluationDetails"<br>]</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table' | `string` | n/a | yes |
| <a name="input_log_analytics_workspace_id"></a> [log\_analytics\_workspace\_id](#input\_log\_analytics\_workspace\_id) | Specifies the ID of a Log Analytics Workspace where diagnostics data will be sent to | `string` | `null` | no |
| <a name="input_network_acls"></a> [network\_acls](#input\_network\_acls) | Network rules to apply to key vault. | <pre>object({<br>    bypass                     = string<br>    default_action             = string<br>    ip_rules                   = list(string)<br>    virtual_network_subnet_ids = list(string)<br>  })</pre> | `null` | no |
| <a name="input_postfix"></a> [postfix](#input\_postfix) | Suffix definition providing predictable resource names | `string` | n/a | yes |
| <a name="input_private_subnet_address_prefix"></a> [private\_subnet\_address\_prefix](#input\_private\_subnet\_address\_prefix) | Address prefix of the subnet for private endpoints | `string` | `null` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Whether public network access is allowed for this Key Vault. Defaults to true | `bool` | n/a | yes |
| <a name="input_random_password_length"></a> [random\_password\_length](#input\_random\_password\_length) | The desired length of random password created by this module | `number` | `32` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | A logical container that holds related resources for an Azure solution | `string` | n/a | yes |
| <a name="input_secrets"></a> [secrets](#input\_secrets) | A map of secrets for the Key Vault. | `map(string)` | `{}` | no |
| <a name="input_soft_delete_retention_days"></a> [soft\_delete\_retention\_days](#input\_soft\_delete\_retention\_days) | The number of days that items should be retained for once soft-deleted. The valid value can be between 7 and 90 days | `number` | `90` | no |
| <a name="input_storage_account_id"></a> [storage\_account\_id](#input\_storage\_account\_id) | The name of the storage account to store the all monitoring logs | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | `{}` | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | The name of the virtual network to put Key Vaul service in | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_Key_vault_references"></a> [Key\_vault\_references](#output\_Key\_vault\_references) | A mapping of Key Vault references for App Service and Azure Functions |
| <a name="output_key_vault_id"></a> [key\_vault\_id](#output\_key\_vault\_id) | The ID of the Key Vault |
| <a name="output_key_vault_name"></a> [key\_vault\_name](#output\_key\_vault\_name) | Name of the Key Vault service resource |
| <a name="output_key_vault_private_dns_zone_domain"></a> [key\_vault\_private\_dns\_zone\_domain](#output\_key\_vault\_private\_dns\_zone\_domain) | DNS zone name for Key Vault Private endpoints dns name records |
| <a name="output_key_vault_private_endpoint"></a> [key\_vault\_private\_endpoint](#output\_key\_vault\_private\_endpoint) | The ID of the Key Vault Private Endpoint |
| <a name="output_key_vault_private_endpoint_fqdn"></a> [key\_vault\_private\_endpoint\_fqdn](#output\_key\_vault\_private\_endpoint\_fqdn) | Key Vault private endpoint FQDN addresses |
| <a name="output_key_vault_private_endpoint_ip_addresses"></a> [key\_vault\_private\_endpoint\_ip\_addresses](#output\_key\_vault\_private\_endpoint\_ip\_addresses) | Key Vault private endpoint IPv4 Addresses |
| <a name="output_key_vault_uri"></a> [key\_vault\_uri](#output\_key\_vault\_uri) | The URI of the Key Vault, used for performing operations on keys and secrets |
| <a name="output_secrets"></a> [secrets](#output\_secrets) | A mapping of secret names and URIs |
