<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.96.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.96.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_create_initiative_Ops_Management"></a> [create\_initiative\_Ops\_Management](#module\_create\_initiative\_Ops\_Management) | ../../../modules/policies/policy-set-definition | n/a |
| <a name="module_create_policy_definition"></a> [create\_policy\_definition](#module\_create\_policy\_definition) | ../../../modules/policies/policy-definition | n/a |
| <a name="module_subscription_assignment"></a> [subscription\_assignment](#module\_subscription\_assignment) | ../../../modules/policies/subscription-policy-assignment | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group.mg](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/management_group) | data source |
| [azurerm_policy_definition.builtinpolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_definition.custompolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_set_definition.Ops-Management](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_set_definition) | data source |
| [azurerm_role_definition.contributor](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/role_definition) | data source |
| [azurerm_role_definition.log_analytics_contributor](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/role_definition) | data source |
| [azurerm_role_definition.monitoring_contributor](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/role_definition) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_parameters"></a> [assignment\_parameters](#input\_assignment\_parameters) | assignment parameter value for policy assignment | `map` | <pre>{<br>  "centralindiaDcrResourceId_ConfigureWindowsVMToBeAssociatedWithDCE": "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01",<br>  "centralusDcrResourceId_ConfigureWindowsVMToBeAssociatedWithDCE": "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-cus-01",<br>  "eastus2DcrResourceId_ConfigureWindowsVMToBeAssociatedWithDCE": "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01",<br>  "effect_0a15ec92a2294763bb140ea34a568f8d": "Audit",<br>  "effect_ConfigureWindowsVMToBeAssociatedWithDCE": "AuditIfNotExists",<br>  "listOfAllowedLocations_e56962a6474749cdb67bbf8b01975c4c": [<br>    "eastus2",<br>    "westus",<br>    "centralindia",<br>    "centralus"<br>  ],<br>  "maintenanceConfigurationResourceId_ba0df93ee4ac479aaac2134bbae39a1a": "/subscriptions/c2dba585-3f67-495a-b2d6-c827eeaf4757/resourcegroups/rg-aum-core-mgmt-eus2-01/providers/microsoft.maintenance/maintenanceconfigurations/aum-all-vms-sbx-01",<br>  "resourceType_ConfigureWindowsVMToBeAssociatedWithDCE": "Microsoft.Insights/dataCollectionEndpoints",<br>  "tagName_96670d010a4d46499c892d3abc0a5025": "environment",<br>  "tagName_ea3f23879b95492aa190fcdc54f7b070": "environment",<br>  "westusDcrResourceId_ConfigureWindowsVMToBeAssociatedWithDCE": "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01"<br>}</pre> | no |
| <a name="input_builtin_policies"></a> [builtin\_policies](#input\_builtin\_policies) | List of IDs of built-in policies | `set(string)` | <pre>[<br>  "e56962a6-4747-49cd-b67b-bf8b01975c4c",<br>  "06a78e20-9358-41c9-923c-fb736d382a4d",<br>  "0a15ec92-a229-4763-bb14-0ea34a568f8d",<br>  "ea3f2387-9b95-492a-a190-fcdc54f7b070",<br>  "47a1ee2f-2a2a-4576-bf2a-e0e36709c2b8",<br>  "c26596ff-4d70-4e6a-9a30-c2506bd2f80c",<br>  "098fc59e-46c7-4d99-9b16-64990e543d75",<br>  "95edb821-ddaf-4404-9732-666045e056b4",<br>  "bd876905-5b84-4f73-ab2d-2e7a7c4568d9",<br>  "96670d01-0a4d-4649-9c89-2d3abc0a5025",<br>  "465f0161-0087-490a-9ad9-ad6217f4f43a",<br>  "ba0df93e-e4ac-479a-aac2-134bbae39a1a"<br>]</pre> | no |
| <a name="input_custom_policies"></a> [custom\_policies](#input\_custom\_policies) | List of custom policies | `set(string)` | <pre>[<br>  "ConfigureWindowsVMToBeAssociatedWithDCE"<br>]</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->