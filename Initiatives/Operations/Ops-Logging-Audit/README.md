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
| <a name="module_create_initiative_Ops_Logging_Audit"></a> [create\_initiative\_Ops\_Logging\_Audit](#module\_create\_initiative\_Ops\_Logging\_Audit) | ../../../modules/policies/policy-set-definition | n/a |
| <a name="module_create_policy_definition"></a> [create\_policy\_definition](#module\_create\_policy\_definition) | ../../../modules/policies/policy-definition | n/a |
| <a name="module_subscription_assignment"></a> [subscription\_assignment](#module\_subscription\_assignment) | ../../../modules/policies/subscription-policy-assignment | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group.mg](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/management_group) | data source |
| [azurerm_policy_definition.builtinpolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_definition.custompolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_set_definition.Ops-Logging-Audit](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_set_definition) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_parameters"></a> [assignment\_parameters](#input\_assignment\_parameters) | assignment parameter value for policy assignment | `map` | <pre>{<br>  "effect_27960feba23c45778d36ef8b5f35e0be": "Audit",<br>  "effect_2f0801649f4d497e9db6416dc9f7b48a": "Audit",<br>  "effect_4c3c6c5f0d47440299b8aa543dd8bcee": "Audit",<br>  "effect_7796937f307b4598941c67d3a05ebfe7": "AuditIfNotExists",<br>  "effect_8a04f87251e9431397fbfc1c3543011c": "AuditIfNotExists",<br>  "effect_c251913d7d244958af87478ed3b9ba41": "Audit",<br>  "effect_cf820ca0f99e4f3e84fb66e913812d21": "AuditIfNotExists",<br>  "effect_d550e854df1a4de9bf44cd894b39a95e": "Audit",<br>  "listOfResourceTypes_7f89b1eb583c429a8828af049802c1d9": [<br>    "microsoft.storage/storageaccounts",<br>    "microsoft.keyvault/vaults"<br>  ],<br>  "logsEnabled_7f89b1eb583c429a8828af049802c1d9": true,<br>  "metricsEnabled_7f89b1eb583c429a8828af049802c1d9": true,<br>  "requiredRetentionDays_cf820ca0f99e4f3e84fb66e913812d21": "365"<br>}</pre> | no |
| <a name="input_builtin_policies"></a> [builtin\_policies](#input\_builtin\_policies) | List of IDs of built-in policies | `set(string)` | <pre>[<br>  "27960feb-a23c-4577-8d36-ef8b5f35e0be",<br>  "7f89b1eb-583c-429a-8828-af049802c1d9",<br>  "8a04f872-51e9-4313-97fb-fc1c3543011c",<br>  "d550e854-df1a-4de9-bf44-cd894b39a95e",<br>  "7796937f-307b-4598-941c-67d3a05ebfe7",<br>  "c251913d-7d24-4958-af87-478ed3b9ba41",<br>  "4c3c6c5f-0d47-4402-99b8-aa543dd8bcee",<br>  "2f080164-9f4d-497e-9db6-416dc9f7b48a",<br>  "cf820ca0-f99e-4f3e-84fb-66e913812d21"<br>]</pre> | no |
| <a name="input_custom_policies"></a> [custom\_policies](#input\_custom\_policies) | List of custom policies | `set(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->