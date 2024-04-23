#Module to create assignment at Management scope
# module "managementgroup_assignment" {
#   source                  = "../../../modules/policies/management-group-policy-assignment"
#   initiative              = data.azurerm_policy_set_definition.Initiative-name
#   assignment_name         = format("%s-%s", data.azurerm_management_group.mg.name, local.policy_initiative)
#   assignment_display_name = format("%s-%s", data.azurerm_management_group.mg.name, local.policy_initiative)
#   assignment_scope        = data.azurerm_management_group.mg.id
#   assignment_parameters   = var.assignment_parameters
# }

# #Module to create assignment at Subscription scope
module "subscription_assignment" {
  source                  = "../../../modules/policies/subscription-policy-assignment"
  initiative              = data.azurerm_policy_set_definition.Initiative-name
  assignment_scope        = data.azurerm_subscription.current.id
  assignment_parameters   = var.assignment_parameters
  assignment_name         = format("%s-%s", data.azurerm_subscription.current.display_name, local.policy_initiative)
  assignment_display_name = format("%s-%s", data.azurerm_subscription.current.display_name, local.policy_initiative)
}


# #Module to create assignment at Resource group scope
# module "resourcegroup_assignment" {
#   source                  = "../../../modules/policies/resource-group-policy-assignment"
#   initiative              = data.azurerm_policy_set_definition.Initiative-name
#   assignment_name         = format("%s-%s", data.azurerm_resource_group.rg, local.policy_initiative)
#   assignment_display_name = format("%s-%s", data.azurerm_resource_group.rg, local.policy_initiative)
#   assignment_scope        = data.azurerm_management_group.mg
#   assignment_parameters   = var.assignment_parameters
# }