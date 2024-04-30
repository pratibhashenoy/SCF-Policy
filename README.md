# Overview

## Terraform code for Azure Policy implementation along with YML for deployment using GitHub Actions

This Terraform code is used to implement Azure Policies that are grouped into initiatives from the proposed security categories: Data Handling, Network, Operations, Identity and Access.

<a id="sc"></a>

## Security Categories

- **Data Handling**: This category includes policies related to the handling of data, such as backup and recovery, data classification, and data encryption.
- **Network**: This category includes policies related to network security, such as network access control, network segmentation, and network protection.
- **Operations**: This category includes policies related to operational security, such as alerting, logging, cost management, monitoring and threat protection.
- **Identity and Access**: This category includes policies related to identity and access management, such as user and Azure resource authentication and authorization.

## Security Control Framework for Policy Design

| Category              | Sub Category                                                        | Topics                                                                     |
| --------------------- | ------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| Data Handling         | BCDR                                                                | backup, recoverability - Immutability, soft-delete, delete protection, HSM |
| Encryption            | Encryption at rest                                                  |
| Key Management        | Secrets & Key Management, key rotation                              |
| Identity              | Identity Protection                                                 | Managed Identity, RBAC, no shared key, etc.                                |
| Privileged Access     | recommendation for Privileged Access, clean keyboard, etc.          |
| Network               | Encryption                                                          | Encryption in transit - TLS, use of HTTPS                                  |
| Integration/Injection | Virtual Network enforcement                                         |
| Private Link          | use of private link and private endpoint                            |
| Public Endpoint       | use of public endpoint                                              |
| Threat Protection     | configuration for network-based attacks                             |
| Operations            | Alerting                                                            | Alert rules                                                                |
| Cost Management       | SKU restriction or throttling policies, things that may impact cost |
| Logging               | diagnostic settings, flow log, resource logs                        |
| Management            | Guest User configurations, OS Image integrity, patch management     |
| Monitoring            | Azure Monitor Agent, Arc Dependency Agent                           |
| Threat Protection     | Defender, Network Traffic Collection Agent, (config) Secure Boot    |

## File and Folder structure

### Modules Folder

This folder contains Terraform modules for implementing Azure Policies. The modules are named `policy-definition`, `policy-set-definition`, `management-group-policy-assignment`, `subscription-policy-assignment`, and `resource-group-policy-assignment`.

- **policy-definition**: This module is used to define Azure Policies.
- **policy-set-definition**: This module is used to define Azure Policy Sets (also known as **Initiatives**), which group multiple policies together.
- **management-group-policy-assignment**: This module is used to assign policies to management groups.
- **subscription-policy-assignment**: This module is used to assign policies to subscriptions.
- **resource-group-policy-assignment**: This module is used to assign policies to resource groups.

In terms of the Terraform modules mentioned above, each module typically contains three main files: `main.tf`, `variables.tf`, and `outputs.tf`. 

- **main.tf** contains the main code for the module
- **variables.tf** defines the input variables for the module 
- **outputs.tf** defines the output values that the module produces. 

### Initiatives Folder

This folder contains code to create and assign initiatives that are designed as per the Security Categories - Data Handling, Network, Operations, Identity and Access.  Currently, the repo only contains code for the operations subcategories.

Within the Initiatives folder, there are five key Terraform files that are used for creating and managing Azure Policy Initiatives. These files include:

- `main.tf`: Contains the local variable block and data sources that retrieve information about Azure resources for the module.
- `definition.tf`: Used to define the initiatives and their associated custom policies (built-in policies are pre-defined by Azure).
- `assignment.tf`: Used to assign the initiatives to the appropriate scope (Management group, Subscription, Resource group).
- `variables.tf`: Defines the input variables for the module.
- `providers.tf`: Configures the providers used by the module.

Additionally, there is an optional `Lib` folder that contains JSON files for custom policy definitions. These files are used to create custom policies that are not available in the Azure Policy service.


## Usage

This section provides a step-by-step guide for creating custom policy definitions and initiatives, assigning policy initiatives, and managing exemptions using Terraform.

### 1. Create a new Initiative

