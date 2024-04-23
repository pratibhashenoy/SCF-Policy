# List of built-in policies to be used in intiative
variable "builtin_policies" {
  type        = set(string)
  description = "List of IDs of built-in policies"
  default = [
    #ToDo Add the Built-in policy. Refer to the "name" property in Policy Definition JSON in Azure
    "f1cc7827-022c-473e-836e-5a51cae0b249", #API Management secret named values should be stored in Azure Key Vault
    "127ef6d7-242f-43b3-9eef-947faf1725d0", #Azure Data Factory linked services should use Key Vault for storing secrets
    "d8cf8476-a2ec-4916-896e-992351803c44", #Keys should have a rotation policy ensuring that their rotation is scheduled within the specified number of days after creation.
    "044985bb-afe1-42cd-8a36-9d5d42424537"  #Storage account keys should not be expired
  ]
}

# List of custom policies to be used in intiative
variable "custom_policies" {
  type        = set(string)
  description = "List of custom policies"
  default     = []
}

# Parameters to be used during initiative assignment
variable "assignment_parameters" {
  description = "assignment parameter value for policy assignment"
  default = {
    #ToDo Add the parameters value to be used during assignment. Can be skipped if using the default value defined in the policy definition.
    #Format: parameterID = parameterValue where parameterID is {parameter_name}_{policy_reference_id}

    #API Management secret named values should be stored in Azure Key Vault
    effect_f1cc7827022c473e836e5a51cae0b249 = "Audit"

    #Azure Data Factory linked services should use Key Vault for storing secrets
    effect_127ef6d7242f43b39eef947faf1725d0 = "Audit"

    #Keys should have a rotation policy ensuring that their rotation is scheduled within the specified number of days after creation.
    effect_d8cf8476a2ec4916896e992351803c44              = "Audit"
    maximumDaysToRotate_d8cf8476a2ec4916896e992351803c44 = 90

    #Storage account keys should not be expired
    effect_044985bbafe142cd8a369d5d42424537 = "Audit"

  }
}