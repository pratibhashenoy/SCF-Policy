# List of built-in policies to be used in intiative
variable "builtin_policies" {
  # set rather than list because these don't seem to be in
  # any significant order; we're just using them for instance
  # identifiers.
  type = set(string)
  description = "List of IDs of built-in policies"
  default = [ 
    "b954148f-4c11-4c38-8221-be76711e194a", # An activity log alert should exist for specific Administrative operations
    "26ee67a2-f81a-4ba8-b9ce-8550bd5ee1a7", # Metric alert rules should be configured on Batch accounts
  ]
}

# List of custom policies to be used in intiative
variable "custom_policies" {
  # set rather than list because these don't seem to be in
  # any significant order; we're just using them for instance
  # identifiers.
  type = set(string)
  description = "List of custom policies"
  default = []
}

# Parameters to be used during initiative assignment
variable "assignment_parameters" {
  description = "assignment parameter value for policy assignment"
  default = {
    effect_b954148f4c114c388221be76711e194a = "AuditIfNotExists"
    operationName_b954148f4c114c388221be76711e194a = "Microsoft.Network/networkSecurityGroups/write" # ToDo Change teh OperationName as neded
    effect_26ee67a2f81a4ba8b9ce8550bd5ee1a7 = "AuditIfNotExists"
    metricName_26ee67a2f81a4ba8b9ce8550bd5ee1a7 = "IdleNodeCount" #ToDo Provide Metric Name as Input
  }
}