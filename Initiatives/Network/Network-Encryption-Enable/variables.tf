# List of built-in policies to be used in intiative
variable "builtin_policies" {
  type        = set(string)
  description = "List of IDs of built-in policies"
  default = [
    #ToDo Add the Built-in policy. Refer to the "name" property in Policy Definition JSON in Azure
    "014664e7-e348-41a3-aeb9-566e4ff6a9df", #Configure App Service app slots to use the latest TLS version
    "8b5c654c-fb07-471b-aa8f-15fea733f140", #Configure Azure Synapse Workspace Dedicated SQL minimum TLS version
    "08cf2974-d178-48a0-b26d-f6b8e555748b", #Configure Function app slots to only be accessible over HTTPS
    "fa3a6357-c6d6-4120-8429-855577ec0063", #Configure Function app slots to use the latest TLS version
    "a096cbd0-4693-432f-9374-682f485f23f3", #Configure Function apps to only be accessible over HTTPS
    "828ba269-bf7f-4082-83dd-633417bc391d", #Configure secure communication protocols(TLS 1.1 or TLS 1.2) on Windows machines
    "f81e3117-0093-4b17-8a60-82363134f0eb", #Configure secure transfer of data on a storage account
    "978deb5d-c9a7-41f8-b4b2-b76880d0de1f" #Modify - Configure your Storage account to enable blob versioning
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

    #Configure App Service app slots to use the latest TLS version
    effect_014664e7e34841a3aeb9566e4ff6a9df = "DeployIfNotExists"

    #Configure Azure Synapse Workspace Dedicated SQL minimum TLS version
    effect_8b5c654cfb07471baa8f15fea733f140 = "Modify"

    #Configure Function app slots to only be accessible over HTTPS
    effect_08cf2974d17848a0b26df6b8e555748b = "Modify"

    #Configure Function app slots to use the latest TLS version
    effect_fa3a6357c6d641208429855577ec0063 = "DeployIfNotExists"

    #Configure Function apps to only be accessible over HTTPS
    effect_a096cbd04693432f9374682f485f23f3 = "Modify"

    #Configure secure communication protocols(TLS 1.1 or TLS 1.2) on Windows machines
    IncludeArcMachines_828ba269bf7f408283dd633417bc391d = "false"
    MinimumServerTLSVersion_828ba269bf7f408283dd633417bc391d = "1.2"
    MinimumClientTLSVersion_828ba269bf7f408283dd633417bc391d = "1.2"
    effect_828ba269bf7f408283dd633417bc391d = "DeployIfNotExists"

    #Configure secure transfer of data on a storage account
    effect_f81e311700934b178a6082363134f0eb = "Modify"

    #Modify - Configure your Storage account to enable blob versioning
    effect_978deb5dc9a741f8b4b2b76880d0de1f = "Modify"


  }
}
