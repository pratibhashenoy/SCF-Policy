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
| <a name="input_assignment_parameters"></a> [assignment\_parameters](#input\_assignment\_parameters) | assignment parameter value for policy assignment | `map` | <pre>{<br>  "IncludeArcMachines_5752e6d6120646d88ab1ecc2f71a8112": "false",<br>  "MinimumTLSVersion_5752e6d6120646d88ab1ecc2f71a8112": "1.2",<br>  "effect_11c82d0cdb9f4d7b97c5f3f9aa957da2": "Audit",<br>  "effect_32e6bbec16b644c2be37c5b672d103cf": "Audit",<br>  "effect_3aa87b5a78134b578a4342dd9df5aaa7": "Audit",<br>  "effect_404c3081a8544457ae3026a93ef643f9": "Audit",<br>  "effect_4dcfb8b505cd4090a9312ec29057e1fc": "AuditIfNotExists",<br>  "effect_4ee5b817627a435a8932116193268172": "AuditIfNotExists",<br>  "effect_5752e6d6120646d88ab1ecc2f71a8112": "AuditIfNotExists",<br>  "effect_679da82278a74eff8fffa899454a9970": "Audit",<br>  "effect_6d555dd186f24f1c8ed75abae7c6cbab": "Audit",<br>  "effect_711c24bb7f184578b19281a6161e1f17": "Audit",<br>  "effect_969ac98b88a8449f883c2e9adb123127": "Audit",<br>  "effect_a4af4a39413547fbb17547fbdf85311d": "Audit",<br>  "effect_a58ac66d92cb409c94b88e48d7a96596": "Audit",<br>  "effect_a879364060f7487cb5c31d37215905c4": "Audit",<br>  "effect_ae1b9a8cdfce4605bd9169213b4a26fc": "Audit",<br>  "effect_bb3c7464033e41ee81dc480fde675b20": "Audit",<br>  "effect_cb3738a682a24a18b87b15217b9deff4": "Audit",<br>  "effect_d6545c6bdd9d426591e60b451e2f1c50": "Audit",<br>  "effect_deb528de8f894101881c595899253102": "AuditIfNotExists",<br>  "effect_ee7495e73ba740b6bfeec29e22cc75d4": "Audit",<br>  "effect_f0e6e85b9b9f4a4bb67bf730d42f1b0b": "AuditIfNotExists",<br>  "effect_fe83a0eba853422daac21bffd182c5d0": "Audit",<br>  "minimumTlsVersion_fe83a0eba853422daac21bffd182c5d0": "TLS1_2"<br>}</pre> | no |
| <a name="input_builtin_policies"></a> [builtin\_policies](#input\_builtin\_policies) | List of IDs of built-in policies | `set(string)` | <pre>[<br>  "ee7495e7-3ba7-40b6-bfee-c29e22cc75d4",<br>  "ae1b9a8c-dfce-4605-bd91-69213b4a26fc",<br>  "4dcfb8b5-05cd-4090-a931-2ec29057e1fc",<br>  "4ee5b817-627a-435a-8932-116193268172",<br>  "a4af4a39-4135-47fb-b175-47fbdf85311d",<br>  "f0e6e85b-9b9f-4a4b-b67b-f730d42f1b0b",<br>  "d6545c6b-dd9d-4265-91e6-0b451e2f1c50",<br>  "3aa87b5a-7813-4b57-8a43-42dd9df5aaa7",<br>  "a58ac66d-92cb-409c-94b8-8e48d7a96596",<br>  "711c24bb-7f18-4578-b192-81a6161e1f17",<br>  "679da822-78a7-4eff-8fff-a899454a9970",<br>  "32e6bbec-16b6-44c2-be37-c5b672d103cf",<br>  "cb3738a6-82a2-4a18-b87b-15217b9deff4",<br>  "11c82d0c-db9f-4d7b-97c5-f3f9aa957da2",<br>  "deb528de-8f89-4101-881c-595899253102",<br>  "969ac98b-88a8-449f-883c-2e9adb123127",<br>  "6d555dd1-86f2-4f1c-8ed7-5abae7c6cbab",<br>  "404c3081-a854-4457-ae30-26a93ef643f9",<br>  "a8793640-60f7-487c-b5c3-1d37215905c4",<br>  "fe83a0eb-a853-422d-aac2-1bffd182c5d0",<br>  "bb3c7464-033e-41ee-81dc-480fde675b20",<br>  "5752e6d6-1206-46d8-8ab1-ecc2f71a8112"<br>]</pre> | no |
| <a name="input_custom_policies"></a> [custom\_policies](#input\_custom\_policies) | List of custom policies | `set(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->