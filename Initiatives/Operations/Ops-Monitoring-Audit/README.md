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
| <a name="module_create_initiative_Ops_Monitoring_Audit"></a> [create\_initiative\_Ops\_Monitoring\_Audit](#module\_create\_initiative\_Ops\_Monitoring\_Audit) | ../../../modules/policies/policy-set-definition | n/a |
| <a name="module_create_policy_definition"></a> [create\_policy\_definition](#module\_create\_policy\_definition) | ../../../modules/policies/policy-definition | n/a |
| <a name="module_subscription_assignment"></a> [subscription\_assignment](#module\_subscription\_assignment) | ../../../modules/policies/subscription-policy-assignment | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group.mg](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/management_group) | data source |
| [azurerm_policy_definition.builtinpolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_definition.custompolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_set_definition.Ops-Monitoring-Audit](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_set_definition) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_parameters"></a> [assignment\_parameters](#input\_assignment\_parameters) | assignment parameter value for policy assignment | `map` | <pre>{<br>  "effect_1afdc4b6581a45fbb630f1e6051e3e7a": "AuditIfNotExists",<br>  "effect_32ade945311e4249b8a4a549924234d7": "AuditIfNotExists",<br>  "effect_3672e6f7a74d4763b138fcf332042f8f": "AuditIfNotExists",<br>  "effect_c02729e5e5e7445897fa2b5ad0661f28": "AuditIfNotExists",<br>  "listOfLinuxImageIdToInclude_1afdc4b6581a45fbb630f1e6051e3e7a": [],<br>  "listOfLinuxImageIdToInclude_32ade945311e4249b8a4a549924234d7": [],<br>  "listOfWindowsImageIdToInclude_3672e6f7a74d4763b138fcf332042f8f": [],<br>  "listOfWindowsImageIdToInclude_c02729e5e5e7445897fa2b5ad0661f28": [],<br>  "scopeToSupportedImages_1afdc4b6581a45fbb630f1e6051e3e7a": true,<br>  "scopeToSupportedImages_32ade945311e4249b8a4a549924234d7": true,<br>  "scopeToSupportedImages_3672e6f7a74d4763b138fcf332042f8f": true,<br>  "scopeToSupportedImages_c02729e5e5e7445897fa2b5ad0661f28": true<br>}</pre> | no |
| <a name="input_builtin_policies"></a> [builtin\_policies](#input\_builtin\_policies) | List of IDs of built-in policies | `set(string)` | <pre>[<br>  "32ade945-311e-4249-b8a4-a549924234d7",<br>  "1afdc4b6-581a-45fb-b630-f1e6051e3e7a",<br>  "3672e6f7-a74d-4763-b138-fcf332042f8f",<br>  "c02729e5-e5e7-4458-97fa-2b5ad0661f28"<br>]</pre> | no |
| <a name="input_custom_policies"></a> [custom\_policies](#input\_custom\_policies) | List of custom policies | `set(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->