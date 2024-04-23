# List of built-in policies to be used in intiative
variable "builtin_policies" {
  # set rather than list because these don't seem to be in
  # any significant order; we're just using them for instance
  # identifiers.
  type        = set(string)
  description = "List of IDs of built-in policies"
  default = [
    "cccc23c7-8427-4f53-ad12-b6a63eb452b3", #Allowed virtual machine size SKUs
    "0473574d-2d43-4217-aefe-941fcdf7e684",  #Azure Cosmos DB allowed locations
    "6c112d4e-5bc7-47ae-a041-ea2d9dccd749"  # Not allowed resource types
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

    #Allowed virtual machine size SKUs
    listOfAllowedSKUs_cccc23c784274f53ad12b6a63eb452b3 = [ #ToDo Update the allowed list of VM SKU as required
      "Standard_D2s_v3",
      "Standard_D4s_v3",
      "Standard_D8s_v3",
      "Standard_D16s_v3"
    ]
    
    #Azure Cosmos DB allowed locations
    listOfAllowedLocations_0473574d2d434217aefe941fcdf7e684 = ["eastus2", "westus"] #ToDo Update the list if required
    policyEffect_0473574d2d434217aefe941fcdf7e684           = "Audit"                #Default value

    # Not allowed resource types
    listOfResourceTypesNotAllowed_6c112d4e5bc747aea041ea2d9dccd749 = [ #ToDo Update the list as required
      "Microsoft.KeyVault/managedHSMs",
      "Microsoft.OperationalInsights/workspaces",
      "Microsoft.ApiManagement/service",
      "Microsoft.Network/privateDnsZones",
      "Microsoft.Network/publicIPAddresses",
      "Microsoft.Network/publicIPPrefixes"
    ]
    effect_6c112d4e5bc747aea041ea2d9dccd749 = "Audit"
  }
}