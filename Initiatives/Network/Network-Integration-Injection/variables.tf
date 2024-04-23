# List of built-in policies to be used in intiative
variable "builtin_policies" {
  type        = set(string)
  description = "List of IDs of built-in policies"
  default = [
    #ToDo Add the Built-in policy. Refer to the "name" property in Policy Definition JSON in Azure
    "73ef9241-5d81-4cd4-b483-8443d1730fe5", #API Management service should use a SKU that supports virtual networks
    "ef619a2c-cc4d-4d03-b2ba-8c94a834d85b", #API Management services should use a virtual network
    "24b7a1c6-44fe-40cc-a2e6-242d2ef70e98", #App Service app slots should be injected into a virtual network
    "72d04c29-f87d-4575-9731-419ff16a2757", #App Service apps should be injected into a virtual network
    "9c25c9e4-ee12-4882-afd2-11fb9d87893f" #Azure Databricks Workspaces should be in a virtual network
  ]
}

# List of custom policies to be used in intiative
variable "custom_policies" {
  type        = set(string)
  description = "List of custom policies"
  default = [
    #ToDo Add the Custom policy. Refer to the "name" property in Policy Definition JSON in 'Lib' Folder
  ]
}

# Parameters to be used during initiative assignment
variable "assignment_parameters" {
  description = "assignment parameter value for policy assignment"
  default = {
    #ToDo Add the parameters value to be used during assignment. Can be skipped if using the default value defined in the policy definition.
    #Format: parameterID = parameterValue where parameterID is {parameter_name}_{policy_reference_id}

    #API Management service should use a SKU that supports virtual networks
    effect_73ef92415d814cd4b4838443d1730fe5 = "Audit"

    #API Management services should use a virtual network
    effect_ef619a2ccc4d4d03b2ba8c94a834d85b = "Audit"
    evaluatedSkuNames_ef619a2ccc4d4d03b2ba8c94a834d85b = [ "Developer", "Premium" ]

    #App Service app slots should be injected into a virtual network
    effect_24b7a1c644fe40cca2e6242d2ef70e98 = "Audit"

    #App Service apps should be injected into a virtual network
    effect_72d04c29f87d45759731419ff16a2757 = "Audit"

    #Azure Databricks Workspaces should be in a virtual network
    effect_9c25c9e4ee124882afd211fb9d87893f = "Audit"
  }
}
