# List of built-in policies to be used in intiative
variable "builtin_policies" {
  type        = set(string)
  description = "List of IDs of built-in policies"
  default = [
    #ToDo Add the Built-in policy. Refer to the "name" property in Policy Definition JSON in Azure
    "1234abcd-xxxx-xxxx-xxxx-xxxxxxxxxxxx", #Azure Built-in Policy-1
    "5678efgh-xxxx-xxxx-xxxx-xxxxxxxxxxxx"  #Azure Built-in Policy-2
  ]
}

# List of custom policies to be used in intiative
variable "custom_policies" {
  type        = set(string)
  description = "List of custom policies"
  default = [
    #ToDo Add the Custom policy. Refer to the "name" property in Policy Definition JSON in 'Lib' Folder
    CustomPolicy-1, #Name of the Custom Policy to include in the initiative
    CustomPolicy-x  #Name of the Custom Policy to include in the initiative
  ]
}

# Parameters to be used during initiative assignment
variable "assignment_parameters" {
  description = "assignment parameter value for policy assignment"
  default = {
    #ToDo Add the parameters value to be used during assignment. Can be skipped if using the default value defined in the policy definition.
    #Format: parameterID = parameterValue where parameterID is {parameter_name}_{policy_reference_id}

    parameter1_name_for_policy-1_1234abcdxxxxxxxxxxxxxxxxxxxxxxxx = "<<Provide parameter value>>"
    parameterx_name_for_policy-1_1234abcdxxxxxxxxxxxxxxxxxxxxxxxx = "<<Provide parameter value>>"

    parameter1_name_for_policy-2_5678efghxxxxxxxxxxxxxxxxxxxxxxxx = "<<Provide parameter value>>"
    parameterx_name_for_policy-2_5678efghxxxxxxxxxxxxxxxxxxxxxxxx = "<<Provide parameter value>>"

    parameter1_name_for_CustomPolicy1 = "<<Provide parameter value>>"
    parameterx_name_for_CustomPolicy1 = "<<Provide parameter value>>"

    parameter1_name_for_CustomPolicyx = "<<Provide parameter value>>"
    parameterx_name_for_CustomPolicyx = "<<Provide parameter value>>"
  }
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
  default = {
    "<Provide a name for policy exception>" = {
      exception_resource_id = "/subscriptions/acd4eadd-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
      description           = "Exception provided for <provide subscription name> subscription"
      display_name          = "<Provide a display name>"
      expiration_date       = null
      policy_reference_ids = [
        # List of Policy reference IDs that needs to be added to this exception
      ]
    }
  }
}