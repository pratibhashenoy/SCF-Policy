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
| <a name="module_create_initiative_Ops_Cost_Management_Enable"></a> [create\_initiative\_Ops\_Cost\_Management\_Enable](#module\_create\_initiative\_Ops\_Cost\_Management\_Enable) | ../../../modules/policies/policy-set-definition | n/a |
| <a name="module_create_policy_definition"></a> [create\_policy\_definition](#module\_create\_policy\_definition) | ../../../modules/policies/policy-definition | n/a |
| <a name="module_subscription_assignment"></a> [subscription\_assignment](#module\_subscription\_assignment) | ../../../modules/policies/subscription-policy-assignment | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group.mg](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/management_group) | data source |
| [azurerm_policy_definition.builtinpolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_definition.custompolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_set_definition.Ops-Cost-Management-Enable](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_set_definition) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_parameters"></a> [assignment\_parameters](#input\_assignment\_parameters) | assignment parameter value for policy assignment | `map` | <pre>{<br>  "effect_6c112d4e5bc747aea041ea2d9dccd749": "Audit",<br>  "listOfAllowedLocations_0473574d2d434217aefe941fcdf7e684": [<br>    "eastus2",<br>    "westus"<br>  ],<br>  "listOfAllowedSKUs_cccc23c784274f53ad12b6a63eb452b3": [<br>    "Standard_D2s_v3",<br>    "Standard_D4s_v3",<br>    "Standard_D8s_v3",<br>    "Standard_D16s_v3"<br>  ],<br>  "listOfResourceTypesNotAllowed_6c112d4e5bc747aea041ea2d9dccd749": [<br>    "Microsoft.KeyVault/managedHSMs",<br>    "Microsoft.OperationalInsights/workspaces",<br>    "Microsoft.ApiManagement/service",<br>    "Microsoft.Network/privateDnsZones",<br>    "Microsoft.Network/publicIPAddresses",<br>    "Microsoft.Network/publicIPPrefixes"<br>  ],<br>  "policyEffect_0473574d2d434217aefe941fcdf7e684": "Audit"<br>}</pre> | no |
| <a name="input_builtin_policies"></a> [builtin\_policies](#input\_builtin\_policies) | List of IDs of built-in policies | `set(string)` | <pre>[<br>  "cccc23c7-8427-4f53-ad12-b6a63eb452b3",<br>  "0473574d-2d43-4217-aefe-941fcdf7e684",<br>  "6c112d4e-5bc7-47ae-a041-ea2d9dccd749"<br>]</pre> | no |
| <a name="input_custom_policies"></a> [custom\_policies](#input\_custom\_policies) | List of custom policies | `set(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->