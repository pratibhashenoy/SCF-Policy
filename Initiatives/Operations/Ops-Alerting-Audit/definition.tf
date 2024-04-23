################## Create Policy Definition for Custom Policies ######################

module "create_policy_definition" {
  for_each            = local.policy_definition_files
  source              = "../../../modules/policies/policy-definition"
  file_path           = each.value
  management_group_id = data.azurerm_management_group.mg.id
}


############## Create Ops-Alerting-Audit Initiative ############

module "create_initiative_Ops_Alerting_Audit" {
  source                  = "../../../modules/policies/policy-set-definition"
  initiative_name         = "Ops-Alerting-Audit"
  initiative_display_name = "Ops-Alerting-Audit"
  initiative_description  = "Policies related to Operations Alerting Audit subcategory"
  initiative_category     = "Ops-Alerting-Audit"
  management_group_id     = data.azurerm_management_group.mg.id
  merge_effects           = false
  merge_parameters        = false
  member_definitions      = merge ( 
    data.azurerm_policy_definition.builtinpolicies,
    data.azurerm_policy_definition.custompolicies
  )
  depends_on = [ module.create_policy_definition ]
}
