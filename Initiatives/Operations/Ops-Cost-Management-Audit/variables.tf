# List of built-in policies to be used in intiative
variable "builtin_policies" {
  # set rather than list because these don't seem to be in
  # any significant order; we're just using them for instance
  # identifiers.
  type        = set(string)
  description = "List of IDs of built-in policies"
  default = [
    "0b7ef78e-a035-4f23-b9bd-aff122a1b1cf", #Azure Cosmos DB throughput should be limited
    "85bb39b5-2f66-49f8-9306-77da3ac5130f", #Azure Data Factory integration runtime should have a limit for number of cores
    "16fabb5c-7379-4433-8009-042066fa3a16", #Exclude Usage Costs Resources
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
    effect_0b7ef78ea0354f23b9bdaff122a1b1cf        = "Audit"
    throughputMax_0b7ef78ea0354f23b9bdaff122a1b1cf = 1000 #ToDo Update the max throughput for CosmosDB
    effect_85bb39b52f6649f8930677da3ac5130f        = "Audit"
    maxCores_85bb39b52f6649f8930677da3ac5130f      = 32                # ToDo Update Max number of cores for data flow
    effect_16fabb5c737944338009042066fa3a16        = "Audit"           #ToDo Deny
    effect_6c112d4e5bc747aea041ea2d9dccd749        = "Audit"           #ToDo Deny
    listOfResourceTypesNotAllowed_6c112d4e5bc747aea041ea2d9dccd749 = [ #ToDo Update the list as required
      "microsoft.classiccompute/virtualmachines",
      "microsoft.classiccompute/virtualmachines/diagnosticsettings",
      "microsoft.classiccompute/virtualmachines/metricdefinitions",
      "microsoft.classiccompute/virtualmachines/metrics",
      "microsoft.classicnetwork/virtualnetworks",
      "microsoft.classicnetwork/virtualnetworks/remotevirtualnetworkpeeringproxies",
      "microsoft.classicnetwork/virtualnetworks/virtualnetworkpeerings",
      "microsoft.classicstorage/checkstorageaccountavailability",
      "microsoft.classicstorage/storageaccounts",
      "microsoft.classicstorage/storageaccounts/blobservices",
      "microsoft.classicstorage/storageaccounts/fileservices",
      "microsoft.classicstorage/storageaccounts/metricdefinitions",
      "microsoft.classicstorage/storageaccounts/metrics",
      "microsoft.classicstorage/storageaccounts/queueservices",
      "microsoft.classicstorage/storageaccounts/services",
      "microsoft.classicstorage/storageaccounts/services/diagnosticsettings",
      "microsoft.classicstorage/storageaccounts/services/metricdefinitions",
      "microsoft.classicstorage/storageaccounts/services/metrics",
      "microsoft.classicstorage/storageaccounts/tableservices",
      "microsoft.classicstorage/storageaccounts/vmimages",
      "microsoft.classiccompute/capabilities",
      "microsoft.classiccompute/checkdomainnameavailability",
      "microsoft.classiccompute/domainnames",
      "microsoft.classiccompute/domainnames/capabilities",
      "microsoft.classiccompute/domainnames/internalloadbalancers",
      "microsoft.classiccompute/domainnames/servicecertificates",
      "microsoft.classiccompute/domainnames/slots",
      "microsoft.classiccompute/domainnames/slots/roles",
      "microsoft.classiccompute/domainnames/slots/roles/metricdefinitions",
      "microsoft.classiccompute/domainnames/slots/roles/metrics",
      "microsoft.classiccompute/movesubscriptionresources",
      "microsoft.classiccompute/operatingsystemfamilies",
      "microsoft.classiccompute/operatingsystems",
      "microsoft.classiccompute/operations",
      "microsoft.classiccompute/operationstatuses",
      "microsoft.classiccompute/quotas",
      "microsoft.classiccompute/resourcetypes",
      "microsoft.classiccompute/validatesubscriptionmoveavailability",
      "microsoft.classicnetwork/capabilities",
      "microsoft.classicnetwork/expressroutecrossconnections",
      "microsoft.classicnetwork/expressroutecrossconnections/peerings",
      "microsoft.classicnetwork/gatewaysupporteddevices",
      "microsoft.classicnetwork/networksecuritygroups",
      "microsoft.classicnetwork/operations",
      "microsoft.classicnetwork/quotas",
      "microsoft.classicnetwork/reservedips",
      "microsoft.classicstorage/capabilities",
      "microsoft.classicstorage/disks",
      "microsoft.classicstorage/images",
      "microsoft.classicstorage/operations",
      "microsoft.classicstorage/osimages",
      "microsoft.classicstorage/osplatformimages",
      "microsoft.classicstorage/publicimages",
      "microsoft.classicstorage/quotas",
      "microsoft.classicstorage/vmimages",
      "microsoft.classicsubscription/operations",
      "microsoft.classicinfrastructuremigrate/classicinfrastructureresources"
    ]
  }
}