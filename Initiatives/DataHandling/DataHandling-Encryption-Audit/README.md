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
| <a name="input_assignment_parameters"></a> [assignment\_parameters](#input\_assignment\_parameters) | assignment parameter value for policy assignment | `map` | <pre>{<br>  "allowedEncryptionSets_D461a302A187421a89ac84acdb4edc04": [],<br>  "effect_0a370ff36cab4e858995295fd854c5b8": "Audit",<br>  "effect_17k78e20935841c9923cfb736d382a12": "AuditIfNotExists",<br>  "effect_18adea5ef4164d0f8aa8d24321e3e274": "AuditIfNotExists",<br>  "effect_1f68a6016e6d4e42babf3f643a047ea2": "Audit",<br>  "effect_1f905d992ab7462ca6b0f709acca6c8f": "Audit",<br>  "effect_2d7e144b159c44fc95c1ac3dbf5e6e54": "Audit",<br>  "effect_2e94d99a8a364563bc77810d8893b671": "Audit",<br>  "effect_413923f0ff1641ae858390c5c5d9fa8f": "Audit",<br>  "effect_47031206ce9641f8861b6a915f3de284": "Audit",<br>  "effect_4d080fa5a6d24f98ba9cf482d0d335c0": "Audit",<br>  "effect_4ec52d6dbeb740c49a9efe753254690e": "Audit",<br>  "effect_56a5ee182ae6481086f718e39ce5629b": "Audit",<br>  "effect_5b9159ae17014a6f9a7aaa9c8ddd0580": "Audit",<br>  "effect_64d314f660624780a861c23e8951bee5": "Audit",<br>  "effect_6fac406b40ca413bbf8e0bf964659c25": "Audit",<br>  "effect_702dd4207fcc42c5afe84026edd20fe0": "Audit",<br>  "effect_7c322315e26d4174a99ef49d351b4688": "Audit",<br>  "effect_9285c3ded5fd422586d4027894b0c442": "Audit",<br>  "effect_99e9ccd83db94592b0d114b1715a4d8a": "Audit",<br>  "effect_PostgreSQLFlexibleCMK": "Audit",<br>  "effect_SQLServerAuth": "Audit",<br>  "effect_SQLServerDBCMK": "Audit",<br>  "effect_ServiceBusCMK": "Audit",<br>  "effect_StorageAccountCMK": "Audit",<br>  "effect_ac01ad6510e546dfbdd96b0cad13e1d2": "Audit",<br>  "effect_b5ec538cdaa04006859635468b9148e8": "Audit",<br>  "effect_ba769a63b8cc4b2dabf6ac33c7204be8": "Audit",<br>  "effect_d461a302a187421a89ac84acdb4edc04": "Audit",<br>  "effect_f0e5abd025544736b7c04ffef23475ef": "Audit",<br>  "effect_fc4d8e41e22345ea9bf5eada37891d87": "Audit",<br>  "enableDoubleEncryption_2e94d99a8a364563bc77810d8893b671": false<br>}</pre> | no |
| <a name="input_builtin_policies"></a> [builtin\_policies](#input\_builtin\_policies) | List of IDs of built-in policies | `set(string)` | <pre>[<br>  "2d7e144b-159c-44fc-95c1-ac3dbf5e6e54",<br>  "2e94d99a-8a36-4563-bc77-810d8893b671",<br>  "47031206-ce96-41f8-861b-6a915f3de284",<br>  "56a5ee18-2ae6-4810-86f7-18e39ce5629b",<br>  "99e9ccd8-3db9-4592-b0d1-14b1715a4d8a",<br>  "1f905d99-2ab7-462c-a6b0-f709acca6c8f",<br>  "4ec52d6d-beb7-40c4-9a9e-fe753254690e",<br>  "64d314f6-6062-4780-a861-c23e8951bee5",<br>  "4d080fa5-a6d2-4f98-ba9c-f482d0d335c0",<br>  "ba769a63-b8cc-4b2d-abf6-ac33c7204be8",<br>  "9285c3de-d5fd-4225-86d4-027894b0c442",<br>  "1f68a601-6e6d-4e42-babf-3f643a047ea2",<br>  "5b9159ae-1701-4a6f-9a7a-aa9c8ddd0580",<br>  "413923f0-ff16-41ae-8583-90c5c5d9fa8f",<br>  "d461a302-a187-421a-89ac-84acdb4edc04",<br>  "702dd420-7fcc-42c5-afe8-4026edd20fe0",<br>  "18adea5e-f416-4d0f-8aa8-d24321e3e274",<br>  "f0e5abd0-2554-4736-b7c0-4ffef23475ef",<br>  "ac01ad65-10e5-46df-bdd9-6b0cad13e1d2",<br>  "0a370ff3-6cab-4e85-8995-295fd854c5b8",<br>  "b5ec538c-daa0-4006-8596-35468b9148e8",<br>  "6fac406b-40ca-413b-bf8e-0bf964659c25",<br>  "7c322315-e26d-4174-a99e-f49d351b4688",<br>  "17k78e20-9358-41c9-923c-fb736d382a12",<br>  "fc4d8e41-e223-45ea-9bf5-eada37891d87"<br>]</pre> | no |
| <a name="input_custom_policies"></a> [custom\_policies](#input\_custom\_policies) | List of custom policies | `set(string)` | <pre>[<br>  "PostgreSQLFlexibleCMK",<br>  "ServiceBusCMK",<br>  "StorageAccountCMK",<br>  "SQLServerDBCMK",<br>  "SQLServerAuth"<br>]</pre> | no |
| <a name="input_policy_exceptions"></a> [policy\_exceptions](#input\_policy\_exceptions) | List of policy execptions , as defined above. | <pre>map(object({<br>    exception_resource_id = string       # Resource id of resouce which need exception<br>    description           = string       # A description for exception rule.<br>    display_name          = string       # Display name<br>    expiration_date       = string       # Expiration UTC datetime (Y-m-d'T'H:M:S'Z').<br>    policy_reference_ids  = list(string) # List of policy id which need to be exmpted<br><br>  }))</pre> | <pre>{<br>  "<Provide a name for policy exception>": {<br>    "description": "Exception provided for <provide subscription name> subscription",<br>    "display_name": "<Provide a display name>",<br>    "exception_resource_id": "/subscriptions/acd4eadd-xxxx-xxxx-xxxx-xxxxxxxxxxxx",<br>    "expiration_date": null,<br>    "policy_reference_ids": []<br>  }<br>}</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->