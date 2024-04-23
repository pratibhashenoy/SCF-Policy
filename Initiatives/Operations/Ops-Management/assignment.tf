
#Module to create assignment at Subscription scope
module "subscription_assignment" {
  source = "../../../modules/policies/subscription-policy-assignment"
  initiative = data.azurerm_policy_set_definition.Ops-Management
  assignment_scope = data.azurerm_subscription.current.id
  assignment_parameters = var.assignment_parameters
  assignment_name         = format("%s-%s", data.azurerm_subscription.current.display_name, local.policy_initiative)
 assignment_display_name = format("%s-%s", data.azurerm_subscription.current.display_name, local.policy_initiative)
  role_definition_ids = [
    data.azurerm_role_definition.contributor.id,
    data.azurerm_role_definition.monitoring_contributor.id,
    data.azurerm_role_definition.log_analytics_contributor.id
  ]
}