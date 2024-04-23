variable "initiative" {
  type        = any
  description = "Policy Initiative resource node"
}

variable "assignment_scope" {
  type        = string
  description = "The scope at which the policy initiative will be assigned. Must be full resource IDs. Changing this forces a new resource to be created"
}

variable "assignment_not_scopes" {
  type        = list(any)
  description = "A list of the Policy Assignment's excluded scopes. Must be full resource IDs"
  default     = []
}

variable "assignment_name" {
  type        = string
  description = "The name which should be used for this Policy Assignment, defaults to initiative name. Changing this forces a new Policy Assignment to be created"
  default     = ""
}

variable "assignment_display_name" {
  type        = string
  description = "The policy assignment display name, defaults to initiative display_name. Changing this forces a new resource to be created"
  default     = ""
}

variable "assignment_description" {
  type        = string
  description = "A description to use for the Policy Assignment, defaults to initiative description. Changing this forces a new resource to be created"
  default     = ""
}

variable "assignment_effect" {
  type        = string
  description = "The effect of the policy. Changing this forces a new resource to be created"
  default     = null
}

variable "assignment_parameters" {
  type        = any
  description = "The policy assignment parameters. Changing this forces a new resource to be created"
  default     = null
}

variable "assignment_metadata" {
  type        = any
  description = "The optional metadata for the policy assignment."
  default     = null
}

variable "assignment_enforcement_mode" {
  type        = bool
  description = "Control whether the assignment is enforced"
  default     = true
}

variable "assignment_location" {
  type        = string
  description = "The Azure location where this policy assignment should exist, required when an Identity is assigned. Defaults to East US2. Changing this forces a new resource to be created"
  default     = "eastus2"
}

variable "non_compliance_messages" {
  type        = any
  description = "The optional non-compliance message(s). Key/Value pairs map as policy_definition_reference_id = 'content', use null = 'content' to specify the Default non-compliance message for all member definitions."
  default     = {}
}

variable "role_definition_ids" {
  type        = list(string)
  description = "List of Role definition ID's for the System Assigned Identity. Omit this to use those located in policy definitions. Changing this forces a new resource to be created"
  default     = []
}

locals {
  # assignment_name will be trimmed if exceeds 24 characters
  assignment_name = try(lower(substr(coalesce(var.assignment_name, var.initiative.name), 0, 24)), "")
  display_name    = try(coalesce(var.assignment_display_name, var.initiative.display_name), "")
  description     = try(coalesce(var.assignment_description, var.initiative.description), "")
  metadata        = jsonencode(try(coalesce(var.assignment_metadata, jsondecode(var.initiative.metadata)), {}))

  # evaluate policy assignment scope from resource identifier
  assignment_scope = try({
    mg       = length(regexall("(\\/managementGroups\\/)", var.assignment_scope)) > 0 ? 1 : 0,
    sub      = length(split("/", var.assignment_scope)) == 3 ? 1 : 0,
    rg       = length(regexall("(\\/managementGroups\\/)", var.assignment_scope)) < 1 ? length(split("/", var.assignment_scope)) == 5 ? 1 : 0 : 0,
    resource = length(split("/", var.assignment_scope)) >= 6 ? 1 : 0,
  })

  # convert assignment parameters to the required assignment structure
  parameter_values = var.assignment_parameters != null ? {
    for key, value in var.assignment_parameters :
    key => merge({ value = value })
  } : null

  # merge effect and parameter_values if specified, will use definition default effects if omitted
  parameters = local.parameter_values != null ? var.assignment_effect != null ? jsonencode(merge(local.parameter_values, { effect = { value = var.assignment_effect } })) : jsonencode(local.parameter_values) : null

  # create the optional non-compliance message content block(s) if present
  non_compliance_message = var.non_compliance_messages != {} ? {
    for reference_id, message in var.non_compliance_messages :
    reference_id => message
  } : {}

  # determine if a managed identity should be created with this assignment
  identity_type = length(try(coalescelist(var.role_definition_ids, try(var.initiative.role_definition_ids, [])), [])) > 0 ? { type = "SystemAssigned" } : {}

  # evaluate outputs
  assignment = try(
    azurerm_management_group_policy_assignment.set[0],
  "")
}

variable "policy_exceptions" {
  type = map(object({
    exception_resource_id = string       # Resource id of resouce which need exception
    description           = string       # A description for exception rule.
    display_name          = string       # Display name
    expiration_date       = string       # Expiration UTC datetime (Y-m-d'T'H:M:S'Z').
    policy_reference_ids  = list(string) # List of policy id which need to be exmpted 

  }))
  description = "List of policy execptions , as defined above."
  default     = {}
}
