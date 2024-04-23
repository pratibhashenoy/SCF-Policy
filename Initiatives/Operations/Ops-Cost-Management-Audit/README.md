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
| <a name="module_create_initiative_Ops_Cost_Management_Audit"></a> [create\_initiative\_Ops\_Cost\_Management\_Audit](#module\_create\_initiative\_Ops\_Cost\_Management\_Audit) | ../../../modules/policies/policy-set-definition | n/a |
| <a name="module_create_policy_definition"></a> [create\_policy\_definition](#module\_create\_policy\_definition) | ../../../modules/policies/policy-definition | n/a |
| <a name="module_subscription_assignment"></a> [subscription\_assignment](#module\_subscription\_assignment) | ../../../modules/policies/subscription-policy-assignment | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group.mg](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/management_group) | data source |
| [azurerm_policy_definition.builtinpolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_definition.custompolicies](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_definition) | data source |
| [azurerm_policy_set_definition.Ops-Cost-Management-Audit](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/policy_set_definition) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.96.0/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_parameters"></a> [assignment\_parameters](#input\_assignment\_parameters) | assignment parameter value for policy assignment | `map` | <pre>{<br>  "effect_0b7ef78ea0354f23b9bdaff122a1b1cf": "Audit",<br>  "effect_16fabb5c737944338009042066fa3a16": "Audit",<br>  "effect_6c112d4e5bc747aea041ea2d9dccd749": "Audit",<br>  "effect_85bb39b52f6649f8930677da3ac5130f": "Audit",<br>  "listOfResourceTypesNotAllowed_6c112d4e5bc747aea041ea2d9dccd749": [<br>    "microsoft.classiccompute/virtualmachines",<br>    "microsoft.classiccompute/virtualmachines/diagnosticsettings",<br>    "microsoft.classiccompute/virtualmachines/metricdefinitions",<br>    "microsoft.classiccompute/virtualmachines/metrics",<br>    "microsoft.classicnetwork/virtualnetworks",<br>    "microsoft.classicnetwork/virtualnetworks/remotevirtualnetworkpeeringproxies",<br>    "microsoft.classicnetwork/virtualnetworks/virtualnetworkpeerings",<br>    "microsoft.classicstorage/checkstorageaccountavailability",<br>    "microsoft.classicstorage/storageaccounts",<br>    "microsoft.classicstorage/storageaccounts/blobservices",<br>    "microsoft.classicstorage/storageaccounts/fileservices",<br>    "microsoft.classicstorage/storageaccounts/metricdefinitions",<br>    "microsoft.classicstorage/storageaccounts/metrics",<br>    "microsoft.classicstorage/storageaccounts/queueservices",<br>    "microsoft.classicstorage/storageaccounts/services",<br>    "microsoft.classicstorage/storageaccounts/services/diagnosticsettings",<br>    "microsoft.classicstorage/storageaccounts/services/metricdefinitions",<br>    "microsoft.classicstorage/storageaccounts/services/metrics",<br>    "microsoft.classicstorage/storageaccounts/tableservices",<br>    "microsoft.classicstorage/storageaccounts/vmimages",<br>    "microsoft.classiccompute/capabilities",<br>    "microsoft.classiccompute/checkdomainnameavailability",<br>    "microsoft.classiccompute/domainnames",<br>    "microsoft.classiccompute/domainnames/capabilities",<br>    "microsoft.classiccompute/domainnames/internalloadbalancers",<br>    "microsoft.classiccompute/domainnames/servicecertificates",<br>    "microsoft.classiccompute/domainnames/slots",<br>    "microsoft.classiccompute/domainnames/slots/roles",<br>    "microsoft.classiccompute/domainnames/slots/roles/metricdefinitions",<br>    "microsoft.classiccompute/domainnames/slots/roles/metrics",<br>    "microsoft.classiccompute/movesubscriptionresources",<br>    "microsoft.classiccompute/operatingsystemfamilies",<br>    "microsoft.classiccompute/operatingsystems",<br>    "microsoft.classiccompute/operations",<br>    "microsoft.classiccompute/operationstatuses",<br>    "microsoft.classiccompute/quotas",<br>    "microsoft.classiccompute/resourcetypes",<br>    "microsoft.classiccompute/validatesubscriptionmoveavailability",<br>    "microsoft.classicnetwork/capabilities",<br>    "microsoft.classicnetwork/expressroutecrossconnections",<br>    "microsoft.classicnetwork/expressroutecrossconnections/peerings",<br>    "microsoft.classicnetwork/gatewaysupporteddevices",<br>    "microsoft.classicnetwork/networksecuritygroups",<br>    "microsoft.classicnetwork/operations",<br>    "microsoft.classicnetwork/quotas",<br>    "microsoft.classicnetwork/reservedips",<br>    "microsoft.classicstorage/capabilities",<br>    "microsoft.classicstorage/disks",<br>    "microsoft.classicstorage/images",<br>    "microsoft.classicstorage/operations",<br>    "microsoft.classicstorage/osimages",<br>    "microsoft.classicstorage/osplatformimages",<br>    "microsoft.classicstorage/publicimages",<br>    "microsoft.classicstorage/quotas",<br>    "microsoft.classicstorage/vmimages",<br>    "microsoft.classicsubscription/operations",<br>    "microsoft.classicinfrastructuremigrate/classicinfrastructureresources"<br>  ],<br>  "maxCores_85bb39b52f6649f8930677da3ac5130f": 32,<br>  "throughputMax_0b7ef78ea0354f23b9bdaff122a1b1cf": 1000<br>}</pre> | no |
| <a name="input_builtin_policies"></a> [builtin\_policies](#input\_builtin\_policies) | List of IDs of built-in policies | `set(string)` | <pre>[<br>  "0b7ef78e-a035-4f23-b9bd-aff122a1b1cf",<br>  "85bb39b5-2f66-49f8-9306-77da3ac5130f",<br>  "16fabb5c-7379-4433-8009-042066fa3a16",<br>  "6c112d4e-5bc7-47ae-a041-ea2d9dccd749"<br>]</pre> | no |
| <a name="input_custom_policies"></a> [custom\_policies](#input\_custom\_policies) | List of custom policies | `set(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->