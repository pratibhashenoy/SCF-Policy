################## Create Policy Definition for Custom Policies ######################

module "create_policy_definition" {
  for_each  = local.policy_definition_files
  source    = "../../../modules/policies/policy-definition"
  file_path = each.value
  management_group_id = data.azurerm_management_group.mg.id
}


############## Create Ops-Monitoring-Enable Initiative ############

module "create_initiative_Ops_Monitoring_Enable" {
  source                  = "../../../modules/policies/policy-set-definition"
  initiative_name         = "Ops-Monitoring-Enable"
  initiative_display_name = "Ops-Monitoring-Enable"
  initiative_description  = "Policies related to Operations Monitoring Enable subcategory"
  initiative_category     = "Ops-Monitoring-Enable"
  management_group_id     = data.azurerm_management_group.mg.id
  merge_effects    = false
  merge_parameters = false
  member_definitions = merge(
    data.azurerm_policy_definition.builtinpolicies,
    data.azurerm_policy_definition.custompolicies
  )
  depends_on = [module.create_policy_definition]
}
