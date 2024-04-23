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
| [azurerm_role_definition.contributor](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/role_definition) | data source |
| [azurerm_role_definition.storage_account_contributor](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/role_definition) | data source |
| [azurerm_role_definition.website_contributor](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/role_definition) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_parameters"></a> [assignment\_parameters](#input\_assignment\_parameters) | assignment parameter value for policy assignment | `map` | <pre>{<br>  "IncludeArcMachines_828ba269bf7f408283dd633417bc391d": "false",<br>  "MinimumClientTLSVersion_828ba269bf7f408283dd633417bc391d": "1.2",<br>  "MinimumServerTLSVersion_828ba269bf7f408283dd633417bc391d": "1.2",<br>  "effect_014664e7e34841a3aeb9566e4ff6a9df": "DeployIfNotExists",<br>  "effect_08cf2974d17848a0b26df6b8e555748b": "Modify",<br>  "effect_828ba269bf7f408283dd633417bc391d": "DeployIfNotExists",<br>  "effect_8b5c654cfb07471baa8f15fea733f140": "Modify",<br>  "effect_978deb5dc9a741f8b4b2b76880d0de1f": "Modify",<br>  "effect_a096cbd04693432f9374682f485f23f3": "Modify",<br>  "effect_f81e311700934b178a6082363134f0eb": "Modify",<br>  "effect_fa3a6357c6d641208429855577ec0063": "DeployIfNotExists"<br>}</pre> | no |
| <a name="input_builtin_policies"></a> [builtin\_policies](#input\_builtin\_policies) | List of IDs of built-in policies | `set(string)` | <pre>[<br>  "014664e7-e348-41a3-aeb9-566e4ff6a9df",<br>  "8b5c654c-fb07-471b-aa8f-15fea733f140",<br>  "08cf2974-d178-48a0-b26d-f6b8e555748b",<br>  "fa3a6357-c6d6-4120-8429-855577ec0063",<br>  "a096cbd0-4693-432f-9374-682f485f23f3",<br>  "828ba269-bf7f-4082-83dd-633417bc391d",<br>  "f81e3117-0093-4b17-8a60-82363134f0eb",<br>  "978deb5d-c9a7-41f8-b4b2-b76880d0de1f"<br>]</pre> | no |
| <a name="input_custom_policies"></a> [custom\_policies](#input\_custom\_policies) | List of custom policies | `set(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->