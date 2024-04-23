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
| <a name="module_create_initiative_Ops_Threat_Protection_Audit"></a> [create\_initiative\_Ops\_Threat\_Protection\_Audit](#module\_create\_initiative\_Ops\_Threat\_Protection\_Audit) | ../../../modules/policies/policy-set-definition | n/a |
| <a name="module_create_policy_definition"></a> [create\_policy\_definition](#module\_create\_policy\_definition) | ../../../modules/policies/policy-definition | n/a |
| <a name="module_subscription_assignment"></a> [subscription\_assignment](#module\_subscription\_assignment) | ../../../modules/policies/subscription-policy-assignment | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group.mg](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/management_group) | data source |
| [azurerm_policy_definition.builtinpolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_definition.custompolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_set_definition.Ops-Threat-Protection-Audit](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_set_definition) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_parameters"></a> [assignment\_parameters](#input\_assignment\_parameters) | assignment parameter value for policy assignment | `map` | <pre>{<br>  "effect_04c4380f3fae46e896c930193528f602": "AuditIfNotExists",<br>  "effect_08e6af2ddb70460abfe9d5bd474ba9d6": "AuditIfNotExists",<br>  "effect_1b7aa24330e44c9ebca8d0d3022b634a": "AuditIfNotExists",<br>  "effect_2f2ee1de44aa4762b6bd0893fc3f306d": "AuditIfNotExists",<br>  "effect_47a6b60651aa44968bb764b11cf66adc": "AuditIfNotExists",<br>  "effect_501541f7f7e74cd6868c4190fdad3ac9": "AuditIfNotExists",<br>  "effect_640d258654d2465f877f9ffc1d2109f4": "AuditIfNotExists",<br>  "effect_8dfab9c4fe7b49ad85e41e9be085358f": "AuditIfNotExists",<br>  "effect_97566dd778ae49978b361c7bfe0d8121": "Audit",<br>  "effect_abfb43885bf44ad7ba822cd2f41ceae9": "AuditIfNotExists",<br>  "effect_abfb73885bf44ad7ba992cd2f41cebb9": "AuditIfNotExists",<br>  "effect_ef2a8f2ab3d949cda8a89a3aaaf647d9": "AuditIfNotExists",<br>  "effect_f85bf3e0d513442e89c31784ad63382b": "AuditIfNotExists"<br>}</pre> | no |
| <a name="input_builtin_policies"></a> [builtin\_policies](#input\_builtin\_policies) | List of IDs of built-in policies | `set(string)` | <pre>[<br>  "8dfab9c4-fe7b-49ad-85e4-1e9be085358f",<br>  "04c4380f-3fae-46e8-96c9-30193528f602",<br>  "2f2ee1de-44aa-4762-b6bd-0893fc3f306d",<br>  "97566dd7-78ae-4997-8b36-1c7bfe0d8121",<br>  "f85bf3e0-d513-442e-89c3-1784ad63382b",<br>  "501541f7-f7e7-4cd6-868c-4190fdad3ac9",<br>  "47a6b606-51aa-4496-8bb7-64b11cf66adc",<br>  "08e6af2d-db70-460a-bfe9-d5bd474ba9d6",<br>  "abfb4388-5bf4-4ad7-ba82-2cd2f41ceae9",<br>  "abfb7388-5bf4-4ad7-ba99-2cd2f41cebb9",<br>  "640d2586-54d2-465f-877f-9ffc1d2109f4",<br>  "1b7aa243-30e4-4c9e-bca8-d0d3022b634a",<br>  "ef2a8f2a-b3d9-49cd-a8a8-9a3aaaf647d9"<br>]</pre> | no |
| <a name="input_custom_policies"></a> [custom\_policies](#input\_custom\_policies) | List of custom policies | `set(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->