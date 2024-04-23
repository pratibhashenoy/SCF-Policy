# List of built-in policies to be used in intiative
variable "builtin_policies" {
  type        = set(string)
  description = "List of IDs of built-in policies"
  default = [
    #ToDo Add the Built-in policy. Refer to the "name" property in Policy Definition JSON in Azure
    "0a075868-4c26-42ef-914c-5bc007359560", #Certificates should have the specified maximum validity period
    "44c5a1f9-7ef6-4c38-880c-273e8f7a3c24", #[Preview]: Cosmos Database Accounts should be Zone Redundant
    "2514263b-bc0d-4b06-ac3e-f262c0979018", #[Preview]: Immutability must be enabled for backup vaults
    "d6f6f560-14b7-49a4-9fc8-d2c3a9807868", #[Preview]: Immutability must be enabled for Recovery Services vaults
    "31b8092a-36b8-434b-9af7-5ec844364148", #[Preview]: Soft delete must be enabled for Recovery Services Vaults.
    "9798d31d-6028-4dee-8643-46102185c016", #[Preview]: Soft delete should be enabled for Backup Vaults
    "85b005b2-95fc-4953-b9cb-f9ee6427c754", #[Preview]: Storage Accounts should be Zone Redundant
    "0015ea4d-51ff-4ce3-8d8c-f3f8f0179a56", #Audit virtual machines without disaster recovery configured
    "013e242c-8828-4970-87b3-ab247555486d", #Azure Backup should be enabled for Virtual Machines
    "bf045164-79ba-4215-8f95-f8048dc1780b", #Geo-redundant storage should be enabled for Storage Accounts
    "0b60c0b2-2dc2-4e1c-b5c9-abbed971de53", #Key vaults should have deletion protection enabled
  ]
}

# List of custom policies to be used in intiative
variable "custom_policies" {
  type        = set(string)
  description = "List of custom policies"
  default = [
    #ToDo Add the Custom policy. Refer to the "name" property in Policy Definition JSON in 'Lib' Folder
    # No custom policies available for this initiative
  ]
}

# Parameters to be used during initiative assignment
variable "assignment_parameters" {
  description = "assignment parameter value for policy assignment"
  default = {
    #ToDo Add the parameters value to be used during assignment. Can be skipped if using the default value defined in the policy definition.
    #Format: parameterID = parameterValue where parameterID is {parameter_name}_{policy_reference_id}

    #Certificates should have the specified maximum validity period
    maximumValidityInMonths_0a0758684c2642ef914c5bc007359560 = 12
    effect_0a0758684c2642ef914c5bc007359560                  = "Audit"

    #[Preview]: Cosmos Database Accounts should be Zone Redundant
    effect_44c5a1f97ef64c38880c273e8f7a3c24 = "Audit"

    #[Preview]: Immutability must be enabled for backup vaults
    effect_2514263bbc0d4b06ac3ef262c0979018                     = "Audit"
    checkLockedImmutabiltyOnly_2514263bbc0d4b06ac3ef262c0979018 = true

    #[Preview]: Immutability must be enabled for Recovery Services vaults
    effect_d6f6f56014b749a49fc8d2c3a9807868                     = "Audit"
    checkLockedImmutabilityOnly_d6f6f56014b749a49fc8d2c3a9807868 = true

    #[Preview]: Soft delete must be enabled for Recovery Services Vaults.
    effect_31b8092a36b8434b9af75ec844364148                      = "Audit"
    checkAlwaysOnSoftDeleteOnly_31b8092a36b8434b9af75ec844364148 = true

    #[Preview]: Soft delete should be enabled for Backup Vaults
    effect_9798d31d60284dee864346102185c016                      = "Audit"
    checkAlwaysOnSoftDeleteOnly_9798d31d60284dee864346102185c016 = true

    #[Preview]: Storage Accounts should be Zone Redundant
    effect_85b005b295fc4953b9cbf9ee6427c754 = "Audit"

    #Azure Backup should be enabled for Virtual Machines
    effect_013e242c8828497087b3ab247555486d = "AuditIfNotExists"

    #Geo-redundant storage should be enabled for Storage Accounts
    effect_bf04516479ba42158f95f8048dc1780b = "Audit"

    #Key vaults should have deletion protection enabled
    effect_0b60c0b22dc24e1cb5c9abbed971de53 = "Audit"

  }
}
