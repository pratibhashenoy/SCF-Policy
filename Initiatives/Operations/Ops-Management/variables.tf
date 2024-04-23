# List of built-in policies to be used in intiative
variable "builtin_policies" {
  # set rather than list because these don't seem to be in
  # any significant order; we're just using them for instance
  # identifiers.
  type = set(string)
  description = "List of IDs of built-in policies"
  default = [ 
    "e56962a6-4747-49cd-b67b-bf8b01975c4c", #Allowed locations
    "06a78e20-9358-41c9-923c-fb736d382a4d", #Audit VMs that do not use managed disks
    "0a15ec92-a229-4763-bb14-0ea34a568f8d", #Azure Policy Add-on for Kubernetes service (AKS) should be installed and enabled on your clusters
    "ea3f2387-9b95-492a-a190-fcdc54f7b070", #Inherit a tag from the resource group if missing
    "47a1ee2f-2a2a-4576-bf2a-e0e36709c2b8", #Kubernetes cluster containers should not share host process ID or host IPC namespace
    "c26596ff-4d70-4e6a-9a30-c2506bd2f80c", #Kubernetes cluster containers should only use allowed capabilities
    "098fc59e-46c7-4d99-9b16-64990e543d75", #Kubernetes cluster pod hostPath volumes should only use allowed host paths
    "95edb821-ddaf-4404-9732-666045e056b4", #Kubernetes cluster should not allow privileged containers
    "bd876905-5b84-4f73-ab2d-2e7a7c4568d9", #Machines should be configured to periodically check for missing system updates
    "96670d01-0a4d-4649-9c89-2d3abc0a5025", #Require a tag on resource groups
    "465f0161-0087-490a-9ad9-ad6217f4f43a", #Require automatic OS image patching on Virtual Machine Scale Sets
    "ba0df93e-e4ac-479a-aac2-134bbae39a1a", #Schedule recurring updates using Azure Update Manager
  ]
}

# List of custom policies to be used in intiative
variable "custom_policies" {
  # set rather than list because these don't seem to be in
  # any significant order; we're just using them for instance
  # identifiers.
  type = set(string)
  description = "List of custom policies"
  default = [  
    "ConfigureWindowsVMToBeAssociatedWithDCE"
  ]
}

# Parameters to be used during initiative assignment
variable "assignment_parameters" {
  description = "assignment parameter value for policy assignment"
  default = {
    #ConfigureWindowsVMToBeAssociatedWithDCE
    effect_ConfigureWindowsVMToBeAssociatedWithDCE = "AuditIfNotExists"
    eastus2DcrResourceId_ConfigureWindowsVMToBeAssociatedWithDCE = "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01"
    westusDcrResourceId_ConfigureWindowsVMToBeAssociatedWithDCE = "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01" # Similar assignment Not available in current sandbox, filling EUS2 DCE ID as a placeholder
    centralindiaDcrResourceId_ConfigureWindowsVMToBeAssociatedWithDCE = "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-eus2-01" # Similar assignment Not available in sandbox, filling EUS2 DCE ID as a placeholder
    centralusDcrResourceId_ConfigureWindowsVMToBeAssociatedWithDCE = "/subscriptions/5d71b482-6340-49b1-a97c-01a762b5dd40/resourceGroups/rg-log-sandbox-mgmt-eus2-01/providers/Microsoft.Insights/dataCollectionEndpoints/dce-sandbox-ntwrk-cus-01"
    resourceType_ConfigureWindowsVMToBeAssociatedWithDCE = "Microsoft.Insights/dataCollectionEndpoints"
    
    #Allowed locations
    listOfAllowedLocations_e56962a6474749cdb67bbf8b01975c4c = [ "eastus2", "westus", "centralindia", "centralus"]

    #Azure Policy Add-on for Kubernetes service (AKS) should be installed and enabled on your clusters
    effect_0a15ec92a2294763bb140ea34a568f8d = "Audit"

    #Inherit a tag from the resource group if missing
    tagName_ea3f23879b95492aa190fcdc54f7b070 = "environment"

    #Require a tag on resource groups
    tagName_96670d010a4d46499c892d3abc0a5025 = "environment"

    #Schedule recurring updates using Azure Update Manager
    maintenanceConfigurationResourceId_ba0df93ee4ac479aaac2134bbae39a1a = "/subscriptions/c2dba585-3f67-495a-b2d6-c827eeaf4757/resourcegroups/rg-aum-core-mgmt-eus2-01/providers/microsoft.maintenance/maintenanceconfigurations/aum-all-vms-sbx-01"
  }
}