output id {
  description = "The Policy Assignment Id"
  value       = local.assignment.id
}

output principal_id {
  description = "The Principal Id of this Policy Assignment's Managed Identity if type is SystemAssigned"
  value       = try(local.assignment.identity[0].principal_id, null)
}

output definition_references {
  description = "The Member Definition Reference Ids"
  value       = try(var.initiative.policy_definition_reference, [])
}
