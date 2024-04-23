# List of built-in policies to be used in intiative
variable "builtin_policies" {
  # set rather than list because these don't seem to be in
  # any significant order; we're just using them for instance
  # identifiers.
  type        = set(string)
  description = "List of IDs of built-in policies"
  default = [
    "32ade945-311e-4249-b8a4-a549924234d7", #Linux virtual machine scale sets should have Azure Monitor Agent installed
    "1afdc4b6-581a-45fb-b630-f1e6051e3e7a", #Linux virtual machines should have Azure Monitor Agent installed
    "3672e6f7-a74d-4763-b138-fcf332042f8f", #Windows virtual machine scale sets should have Azure Monitor Agent installed
    "c02729e5-e5e7-4458-97fa-2b5ad0661f28"  #Windows virtual machines should have Azure Monitor Agent installed
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
    effect_32ade945311e4249b8a4a549924234d7                      = "AuditIfNotExists"
    scopeToSupportedImages_32ade945311e4249b8a4a549924234d7      = true
    listOfLinuxImageIdToInclude_32ade945311e4249b8a4a549924234d7 = []

    effect_1afdc4b6581a45fbb630f1e6051e3e7a                      = "AuditIfNotExists"
    scopeToSupportedImages_1afdc4b6581a45fbb630f1e6051e3e7a      = true
    listOfLinuxImageIdToInclude_1afdc4b6581a45fbb630f1e6051e3e7a = []

    effect_3672e6f7a74d4763b138fcf332042f8f                        = "AuditIfNotExists"
    scopeToSupportedImages_3672e6f7a74d4763b138fcf332042f8f        = true
    listOfWindowsImageIdToInclude_3672e6f7a74d4763b138fcf332042f8f = []

    effect_c02729e5e5e7445897fa2b5ad0661f28                        = "AuditIfNotExists"
    scopeToSupportedImages_c02729e5e5e7445897fa2b5ad0661f28        = true
    listOfWindowsImageIdToInclude_c02729e5e5e7445897fa2b5ad0661f28 = []
  }
}