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
| <a name="module_create_initiative_Ops_Alerting_Audit"></a> [create\_initiative\_Ops\_Alerting\_Audit](#module\_create\_initiative\_Ops\_Alerting\_Audit) | ../../../modules/policies/policy-set-definition | n/a |
| <a name="module_create_policy_definition"></a> [create\_policy\_definition](#module\_create\_policy\_definition) | ../../../modules/policies/policy-definition | n/a |
| <a name="module_subscription_assignment"></a> [subscription\_assignment](#module\_subscription\_assignment) | ../../../modules/policies/subscription-policy-assignment | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group.mg](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/management_group) | data source |
| [azurerm_policy_definition.builtinpolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_definition.custompolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_set_definition.Ops-Alerting-Audit](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_set_definition) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_parameters"></a> [assignment\_parameters](#input\_assignment\_parameters) | assignment parameter value for policy assignment | `map` | <pre>{<br>  "effect_26ee67a2f81a4ba8b9ce8550bd5ee1a7": "AuditIfNotExists",<br>  "effect_b954148f4c114c388221be76711e194a": "AuditIfNotExists",<br>  "metricName_26ee67a2f81a4ba8b9ce8550bd5ee1a7": "IdleNodeCount",<br>  "operationName_b954148f4c114c388221be76711e194a": "Microsoft.Network/networkSecurityGroups/write"<br>}</pre> | no |
| <a name="input_builtin_policies"></a> [builtin\_policies](#input\_builtin\_policies) | List of IDs of built-in policies | `set(string)` | <pre>[<br>  "b954148f-4c11-4c38-8221-be76711e194a",<br>  "26ee67a2-f81a-4ba8-b9ce-8550bd5ee1a7"<br>]</pre> | no |
| <a name="input_custom_policies"></a> [custom\_policies](#input\_custom\_policies) | List of custom policies | `set(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->