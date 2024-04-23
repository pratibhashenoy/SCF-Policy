locals {
  file_path_prefix        = "Lib/"
  policy_definition_files = fileset(path.module, format("%s/%s", local.file_path_prefix, "*.json"))
  policy_initiative = "Ops-Alerting-Audit"
 }

# To provide Policy Definition location as <<Management-Group-Id>> Management Group

data "azurerm_management_group" "mg" {
  name = "<<Management-Group-Id>>" # Management Group ID
}

data "azurerm_policy_definition" "builtinpolicies" {
  for_each = var.builtin_policies
  name     = each.key
}

data "azurerm_policy_definition" "custompolicies" {
  for_each = var.custom_policies
  name = each.value
  depends_on = [
    module.create_policy_definition
  ]
  management_group_name = data.azurerm_management_group.mg.name
}

data "azurerm_subscription" "current" {
  subscription_id = "<<Subscription-Id>>" # Subscription ID for assignment
}


data "azurerm_policy_set_definition" "Ops-Alerting-Audit" {
  name                  = local.policy_initiative
  management_group_name = data.azurerm_management_group.mg.name
  depends_on = [ module.create_initiative_Ops_Alerting_Audit]
}