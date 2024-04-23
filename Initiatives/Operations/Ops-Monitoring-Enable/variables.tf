# List of built-in policies to be used in intiative
variable "builtin_policies" {
  # set rather than list because these don't seem to be in
  # any significant order; we're just using them for instance
  # identifiers.
  type        = set(string)
  description = "List of IDs of built-in policies"
  default = [
    "deacecc0-9f84-44d2-bb82-46f32d766d43", #Configure Dependency agent on Azure Arc enabled Linux servers
    "08a4470f-b26d-428d-97f4-7e3e9c92b366", #Configure Dependency agent on Azure Arc enabled Linux servers with Azure Monitoring Agent settings
    "91cb9edd-cd92-4d2f-b2f2-bdd8d065a3d4", #Configure Dependency agent on Azure Arc enabled Windows servers
    "84cfed75-dfd4-421b-93df-725b479d356a", #Configure Dependency agent on Azure Arc enabled Windows servers with Azure Monitoring Agent settings
    "845857af-0333-4c5d-bbbc-6076697da122", #Configure Linux Arc-enabled machines to run Azure Monitor Agent
    "94f686d6-9a24-4e19-91f1-de937dc171a4"  #Configure Windows Arc-enabled machines to run Azure Monitor Agent
  ]
}

# List of custom policies to be used in intiative
variable "custom_policies" {
  # set rather than list because these don't seem to be in
  # any significant order; we're just using them for instance
  # identifiers.
  type        = set(string)
  description = "List of custom policies"
  default = [
    #"ConfigureWindowsVMToBeAssociatedWithDCE" #, This is available in Ops-Management Initiative
    # "ConfigureLinuxArcToBeAssociatedWithDCE",
    # "ConfigureWindowsArcToBeAssociatedWithDCE",
    # "ConfigureWindowsVMToBeAssociatedWithDCRSentinel2-0"
  ]
}

# Parameters to be used during initiative assignment
variable "assignment_parameters" {
  description = "assignment parameter value for policy assignment"
  default = {

    effect_deacecc09f8444d2bb8246f32d766d43 = "DeployIfNotExists"

    effect_08a4470fb26d428d97f47e3e9c92b366                         = "DeployIfNotExists"
    enableProcessesAndDependencies_08a4470fb26d428d97f47e3e9c92b366 = true

    effect_91cb9eddcd924d2fb2f2bdd8d065a3d4 = "DeployIfNotExists"

    effect_84cfed75dfd4421b93df725b479d356a                         = "DeployIfNotExists"
    enableProcessesAndDependencies_84cfed75dfd4421b93df725b479d356a = true

    effect_845857af03334c5dbbbc6076697da122 = "DeployIfNotExists"

    effect_94f686d69a244e1991f1de937dc171a4 = "DeployIfNotExists"

    eastus2DcrResourceId_ConfigureWindowsVMToBeAssociatedWithDCE      = "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01"
    westusDcrResourceId_ConfigureWindowsVMToBeAssociatedWithDCE       = "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01" # Similar assignment Not available in current sandbox, filling EUS2 DCE ID as a placeholder
    centralindiaDcrResourceId_ConfigureWindowsVMToBeAssociatedWithDCE = "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01" # Similar assignment Not available in sandbox, filling EUS2 DCE ID as a placeholder
    centralusDcrResourceId_ConfigureWindowsVMToBeAssociatedWithDCE    = "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-cus-01"
    resourceType_ConfigureWindowsVMToBeAssociatedWithDCE              = "Microsoft.Insights/dataCollectionEndpoints"

    # effect_ConfigureLinuxArcToBeAssociatedWithDCE = "DeployIfNotExists"
    # dcrResourceIdEastUS2_ConfigureLinuxArcToBeAssociatedWithDCE = "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01" #(This policy is not assigned to Sandbox currently)
    # dcrResourceIdWestUS_ConfigureLinuxArcToBeAssociatedWithDCE = "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01" #(This policy is not assigned to Sandbox currently)(providing same value as EastUS2)
    # dcrResourceIdCentralIndia_ConfigureLinuxArcToBeAssociatedWithDCE = "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01" #(This policy is not assigned to Sandbox currently)(providing same value as EastUS2)
    # dcrResourceIdCentralUS_ConfigureLinuxArcToBeAssociatedWithDCE  ="/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-cus-01"
    # resourceType_ConfigureLinuxArcToBeAssociatedWithDCE = "Microsoft.Insights/dataCollectionEndpoints"

    # effect_ConfigureWindowsArcToBeAssociatedWithDCE = "DeployIfNotExists"
    # dcrResourceIdEastUS2_ConfigureWindowsArcToBeAssociatedWithDCE = "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01" #(This policy is not assigned to Sandbox currently)
    # dcrResourceIdWestUS_ConfigureWindowsArcToBeAssociatedWithDCE = "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01" #(This policy is not assigned to Sandbox currently)(providing same value as EastUS2)
    # dcrResourceIdCentralIndia_ConfigureWindowsArcToBeAssociatedWithDCE = "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01" #(This policy is not assigned to Sandbox currently)(providing same value as EastUS2)
    # dcrResourceIdCentralUS_ConfigureWindowsArcToBeAssociatedWithDCE  ="/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-cus-01"
    # resourceType_ConfigureWindowsArcToBeAssociatedWithDCE = "Microsoft.Insights/dataCollectionEndpoints"

    # effect_ConfigureWindowsVMToBeAssociatedWithDCRSentinel2-0 = "DeployIfNotExists" # This policy is not assigned in current Sandbox
    # dcrResourceId_ConfigureWindowsVMToBeAssociatedWithDCRSentinel2-0 = ""
    # resourceType_ConfigureWindowsVMToBeAssociatedWithDCRSentinel2-0 = "Microsoft.Insights/dataCollectionRules"
  }
}