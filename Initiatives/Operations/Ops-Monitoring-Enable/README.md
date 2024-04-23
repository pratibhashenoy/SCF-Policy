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
| <a name="module_create_initiative_Ops_Monitoring_Enable"></a> [create\_initiative\_Ops\_Monitoring\_Enable](#module\_create\_initiative\_Ops\_Monitoring\_Enable) | ../../../modules/policies/policy-set-definition | n/a |
| <a name="module_create_policy_definition"></a> [create\_policy\_definition](#module\_create\_policy\_definition) | ../../../modules/policies/policy-definition | n/a |
| <a name="module_subscription_assignment"></a> [subscription\_assignment](#module\_subscription\_assignment) | ../../../modules/policies/subscription-policy-assignment | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group.mg](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/management_group) | data source |
| [azurerm_policy_definition.builtinpolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_definition.custompolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_set_definition.Ops-Monitoring-Enable](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_set_definition) | data source |
| [azurerm_role_definition.contributor](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/role_definition) | data source |
| [azurerm_role_definition.log_analytics_contributor](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/role_definition) | data source |
| [azurerm_role_definition.monitoring_contributor](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/role_definition) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_parameters"></a> [assignment\_parameters](#input\_assignment\_parameters) | assignment parameter value for policy assignment | `map` | <pre>{<br>  "centralindiaDcrResourceId_ConfigureWindowsVMToBeAssociatedWithDCE": "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01",<br>  "centralusDcrResourceId_ConfigureWindowsVMToBeAssociatedWithDCE": "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-cus-01",<br>  "eastus2DcrResourceId_ConfigureWindowsVMToBeAssociatedWithDCE": "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01",<br>  "effect_08a4470fb26d428d97f47e3e9c92b366": "DeployIfNotExists",<br>  "effect_845857af03334c5dbbbc6076697da122": "DeployIfNotExists",<br>  "effect_84cfed75dfd4421b93df725b479d356a": "DeployIfNotExists",<br>  "effect_91cb9eddcd924d2fb2f2bdd8d065a3d4": "DeployIfNotExists",<br>  "effect_94f686d69a244e1991f1de937dc171a4": "DeployIfNotExists",<br>  "effect_deacecc09f8444d2bb8246f32d766d43": "DeployIfNotExists",<br>  "enableProcessesAndDependencies_08a4470fb26d428d97f47e3e9c92b366": true,<br>  "enableProcessesAndDependencies_84cfed75dfd4421b93df725b479d356a": true,<br>  "resourceType_ConfigureWindowsVMToBeAssociatedWithDCE": "Microsoft.Insights/dataCollectionEndpoints",<br>  "westusDcrResourceId_ConfigureWindowsVMToBeAssociatedWithDCE": "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01"<br>}</pre> | no |
| <a name="input_builtin_policies"></a> [builtin\_policies](#input\_builtin\_policies) | List of IDs of built-in policies | `set(string)` | <pre>[<br>  "deacecc0-9f84-44d2-bb82-46f32d766d43",<br>  "08a4470f-b26d-428d-97f4-7e3e9c92b366",<br>  "91cb9edd-cd92-4d2f-b2f2-bdd8d065a3d4",<br>  "84cfed75-dfd4-421b-93df-725b479d356a",<br>  "845857af-0333-4c5d-bbbc-6076697da122",<br>  "94f686d6-9a24-4e19-91f1-de937dc171a4"<br>]</pre> | no |
| <a name="input_custom_policies"></a> [custom\_policies](#input\_custom\_policies) | List of custom policies | `set(string)` | <pre>[<br>  "ConfigureWindowsVMToBeAssociatedWithDCE"<br>]</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->