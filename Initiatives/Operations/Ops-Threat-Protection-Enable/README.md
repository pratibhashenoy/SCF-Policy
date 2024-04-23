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
| <a name="module_create_initiative_Ops_Threat_Protection_Enable"></a> [create\_initiative\_Ops\_Threat\_Protection\_Enable](#module\_create\_initiative\_Ops\_Threat\_Protection\_Enable) | ../../../modules/policies/policy-set-definition | n/a |
| <a name="module_create_policy_definition"></a> [create\_policy\_definition](#module\_create\_policy\_definition) | ../../../modules/policies/policy-definition | n/a |
| <a name="module_subscription_assignment"></a> [subscription\_assignment](#module\_subscription\_assignment) | ../../../modules/policies/subscription-policy-assignment | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group.mg](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/management_group) | data source |
| [azurerm_policy_definition.builtinpolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_definition.custompolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_set_definition.Ops-Threat-Protection-Enable](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_set_definition) | data source |
| [azurerm_role_definition.contributor](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/role_definition) | data source |
| [azurerm_role_definition.log_analytics_contributor](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/role_definition) | data source |
| [azurerm_role_definition.security_admin](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/role_definition) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_parameters"></a> [assignment\_parameters](#input\_assignment\_parameters) | assignment parameter value for policy assignment | `map` | <pre>{<br>  "ImageIdsToExclude_1ec9c2c26d64656d64653ec3309b8579": [],<br>  "ImageIdsToExclude_d30025d06d64656d646567688881b632": [],<br>  "PublishersToExclude_1ec9c2c26d64656d64653ec3309b8579": [],<br>  "PublishersToExclude_d30025d06d64656d646567688881b632": [],<br>  "effect_1ec9c2c26d64656d64653ec3309b8579": "DeployIfNotExists",<br>  "effect_708b60a6d2534fe091144be4c00f012c": "DeployIfNotExists",<br>  "effect_b5f04e0392a34b0994102cc5e5047656": "DeployIfNotExists",<br>  "effect_d30025d06d64656d646567688881b632": "DeployIfNotExists",<br>  "excludedDistributions_708b60a6d2534fe091144be4c00f012c": [<br>    "aks",<br>    "aks_management",<br>    "eks",<br>    "gke"<br>  ],<br>  "logAnalyticsWorkspaceResourceId_708b60a6d2534fe091144be4c00f012c": "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-sandbox-dev-eus2-01/providers/Microsoft.OperationalInsights/workspaces/log-sandbox-poc-eus-01"<br>}</pre> | no |
| <a name="input_builtin_policies"></a> [builtin\_policies](#input\_builtin\_policies) | List of IDs of built-in policies | `set(string)` | <pre>[<br>  "708b60a6-d253-4fe0-9114-4be4c00f012c",<br>  "d30025d0-6d64-656d-6465-67688881b632",<br>  "1ec9c2c2-6d64-656d-6465-3ec3309b8579",<br>  "b5f04e03-92a3-4b09-9410-2cc5e5047656",<br>  "ac076320-ddcf-4066-b451-6154267e8ad2"<br>]</pre> | no |
| <a name="input_custom_policies"></a> [custom\_policies](#input\_custom\_policies) | List of custom policies | `set(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->