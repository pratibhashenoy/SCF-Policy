################## Create Policy Definition for Custom Policies ######################

module "create_policy_definition" {
  for_each  = local.policy_definition_files
  source    = "../../../modules/policies/policy-definition"
  file_path = each.value
  management_group_id = data.azurerm_management_group.mg.id
}


############## Create Ops-Management Initiative ############

module "create_initiative_Ops_Cost_Management_Enable" {
  source                  = "../../../modules/policies/policy-set-definition"
  initiative_name         = "Ops-Cost-Management-Enable"
  initiative_display_name = "Ops-Cost-Management-Enable"
  initiative_description  = "Policies related to Operations Cost Management Enable subcategory"
  initiative_category     = "Ops-Cost-Management-Enable"
  management_group_id     = data.azurerm_management_group.mg.id
  merge_effects    = false
  merge_parameters = false
  member_definitions = merge(
    data.azurerm_policy_definition.builtinpolicies,
    data.azurerm_policy_definition.custompolicies
  )
  depends_on = [module.create_policy_definition]
}
