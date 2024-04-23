<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azapi"></a> [azapi](#provider\_azapi) | n/a |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azapi_resource.mg_policy_exemption](https://registry.terraform.io/providers/hashicorp/azapi/latest/docs/resources/resource) | resource |
| [azurerm_management_group_policy_assignment.set](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_description"></a> [assignment\_description](#input\_assignment\_description) | A description to use for the Policy Assignment, defaults to initiative description. Changing this forces a new resource to be created | `string` | `""` | no |
| <a name="input_assignment_display_name"></a> [assignment\_display\_name](#input\_assignment\_display\_name) | The policy assignment display name, defaults to initiative display\_name. Changing this forces a new resource to be created | `string` | `""` | no |
| <a name="input_assignment_effect"></a> [assignment\_effect](#input\_assignment\_effect) | The effect of the policy. Changing this forces a new resource to be created | `string` | `null` | no |
| <a name="input_assignment_enforcement_mode"></a> [assignment\_enforcement\_mode](#input\_assignment\_enforcement\_mode) | Control whether the assignment is enforced | `bool` | `true` | no |
| <a name="input_assignment_location"></a> [assignment\_location](#input\_assignment\_location) | The Azure location where this policy assignment should exist, required when an Identity is assigned. Defaults to East US2. Changing this forces a new resource to be created | `string` | `"eastus2"` | no |
| <a name="input_assignment_metadata"></a> [assignment\_metadata](#input\_assignment\_metadata) | The optional metadata for the policy assignment. | `any` | `null` | no |
| <a name="input_assignment_name"></a> [assignment\_name](#input\_assignment\_name) | The name which should be used for this Policy Assignment, defaults to initiative name. Changing this forces a new Policy Assignment to be created | `string` | `""` | no |
| <a name="input_assignment_not_scopes"></a> [assignment\_not\_scopes](#input\_assignment\_not\_scopes) | A list of the Policy Assignment's excluded scopes. Must be full resource IDs | `list(any)` | `[]` | no |
| <a name="input_assignment_parameters"></a> [assignment\_parameters](#input\_assignment\_parameters) | The policy assignment parameters. Changing this forces a new resource to be created | `any` | `null` | no |
| <a name="input_assignment_scope"></a> [assignment\_scope](#input\_assignment\_scope) | The scope at which the policy initiative will be assigned. Must be full resource IDs. Changing this forces a new resource to be created | `string` | n/a | yes |
| <a name="input_initiative"></a> [initiative](#input\_initiative) | Policy Initiative resource node | `any` | n/a | yes |
| <a name="input_non_compliance_messages"></a> [non\_compliance\_messages](#input\_non\_compliance\_messages) | The optional non-compliance message(s). Key/Value pairs map as policy\_definition\_reference\_id = 'content', use null = 'content' to specify the Default non-compliance message for all member definitions. | `any` | `{}` | no |
| <a name="input_policy_exceptions"></a> [policy\_exceptions](#input\_policy\_exceptions) | List of policy execptions , as defined above. | <pre>map(object({<br>    exception_resource_id = string       # Resource id of resouce which need exception<br>    description           = string       # A description for exception rule.<br>    display_name          = string       # Display name<br>    expiration_date       = string       # Expiration UTC datetime (Y-m-d'T'H:M:S'Z').<br>    policy_reference_ids  = list(string) # List of policy id which need to be exmpted <br><br>  }))</pre> | `{}` | no |
| <a name="input_role_definition_ids"></a> [role\_definition\_ids](#input\_role\_definition\_ids) | List of Role definition ID's for the System Assigned Identity. Omit this to use those located in policy definitions. Changing this forces a new resource to be created | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_definition_references"></a> [definition\_references](#output\_definition\_references) | The Member Definition Reference Ids |
| <a name="output_id"></a> [id](#output\_id) | The Policy Assignment Id |
| <a name="output_principal_id"></a> [principal\_id](#output\_principal\_id) | The Principal Id of this Policy Assignment's Managed Identity if type is SystemAssigned |
<!-- END_TF_DOCS -->