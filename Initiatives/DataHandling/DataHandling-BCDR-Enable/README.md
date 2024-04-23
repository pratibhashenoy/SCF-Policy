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
| <a name="module_managementgroup_assignment"></a> [managementgroup\_assignment](#module\_managementgroup\_assignment) | ../../../modules/policies/management-group-policy-assignment | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group.mg](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/management_group) | data source |
| [azurerm_policy_definition.builtinpolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_definition.custompolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_set_definition.Initiative-name](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_set_definition) | data source |
| [azurerm_role_definition.backup_contributor](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/role_definition) | data source |
| [azurerm_role_definition.virtual_machine_contributor](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/role_definition) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_parameters"></a> [assignment\_parameters](#input\_assignment\_parameters) | assignment parameter value for policy assignment | `map` | <pre>{<br>  "backupPolicyId_09ce66bc122041538104e3f51c936913": "/subscriptions/<SubscriptionId>/resourceGroups/<resourceGroupName>/providers/Microsoft.RecoveryServices/vaults/<VaultName>/backupPolicies/<BackupPolicyName>",<br>  "backupPolicyId_345fa903145c4fe18bcd93ec2adccde8": "/subscriptions/<SubscriptionId>/resourceGroups/<resourceGroupName>/providers/Microsoft.RecoveryServices/vaults/<VaultName>/backupPolicies/<BackupPolicyName>",<br>  "crossSubscriptionRestoreStateParameter_4d479a11f2b54f0abb1ed2332aa95cda": "Disabled",<br>  "crossSubscriptionRestoreStateParameter_f19b0c83716f4b8185e32dbf057c35d6": "Disabled",<br>  "crossSubscriptionRestoreState_4d479a11f2b54f0abb1ed2332aa95cda": "Disable",<br>  "crossSubscriptionRestoreState_f19b0c83716f4b8185e32dbf057c35d6": "Disable",<br>  "effect_09ce66bc122041538104e3f51c936913": "DeployIfNotExists",<br>  "effect_345fa903145c4fe18bcd93ec2adccde8": "DeployIfNotExists",<br>  "effect_4d479a11f2b54f0abb1ed2332aa95cda": "Modify",<br>  "effect_f19b0c83716f4b8185e32dbf057c35d6": "Modify",<br>  "exclusionTagName_09ce66bc122041538104e3f51c936913": "",<br>  "exclusionTagValue_09ce66bc122041538104e3f51c936913": [],<br>  "inclusionTagName_345fa903145c4fe18bcd93ec2adccde8": "",<br>  "inclusionTagValue_345fa903145c4fe18bcd93ec2adccde8": [],<br>  "vaultLocation_09ce66bc122041538104e3f51c936913": "eastus2",<br>  "vaultLocation_345fa903145c4fe18bcd93ec2adccde8": "eastus2"<br>}</pre> | no |
| <a name="input_builtin_policies"></a> [builtin\_policies](#input\_builtin\_policies) | List of IDs of built-in policies | `set(string)` | <pre>[<br>  "f19b0c83-716f-4b81-85e3-2dbf057c35d6",<br>  "4d479a11-f2b5-4f0a-bb1e-d2332aa95cda",<br>  "09ce66bc-1220-4153-8104-e3f51c936913",<br>  "345fa903-145c-4fe1-8bcd-93ec2adccde8"<br>]</pre> | no |
| <a name="input_custom_policies"></a> [custom\_policies](#input\_custom\_policies) | List of custom policies | `set(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->