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
| <a name="module_create_initiative"></a> [create\_initiative](#module\_create\_initiative) | ../../../modules/policies/policy-set-definition | n/a |
| <a name="module_create_policy_definition"></a> [create\_policy\_definition](#module\_create\_policy\_definition) | ../../../modules/policies/policy-definition | n/a |
| <a name="module_subscription_assignment"></a> [subscription\_assignment](#module\_subscription\_assignment) | ../../../modules/policies/subscription-policy-assignment | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group.mg](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/management_group) | data source |
| [azurerm_policy_definition.builtinpolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_definition.custompolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_set_definition.Initiative-name](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_set_definition) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_parameters"></a> [assignment\_parameters](#input\_assignment\_parameters) | assignment parameter value for policy assignment | `map` | <pre>{<br>  "effect_24b7a1c644fe40cca2e6242d2ef70e98": "Audit",<br>  "effect_72d04c29f87d45759731419ff16a2757": "Audit",<br>  "effect_73ef92415d814cd4b4838443d1730fe5": "Audit",<br>  "effect_9c25c9e4ee124882afd211fb9d87893f": "Audit",<br>  "effect_ef619a2ccc4d4d03b2ba8c94a834d85b": "Audit",<br>  "evaluatedSkuNames_ef619a2ccc4d4d03b2ba8c94a834d85b": [<br>    "Developer",<br>    "Premium"<br>  ]<br>}</pre> | no |
| <a name="input_builtin_policies"></a> [builtin\_policies](#input\_builtin\_policies) | List of IDs of built-in policies | `set(string)` | <pre>[<br>  "73ef9241-5d81-4cd4-b483-8443d1730fe5",<br>  "ef619a2c-cc4d-4d03-b2ba-8c94a834d85b",<br>  "24b7a1c6-44fe-40cc-a2e6-242d2ef70e98",<br>  "72d04c29-f87d-4575-9731-419ff16a2757",<br>  "9c25c9e4-ee12-4882-afd2-11fb9d87893f"<br>]</pre> | no |
| <a name="input_custom_policies"></a> [custom\_policies](#input\_custom\_policies) | List of custom policies | `set(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->