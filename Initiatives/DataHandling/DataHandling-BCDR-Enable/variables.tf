# List of built-in policies to be used in intiative
variable "builtin_policies" {
  type        = set(string)
  description = "List of IDs of built-in policies"
  default = [
    #ToDo Add the Built-in policy. Refer to the "name" property in Policy Definition JSON in Azure
    "f19b0c83-716f-4b81-85e3-2dbf057c35d6", #[Preview]: Disable Cross Subscription Restore for Azure Recovery Services vaults
    "4d479a11-f2b5-4f0a-bb1e-d2332aa95cda", #[Preview]: Disable Cross Subscription Restore for Backup Vaults
    "09ce66bc-1220-4153-8104-e3f51c936913", #Configure backup on virtual machines without a given tag to an existing recovery services vault in the same location
    "345fa903-145c-4fe1-8bcd-93ec2adccde8", #Configure backup on virtual machines with a given tag to an existing recovery services vault in the same location
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

    #[Preview]: Disable Cross Subscription Restore for Azure Recovery Services vaults
    effect_f19b0c83716f4b8185e32dbf057c35d6                                 = "Modify"
    crossSubscriptionRestoreState_f19b0c83716f4b8185e32dbf057c35d6          = "Disable"
    crossSubscriptionRestoreStateParameter_f19b0c83716f4b8185e32dbf057c35d6 = "Disabled"

    #[Preview]: Disable Cross Subscription Restore for Backup Vaults
    effect_4d479a11f2b54f0abb1ed2332aa95cda                                 = "Modify"
    crossSubscriptionRestoreState_4d479a11f2b54f0abb1ed2332aa95cda          = "Disable"
    crossSubscriptionRestoreStateParameter_4d479a11f2b54f0abb1ed2332aa95cda = "Disabled"

    #Configure backup on virtual machines without a given tag to an existing recovery services vault in the same location
    # These are example values, update with actual values.
    vaultLocation_09ce66bc122041538104e3f51c936913     = "eastus2"
    backupPolicyId_09ce66bc122041538104e3f51c936913    = "/subscriptions/<SubscriptionId>/resourceGroups/<resourceGroupName>/providers/Microsoft.RecoveryServices/vaults/<VaultName>/backupPolicies/<BackupPolicyName>" #ToDo Update with actual values
    exclusionTagName_09ce66bc122041538104e3f51c936913  = ""
    exclusionTagValue_09ce66bc122041538104e3f51c936913 = []
    effect_09ce66bc122041538104e3f51c936913            = "DeployIfNotExists"

    #Configure backup on virtual machines with a given tag to an existing recovery services vault in the same location
    # These are example values, update with actual values.

    vaultLocation_345fa903145c4fe18bcd93ec2adccde8     = "eastus2"
    inclusionTagName_345fa903145c4fe18bcd93ec2adccde8  = ""
    inclusionTagValue_345fa903145c4fe18bcd93ec2adccde8 = []
    backupPolicyId_345fa903145c4fe18bcd93ec2adccde8    = "/subscriptions/<SubscriptionId>/resourceGroups/<resourceGroupName>/providers/Microsoft.RecoveryServices/vaults/<VaultName>/backupPolicies/<BackupPolicyName>" #ToDo Update with actual values
    effect_345fa903145c4fe18bcd93ec2adccde8            = "DeployIfNotExists"

  }
}