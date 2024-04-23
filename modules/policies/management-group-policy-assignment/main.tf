resource "azurerm_management_group_policy_assignment" "set" {
  count                = local.assignment_scope.mg
  name                 = local.assignment_name
  display_name         = local.display_name
  description          = local.description
  metadata             = local.metadata
  parameters           = local.parameters
  management_group_id  = var.assignment_scope
  not_scopes           = var.assignment_not_scopes
  enforce              = var.assignment_enforcement_mode
  policy_definition_id = var.initiative.id
  location             = var.assignment_location

  dynamic "non_compliance_message" {
    for_each = local.non_compliance_message
    content {
      content                        = non_compliance_message.value
      policy_definition_reference_id = non_compliance_message.key == "null" ? null : non_compliance_message.key
    }
  }

  dynamic "identity" {
    for_each = local.identity_type
    content {
      type         = identity.value
      identity_ids = []
    }
  }
}

resource "azapi_resource" "mg_policy_exemption" {
  type      = "Microsoft.Authorization/policyExemptions@2022-07-01-preview"
  for_each  = coalesce(var.policy_exceptions, {})
  name      = each.key
  parent_id = lookup(each.value, "exception_resource_id", null)
  body = jsonencode({
    properties = {
      assignmentScopeValidation    = "Default"
      description                  = lookup(each.value, "description", null)
      displayName                  = lookup(each.value, "display_name", null)
      exemptionCategory            = "Waiver"
      expiresOn                    = lookup(each.value, "expiration_date", null)
      policyAssignmentId           = azurerm_management_group_policy_assignment.set[0].id
      policyDefinitionReferenceIds = tolist(var.policy_exceptions[each.key].policy_reference_ids)
    }
  })
  depends_on = [
    azurerm_management_group_policy_assignment.set
  ]
}
