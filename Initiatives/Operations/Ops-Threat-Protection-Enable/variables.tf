# List of built-in policies to be used in intiative
variable "builtin_policies" {
  # set rather than list because these don't seem to be in
  # any significant order; we're just using them for instance
  # identifiers.
  type        = set(string)
  description = "List of IDs of built-in policies"
  default = [
    "708b60a6-d253-4fe0-9114-4be4c00f012c", #[Preview]: Configure Azure Arc enabled Kubernetes clusters to install Microsoft Defender for Cloud extension
    "d30025d0-6d64-656d-6465-67688881b632", #[Preview]: Deploy Microsoft Defender for Endpoint agent on Linux virtual machines
    "1ec9c2c2-6d64-656d-6465-3ec3309b8579", #[Preview]: Deploy Microsoft Defender for Endpoint agent on Windows virtual machines
    "b5f04e03-92a3-4b09-9410-2cc5e5047656", #Deploy Advanced Threat Protection for Cosmos DB Accounts
    "ac076320-ddcf-4066-b451-6154267e8ad2", #Enable Microsoft Defender for Cloud on your subscription
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

    effect_708b60a6d2534fe091144be4c00f012c                          = "DeployIfNotExists"
    logAnalyticsWorkspaceResourceId_708b60a6d2534fe091144be4c00f012c = "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-sandbox-dev-eus2-01/providers/Microsoft.OperationalInsights/workspaces/log-sandbox-poc-eus-01"
    excludedDistributions_708b60a6d2534fe091144be4c00f012c = [
      "aks",
      "aks_management",
      "eks",
      "gke"
    ]

    PublishersToExclude_d30025d06d64656d646567688881b632 = []
    ImageIdsToExclude_d30025d06d64656d646567688881b632   = []
    effect_d30025d06d64656d646567688881b632              = "DeployIfNotExists"

    PublishersToExclude_1ec9c2c26d64656d64653ec3309b8579 = []
    ImageIdsToExclude_1ec9c2c26d64656d64653ec3309b8579   = []
    effect_1ec9c2c26d64656d64653ec3309b8579              = "DeployIfNotExists"

    effect_b5f04e0392a34b0994102cc5e5047656 = "DeployIfNotExists"
  }
}