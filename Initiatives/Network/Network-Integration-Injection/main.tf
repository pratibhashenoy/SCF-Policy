# Local Variables
locals {
  file_path_prefix        = "Lib/"
  policy_definition_files = fileset(path.module, format("%s/%s", local.file_path_prefix, "*.json"))
  policy_initiative       = "Network-Integration-Injection" # ToDo Enter Initiative Name
}

# To retrieve management group data for policy-definition module and management-group-policy-assignment module
data "azurerm_management_group" "mg" {
  name = "<<Management-Group-Id>>" # Management Group ID
}

# To retrieve built-in policies as definied in the variable "builtin_policies" in variables.tf file
data "azurerm_policy_definition" "builtinpolicies" {
  for_each = var.builtin_policies
  name     = each.key
}

# To retrieve custom poliices as defined in the variable "custom_policies" in variables.tf file
data "azurerm_policy_definition" "custompolicies" {
  for_each = var.custom_policies
  name     = each.value
  depends_on = [
    module.create_policy_definition
  ]
  management_group_name = data.azurerm_management_group.mg.name #ToDo Comment this line if Policy **Not** defined at Management Group level 
}

# To retrieve subscription data for subscription-group-policy-assignment module
data "azurerm_subscription" "current" {
  subscription_id = "<<Subscription-Id>>" # ToDo Provide the Subscription ID
}

# To retrieve resource group data for resource-group-policy-assignment module
# data "azurerm_resource_group" "rg" {
#   name = "Existing-RG-Name" # ToDo Provide the Resource Group Name
# }

# To retrieve the initiative data for assignment at various scope
data "azurerm_policy_set_definition" "Initiative-name" {
  name                  = local.policy_initiative
  management_group_name = data.azurerm_management_group.mg.name #ToDo Comment this line if Initiative **Not** defined at Management Group level 
  depends_on            = [module.create_initiative]
}