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
| [azurerm_policy_set_definition.DataHandling-BCDR-Audit](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_set_definition) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_parameters"></a> [assignment\_parameters](#input\_assignment\_parameters) | assignment parameter value for policy assignment | `map` | <pre>{<br>  "checkAlwaysOnSoftDeleteOnly_31b8092a36b8434b9af75ec844364148": true,<br>  "checkAlwaysOnSoftDeleteOnly_9798d31d60284dee864346102185c016": true,<br>  "checkLockedImmutabilityOnly_d6f6f56014b749a49fc8d2c3a9807868": true,<br>  "checkLockedImmutabiltyOnly_2514263bbc0d4b06ac3ef262c0979018": true,<br>  "effect_013e242c8828497087b3ab247555486d": "AuditIfNotExists",<br>  "effect_0a0758684c2642ef914c5bc007359560": "Audit",<br>  "effect_0b60c0b22dc24e1cb5c9abbed971de53": "Audit",<br>  "effect_2514263bbc0d4b06ac3ef262c0979018": "Audit",<br>  "effect_31b8092a36b8434b9af75ec844364148": "Audit",<br>  "effect_44c5a1f97ef64c38880c273e8f7a3c24": "Audit",<br>  "effect_85b005b295fc4953b9cbf9ee6427c754": "Audit",<br>  "effect_9798d31d60284dee864346102185c016": "Audit",<br>  "effect_bf04516479ba42158f95f8048dc1780b": "Audit",<br>  "effect_d6f6f56014b749a49fc8d2c3a9807868": "Audit",<br>  "maximumValidityInMonths_0a0758684c2642ef914c5bc007359560": 12<br>}</pre> | no |
| <a name="input_builtin_policies"></a> [builtin\_policies](#input\_builtin\_policies) | List of IDs of built-in policies | `set(string)` | <pre>[<br>  "0a075868-4c26-42ef-914c-5bc007359560",<br>  "44c5a1f9-7ef6-4c38-880c-273e8f7a3c24",<br>  "2514263b-bc0d-4b06-ac3e-f262c0979018",<br>  "d6f6f560-14b7-49a4-9fc8-d2c3a9807868",<br>  "31b8092a-36b8-434b-9af7-5ec844364148",<br>  "9798d31d-6028-4dee-8643-46102185c016",<br>  "85b005b2-95fc-4953-b9cb-f9ee6427c754",<br>  "0015ea4d-51ff-4ce3-8d8c-f3f8f0179a56",<br>  "013e242c-8828-4970-87b3-ab247555486d",<br>  "bf045164-79ba-4215-8f95-f8048dc1780b",<br>  "0b60c0b2-2dc2-4e1c-b5c9-abbed971de53"<br>]</pre> | no |
| <a name="input_custom_policies"></a> [custom\_policies](#input\_custom\_policies) | List of custom policies | `set(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->