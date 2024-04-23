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
