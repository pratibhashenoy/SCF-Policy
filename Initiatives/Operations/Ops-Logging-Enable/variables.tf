# List of built-in policies to be used in intiative
variable "builtin_policies" {
  # set rather than list because these don't seem to be in
  # any significant order; we're just using them for instance
  # identifiers.
  type        = set(string)
  description = "List of IDs of built-in policies"
  default = [
    "2465583e-4e78-4c15-b6be-a36cbc7c8b0f", #Configure Azure Activity logs to stream to specified Log Analytics workspace
    "7ea8a143-05e3-4553-abfe-f56bef8b0b70", #Configure Azure SQL database servers diagnostic settings to Log Analytics workspace
    "98a2e215-5382-489e-bd29-32e7190a39ba", #Configure diagnostic settings for Azure Network Security Groups to Log Analytics workspace
    "b4fe1a3b-0715-4c6c-a5ea-ffc33cf823cb", #Configure diagnostic settings for Blob Services to Log Analytics workspace
    "25a70cc8-2bd4-47f1-90b6-1478e4662c96", #Configure diagnostic settings for File Services to Log Analytics workspace
    "7bd000e3-37c7-4928-9f31-86c4b77c5c45", #Configure diagnostic settings for Queue Services to Log Analytics workspace
    "59759c62-9a22-4cdf-ae64-074495983fef", #Configure diagnostic settings for Storage Accounts to Log Analytics workspace
    "2fb86bf3-d221-43d1-96d1-2434af34eaa0", #Configure diagnostic settings for Table Services to Log Analytics workspace
    "e920df7f-9a64-4066-9b58-52684c02a091", #Configure network security groups to enable traffic analytics
    "3e9965dc-cc13-47ca-8259-a4252fd0cf7b", #Configure virtual network to enable Flow Log and Traffic Analytics
    "951af2fa-529b-416e-ab6e-066fd85ac459", #Deploy - Configure diagnostic settings for Azure Key Vault to Log Analytics workspace
    "b79fa14e-238a-4c2d-b376-442ce508fc84", #Deploy - Configure diagnostic settings for SQL Databases to Log Analytics workspace
    "c84e5349-db6d-4769-805e-e14037dab9b5", #Deploy Diagnostic Settings for Batch Account to Log Analytics workspace
    "c717fb0c-d118-4c43-ab3d-ece30ac81fb3", #Deploy Diagnostic Settings for Recovery Services Vault to Log Analytics workspace for resource specific categories
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
    logAnalytics_2465583e4e784c15b6bea36cbc7c8b0f = "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-sandbox-dev-eus2-01/providers/Microsoft.OperationalInsights/workspaces/log-sandbox-poc-eus-01"
    effect_2465583e4e784c15b6bea36cbc7c8b0f       = "DeployIfNotExists"
    logsEnabled_2465583e4e784c15b6bea36cbc7c8b0f  = "True"

    logAnalyticsWorkspaceId_7ea8a14305e34553abfef56bef8b0b70 = "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-sandbox-dev-eus2-01/providers/Microsoft.OperationalInsights/workspaces/log-sandbox-poc-eus-01"
    effect_7ea8a14305e34553abfef56bef8b0b70                  = "DeployIfNotExists"

    effect_98a2e2155382489ebd2932e7190a39ba                                 = "DeployIfNotExists"
    diagnosticsSettingNameToUse_98a2e2155382489ebd2932e7190a39ba            = "NSGDiagSetting"
    logAnalytics_98a2e2155382489ebd2932e7190a39ba                           = "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-sandbox-dev-eus2-01/providers/Microsoft.OperationalInsights/workspaces/log-sandbox-poc-eus-01"
    NetworkSecurityGroupEventEnabled_98a2e2155382489ebd2932e7190a39ba       = "True"
    NetworkSecurityGroupRuleCounterEnabled_98a2e2155382489ebd2932e7190a39ba = "True"

    effect_b4fe1a3b07154c6ca5eaffc33cf823cb         = "DeployIfNotExists"
    profileName_b4fe1a3b07154c6ca5eaffc33cf823cb    = "blobServicesDiagnosticsLogsToWorkspace"
    logAnalytics_b4fe1a3b07154c6ca5eaffc33cf823cb   = "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-sandbox-dev-eus2-01/providers/Microsoft.OperationalInsights/workspaces/log-sandbox-poc-eus-01"
    metricsEnabled_b4fe1a3b07154c6ca5eaffc33cf823cb = true
    logsEnabled_b4fe1a3b07154c6ca5eaffc33cf823cb    = true

    effect_25a70cc82bd447f190b61478e4662c96         = "DeployIfNotExists"
    profileName_25a70cc82bd447f190b61478e4662c96    = "fileServicesDiagnosticsLogsToWorkspace"
    logAnalytics_25a70cc82bd447f190b61478e4662c96   = "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-sandbox-dev-eus2-01/providers/Microsoft.OperationalInsights/workspaces/log-sandbox-poc-eus-01"
    metricsEnabled_25a70cc82bd447f190b61478e4662c96 = true
    logsEnabled_25a70cc82bd447f190b61478e4662c96    = true

    effect_7bd000e337c749289f3186c4b77c5c45         = "DeployIfNotExists"
    profileName_7bd000e337c749289f3186c4b77c5c45    = "queueServicesDiagnosticsLogsToWorkspace"
    logAnalytics_7bd000e337c749289f3186c4b77c5c45   = "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-sandbox-dev-eus2-01/providers/Microsoft.OperationalInsights/workspaces/log-sandbox-poc-eus-01"
    metricsEnabled_7bd000e337c749289f3186c4b77c5c45 = true
    logsEnabled_7bd000e337c749289f3186c4b77c5c45    = true

    effect_59759c629a224cdfae64074495983fef         = "DeployIfNotExists"
    profileName_59759c629a224cdfae64074495983fef    = "storageAccountsDiagnosticsLogsToWorkspace"
    logAnalytics_59759c629a224cdfae64074495983fef   = "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-sandbox-dev-eus2-01/providers/Microsoft.OperationalInsights/workspaces/log-sandbox-poc-eus-01"
    metricsEnabled_59759c629a224cdfae64074495983fef = true

    effect_2fb86bf3d22143d196d12434af34eaa0         = "DeployIfNotExists"
    profileName_2fb86bf3d22143d196d12434af34eaa0    = "tableServicesDiagnosticsLogsToWorkspace"
    logAnalytics_2fb86bf3d22143d196d12434af34eaa0   = "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-sandbox-dev-eus2-01/providers/Microsoft.OperationalInsights/workspaces/log-sandbox-poc-eus-01"
    metricsEnabled_2fb86bf3d22143d196d12434af34eaa0 = true
    logsEnabled_2fb86bf3d22143d196d12434af34eaa0    = true

    effect_e920df7f9a6440669b5852684c02a091              = "DeployIfNotExists"
    nsgRegion_e920df7f9a6440669b5852684c02a091           = "eastus2"
    storageId_e920df7f9a6440669b5852684c02a091           = "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-dev-01/providers/Microsoft.Storage/storageAccounts/sttfiacpocdeveu201"
    timeInterval_e920df7f9a6440669b5852684c02a091        = "60"
    workspaceResourceId_e920df7f9a6440669b5852684c02a091 = "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-sandbox-dev-eus2-01/providers/Microsoft.OperationalInsights/workspaces/log-sandbox-poc-eus-01"
    workspaceRegion_e920df7f9a6440669b5852684c02a091     = "eastus2"
    workspaceId_e920df7f9a6440669b5852684c02a091         = "5582b52c-8897-4491-bf9a-abdc756fa55e"
    networkWatcherRG_e920df7f9a6440669b5852684c02a091    = "NetworkWatcherRG"
    networkWatcherName_e920df7f9a6440669b5852684c02a091  = "NetworkWatcher_eastus2"
    retentionDays_e920df7f9a6440669b5852684c02a091       = "30"

    effect_3e9965dccc1347ca8259a4252fd0cf7b              = "DeployIfNotExists"
    vnetRegion_3e9965dccc1347ca8259a4252fd0cf7b          = "eastus2"
    storageId_3e9965dccc1347ca8259a4252fd0cf7b           = "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-dev-01/providers/Microsoft.Storage/storageAccounts/sttfiacpocdeveu201"
    timeInterval_3e9965dccc1347ca8259a4252fd0cf7b        = "60"
    workspaceResourceId_3e9965dccc1347ca8259a4252fd0cf7b = "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-sandbox-dev-eus2-01/providers/Microsoft.OperationalInsights/workspaces/log-sandbox-poc-eus-01"
    workspaceRegion_3e9965dccc1347ca8259a4252fd0cf7b     = "eastus2"
    workspaceId_3e9965dccc1347ca8259a4252fd0cf7b         = "5582b52c-8897-4491-bf9a-abdc756fa55e"
    networkWatcherRG_3e9965dccc1347ca8259a4252fd0cf7b    = "NetworkWatcherRG"
    networkWatcherName_3e9965dccc1347ca8259a4252fd0cf7b  = "NetworkWatcher_eastus2"
    retentionDays_3e9965dccc1347ca8259a4252fd0cf7b       = "30"

    effect_951af2fa529b416eab6e066fd85ac459                      = "DeployIfNotExists"
    diagnosticsSettingNameToUse_951af2fa529b416eab6e066fd85ac459 = "AzureKeyVaultDiagnosticsLogsToWorkspace"
    logAnalytics_951af2fa529b416eab6e066fd85ac459                = "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-sandbox-dev-eus2-01/providers/Microsoft.OperationalInsights/workspaces/log-sandbox-poc-eus-01"
    AuditEventEnabled_951af2fa529b416eab6e066fd85ac459           = "True"
    AllMetricsEnabled_951af2fa529b416eab6e066fd85ac459           = "True"

    effect_b79fa14e238a4c2db376442ce508fc84                             = "DeployIfNotExists"
    diagnosticsSettingNameToUse_b79fa14e238a4c2db376442ce508fc84        = "SQLDatabaseDiagnosticsLogsToWorkspace"
    logAnalytics_b79fa14e238a4c2db376442ce508fc84                       = "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-sandbox-dev-eus2-01/providers/Microsoft.OperationalInsights/workspaces/log-sandbox-poc-eus-01"
    QueryStoreRuntimeStatisticsEnabled_b79fa14e238a4c2db376442ce508fc84 = "True"
    QueryStoreWaitStatisticsEnabled_b79fa14e238a4c2db376442ce508fc84    = "True"
    ErrorsEnabled_b79fa14e238a4c2db376442ce508fc84                      = "True"
    DatabaseWaitStatisticsEnabled_b79fa14e238a4c2db376442ce508fc84      = "True"
    BlocksEnabled_b79fa14e238a4c2db376442ce508fc84                      = "True"
    SQLInsightsEnabled_b79fa14e238a4c2db376442ce508fc84                 = "True"
    SQLSecurityAuditEventsEnabled_b79fa14e238a4c2db376442ce508fc84      = "True"
    TimeoutsEnabled_b79fa14e238a4c2db376442ce508fc84                    = "True"
    AutomaticTuningEnabled_b79fa14e238a4c2db376442ce508fc84             = "True"
    DeadlocksEnabled_b79fa14e238a4c2db376442ce508fc84                   = "True"
    Basic_b79fa14e238a4c2db376442ce508fc84                              = "True"
    InstanceAndAppAdvanced_b79fa14e238a4c2db376442ce508fc84             = "True"
    WorkloadManagement_b79fa14e238a4c2db376442ce508fc84                 = "True"

    effect_c84e5349db6d4769805ee14037dab9b5         = "DeployIfNotExists"
    profileName_c84e5349db6d4769805ee14037dab9b5    = "setbypolicy_logAnalytics"
    logAnalytics_c84e5349db6d4769805ee14037dab9b5   = "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-sandbox-dev-eus2-01/providers/Microsoft.OperationalInsights/workspaces/log-sandbox-poc-eus-01"
    metricsEnabled_c84e5349db6d4769805ee14037dab9b5 = "True"
    logsEnabled_c84e5349db6d4769805ee14037dab9b5    = "True"

    profileName_c717fb0cd1184c43ab3dece30ac81fb3  = "setbypolicy_logAnalytics"
    logAnalytics_c717fb0cd1184c43ab3dece30ac81fb3 = "/subscriptions/<<Subscription-Id>>/resourceGroups/rg-poc-sandbox-dev-eus2-01/providers/Microsoft.OperationalInsights/workspaces/log-sandbox-poc-eus-01"
    tagName_c717fb0cd1184c43ab3dece30ac81fb3      = ""
    tagValue_c717fb0cd1184c43ab3dece30ac81fb3     = ""

  }
}