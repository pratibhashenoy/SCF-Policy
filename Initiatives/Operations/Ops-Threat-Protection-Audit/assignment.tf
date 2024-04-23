module "subscription_assignment" {
  source                  = "../../../modules/policies/subscription-policy-assignment"
  initiative              = data.azurerm_policy_set_definition.Ops-Threat-Protection-Audit
  assignment_scope        = data.azurerm_subscription.current.id
  assignment_parameters   = var.assignment_parameters
  assignment_name         = format("%s-%s", local.policy_initiative, data.azurerm_subscription.current.display_name)
  assignment_display_name = format("%s-%s", local.policy_initiative, data.azurerm_subscription.current.display_name)
}