The policies are grouped within an Initiative. Initiatives are grouped by the four security categories (Data Handling, Network, Operations, Identity and Access). See the [Security categories](#sc) section above for a description of each category.  Each security category has a folder and beneath that, all initiatives within that category have their own subfolders.

1. **Identify the Initiative Security Category**: If they do not already exist, create {Security_category}\\{New_Initiative} folders under the `Initiatives` folder.  For instance, to create a policy for alerting audits (Ops-Alerting-Audit), we will first create the [Initiatives\Operations](Initiatives/Operations) folder if it does not already existing.  Under that, we would then create the [Initiatives\Operations\Ops-Alerting-Audit](Initiatives/Operations/Ops-Alerting-Audit) folder to hold that specific initiative.

2. **Prepare the Policy Files**: Ignore this step if the Initiative folder already exists. If the Initiatives folder does not exist, then copy the files and folder structure from the `Sample-Code` folder into the Initiatives\\{Security_category}\\{New_Initiative} folder.
The `Sample-Code` folder will be available in each of the Initiatives folder (Data Handling, Network, Operations, Identity and Access).

### 2. Identify Policies for Initiative

An initiative is essentially a collection of policy definitions that work together to achieve specific governance objectives.  It can comprise a combination of the two basic types of policies:

1. **Built-in Policies**: Pre-defined by Azure; for common scenarios. Policy definition is available in Azure.
2. **Custom Policies**: User-defined; tailored to meet unique requirements. Policy definition needs to be created.

### 3. Create Custom Policy Definitions

To create custom policy definitions (Only applicable if using custom policies within the Initiative. Skip this step if not using custom policy within the Initiative):

1. **Define the Custom Policy**: Place the custom policy JSON file in the `Lib` folder.
2. **Update the `variable.tf` File**: Add the value of custom policy's `name` property to the "custom_policies" variable (this is available in the policy definition JSON):

```hcl
# List of custom policies for the initiative
variable "custom_policies" {
  type        = set(string)
  description = "List of custom policies"
  default = [
    # Add the name of the Custom Policy from the Policy Definition JSON in the 'Lib' Folder
    "CustomPolicy-1", # Name of the Custom Policy to include in the initiative
    "CustomPolicy-x"  # Name of the Custom Policy to include in the initiative
  ]
}
```

3. **Create the Policy Definition**: The `definition.tf` file contains the code for creating custom policy definitions. It creates Policy definition for every JSON file placed in the `Lib` folder. By default, the policy definition is created at the Management Group level. If the argument `management_group_id` is omitted, it defaults to current Subscription:
```hcl
module "create_policy_definition" {
  for_each            = local.policy_definition_files
  source              = "../../../modules/policies/policy-definition"
  file_path           = each.value
  management_group_id = data.azurerm_management_group.mg.id # Comment out if not creating at Management Group level
}
```

### 4. Create Initiative Definition

1. **Identify the Policies**: Make a list of Built-in and Custom Policies to add to the Initiative.
2. **Update the `variable.tf` File**: Add the built-in and custom policies' `name` property values to the "builtin_policies" and "custom_policies" variables:

```hcl
# List of built-in policies to be used in intiative
variable "builtin_policies" {
  type        = set(string)
  description = "List of IDs of built-in policies"
  default = [
    #ToDo Add the Built-in policy. Refer to the "name" property in Policy Definition JSON in Azure
    "1234abcd-xxxx-xxxx-xxxx-xxxxxxxxxxxx", #Azure Built-in Policy-1
    "5678efgh-xxxx-xxxx-xxxx-xxxxxxxxxxxx"  #Azure Built-in Policy-2
  ]
}

# List of custom policies to be used in intiative
variable "custom_policies" {
  type        = set(string)
  description = "List of custom policies"
  default = [
    #ToDo Add the Custom policy. Refer to the "name" property in Policy Definition JSON in 'Lib' Folder
    CustomPolicy-1, #Name of the Custom Policy to include in the initiative
    CustomPolicy-x  #Name of the Custom Policy to include in the initiative
  ]
}
```

3. **Create the Initiative**: The `definition.tf` file contains the code for creating custom policy definitions. By default, the policy definition is created at the Management Group level. If the argument `management_group_id` is omitted, it defaults to current Subscription:

```hcl
module "create_initiative" {
  source                  = "../../../modules/policies/policy-set-definition"
  initiative_name         = local.policy_initiative
  initiative_display_name = local.policy_initiative
  initiative_description  = "Policies related to <Sub-category name> under the <Security category name>" #ToDo Add Description
  initiative_category     = local.policy_initiative
  management_group_id     = data.azurerm_management_group.mg.id # ToDo Comment this line if Initiative is **Not** to be created at Management Group level
  merge_effects           = false
  merge_parameters        = false
  member_definitions = merge(
    data.azurerm_policy_definition.builtinpolicies,
    data.azurerm_policy_definition.custompolicies
  )
  depends_on = [module.create_policy_definition]
}
```

### 5. Initiative Assignment

1. **Update the `variable.tf` File**: Add the Initiative's Policy parameter value in the "assignment_parameters" variable. The Policy parameter is defined in the policy definition.

```hcl
# Parameters to be used during initiative assignment
variable "assignment_parameters" {
  description = "assignment parameter value for policy assignment"
  default = {
    #ToDo Add the parameters value to be used during assignment. Can be skipped if using the default value defined in the policy definition.
    #Format: parameterID = parameterValue where parameterID is {parameter_name}_{policy_reference_id} 

    parameter1_name_for_policy-1_1234abcdxxxxxxxxxxxxxxxxxxxxxxxx = "<<Provide parameter value>>"
    parameterx_name_for_policy-1_1234abcdxxxxxxxxxxxxxxxxxxxxxxxx = "<<Provide parameter value>>"

    parameter1_name_for_policy-2_5678efghxxxxxxxxxxxxxxxxxxxxxxxx = "<<Provide parameter value>>"
    parameterx_name_for_policy-2_5678efghxxxxxxxxxxxxxxxxxxxxxxxx = "<<Provide parameter value>>"

    parameter1_name_for_CustomPolicy1 = "<<Provide parameter value>>"
    parameterx_name_for_CustomPolicy1 = "<<Provide parameter value>>"

    parameter1_name_for_CustomPolicyx = "<<Provide parameter value>>"
    parameterx_name_for_CustomPolicyx = "<<Provide parameter value>>"
  }
}
```

2. **Initiative Assignment**: The `assignment.tf` file contains the code for creating Initiative assignment. Assignment can be done at Management group, Subscription, Resource group scope.

- Code for creating assignment at Management Group level:

```hcl
module "managementgroup_assignment" {
  source                  = "../../../modules/policies/management-group-policy-assignment"
  initiative              = data.azurerm_policy_set_definition.Initiative-name
  assignment_name         = format("%s-%s", "<<Management-Group-Id>>-MG", local.policy_initiative)
  assignment_display_name = format("%s-%s", "<<Management-Group-Id>>-MG", local.policy_initiative)
  assignment_scope        = data.azurerm_management_group.mg.id
  assignment_parameters   = var.assignment_parameters
  policy_exceptions       = var.policy_exceptions #ToDo Optional. Comment this line if not intending to use.
}
```

- Code for creating assignment at Subscription level:

```hcl
module "subscription_assignment" {
  source                  = "../../../modules/policies/subscription-policy-assignment"
  initiative              = data.azurerm_policy_set_definition.Initiative-name
  assignment_scope        = data.azurerm_subscription.current.id
  assignment_parameters   = var.assignment_parameters
  assignment_name         = format("%s-%s", data.azurerm_subscription.current.display_name, local.policy_initiative)
  assignment_display_name = format("%s-%s", data.azurerm_subscription.current.display_name, local.policy_initiative)
}
```
- Code for creating assignment at Resource Group level:

```hcl
module "resourcegroup_assignment" {
  source                  = "../../../modules/policies/resource-group-policy-assignment"
  initiative              = data.azurerm_policy_set_definition.Initiative-name
  assignment_name         = format("%s-%s", data.azurerm_resource_group.rg, local.policy_initiative)
  assignment_display_name = format("%s-%s", data.azurerm_resource_group.rg, local.policy_initiative)
  assignment_scope        = data.azurerm_management_group.mg
  assignment_parameters   = var.assignment_parameters
}
```
