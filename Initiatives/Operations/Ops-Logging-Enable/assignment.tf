module "subscription_assignment" {
  source                  = "../../../modules/policies/subscription-policy-assignment"
  initiative              = data.azurerm_policy_set_definition.Ops-Logging-Enable
  assignment_scope        = data.azurerm_subscription.current.id
  assignment_parameters   = var.assignment_parameters
  assignment_name         = format("%s-%s", local.policy_initiative, data.azurerm_subscription.current.display_name)
  assignment_display_name = format("%s-%s", local.policy_initiative, data.azurerm_subscription.current.display_name)
  role_definition_ids = [
    data.azurerm_role_definition.sql_security_manager.id,
    data.azurerm_role_definition.contributor.id,
    data.azurerm_role_definition.monitoring_contributor.id,
    data.azurerm_role_definition.log_analytics_contributor.id
  ]
}

# module "resource_group_assignment" {
#   source                  = "../../../modules/policies/resource-group-policy-assignment"
#   initiative              = data.azurerm_policy_set_definition.Ops-Logging-Enable
#   assignment_scope        = data.azurerm_resource_group.RG_Policy_Assignment.id
#   assignment_parameters   = var.assignment_parameters
#   assignment_name         = "Ops-Logging-Enable-RG"
#   assignment_display_name = "Ops-Logging-Enable-RG"
# }