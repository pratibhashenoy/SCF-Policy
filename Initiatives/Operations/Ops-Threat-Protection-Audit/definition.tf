################## Create Policy Definition for Custom Policies ######################

module "create_policy_definition" {
  for_each  = local.policy_definition_files
  source    = "../../../modules/policies/policy-definition"
  file_path = each.value
  management_group_id = data.azurerm_management_group.mg.id
}


############## Create Ops-Threat-Protection-Audit Initiative ############

module "create_initiative_Ops_Threat_Protection_Audit" {
  source                  = "../../../modules/policies/policy-set-definition"
  initiative_name         = "Ops-TP-Audit"
  initiative_display_name = "Ops-TP-Audit"
  initiative_description  = "Policies related to Operations Threat-Protection-Audit subcategory"
  initiative_category     = "Ops-Threat-Protection-Audit"
  management_group_id     = data.azurerm_management_group.mg.id
  merge_effects    = false
  merge_parameters = false
  member_definitions = merge(
    data.azurerm_policy_definition.builtinpolicies,
    data.azurerm_policy_definition.custompolicies
  )
  depends_on = [module.create_policy_definition]
}
