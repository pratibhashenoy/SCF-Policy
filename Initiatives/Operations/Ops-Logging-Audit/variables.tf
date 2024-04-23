# List of built-in policies to be used in intiative
variable "builtin_policies" {
  # set rather than list because these don't seem to be in
  # any significant order; we're just using them for instance
  # identifiers.
  type        = set(string)
  description = "List of IDs of built-in policies"
  default = [
    "27960feb-a23c-4577-8d36-ef8b5f35e0be", #All flow log resources should be in enabled state
    "7f89b1eb-583c-429a-8828-af049802c1d9", #Audit diagnostic setting for selected resource types
    "8a04f872-51e9-4313-97fb-fc1c3543011c", #Azure Application Gateway should have Resource logs enabled
    "d550e854-df1a-4de9-bf44-cd894b39a95e", #Azure Monitor Logs for Application Insights should be linked to a Log Analytics workspace
    "7796937f-307b-4598-941c-67d3a05ebfe7", #Azure subscriptions should have a log profile for Activity Log
    "c251913d-7d24-4958-af87-478ed3b9ba41", #Flow logs should be configured for every network security group
    "4c3c6c5f-0d47-4402-99b8-aa543dd8bcee", #All flow log resources should be in enabled state
    "2f080164-9f4d-497e-9db6-416dc9f7b48a", #Network Watcher flow logs should have traffic analytics enabled
    "cf820ca0-f99e-4f3e-84fb-66e913812d21", #Resource logs in Key Vault should be enabled
  ]
}

# List of custom policies to be used in intiative
variable "custom_policies" {
  # set rather than list because these don't seem to be in
  # any significant order; we're just using them for instance
  # identifiers.
  type        = set(string)
  description = "List of custom policies"
  default     = []
}

# Parameters to be used during initiative assignment
variable "assignment_parameters" {
  description = "assignment parameter value for policy assignment"
  default = {
    effect_27960feba23c45778d36ef8b5f35e0be                = "Audit"
    listOfResourceTypes_7f89b1eb583c429a8828af049802c1d9   = ["microsoft.storage/storageaccounts", "microsoft.keyvault/vaults"]
    logsEnabled_7f89b1eb583c429a8828af049802c1d9           = true
    metricsEnabled_7f89b1eb583c429a8828af049802c1d9        = true
    effect_8a04f87251e9431397fbfc1c3543011c                = "AuditIfNotExists"
    effect_d550e854df1a4de9bf44cd894b39a95e                = "Audit"
    effect_7796937f307b4598941c67d3a05ebfe7                = "AuditIfNotExists"
    effect_c251913d7d244958af87478ed3b9ba41                = "Audit"
    effect_4c3c6c5f0d47440299b8aa543dd8bcee                = "Audit"
    effect_2f0801649f4d497e9db6416dc9f7b48a                = "Audit"
    effect_cf820ca0f99e4f3e84fb66e913812d21                = "AuditIfNotExists"
    requiredRetentionDays_cf820ca0f99e4f3e84fb66e913812d21 = "365"
  }
}