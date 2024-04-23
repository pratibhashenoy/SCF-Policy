################## Create Policy Definition for Custom Policies ######################

# Module to create custom policy definitions from the JSON files in 'Lib' Folder
module "create_policy_definition" {
  for_each            = local.policy_definition_files
  source              = "../../../modules/policies/policy-definition"
  file_path           = each.value
  management_group_id = data.azurerm_management_group.mg.id # ToDo Comment this line if Policy is **Not** to be created at Management Group level
}


############## Create Initiative ############

# Module to create Initiative by grouping the built-in + custom policy definitions
module "create_initiative" {
  source                  = "../../../modules/policies/policy-set-definition"
  initiative_name         = local.policy_initiative
  initiative_display_name = local.policy_initiative
  initiative_description  = "Policies related to VNet Integration/Injection under the Network" #ToDo Add Description
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
