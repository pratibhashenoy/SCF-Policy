# List of built-in policies to be used in intiative
variable "builtin_policies" {
  type        = set(string)
  description = "List of IDs of built-in policies"
  default = [
    #ToDo Add the Built-in policy. Refer to the "name" property in Policy Definition JSON in Azure
    "ee7495e7-3ba7-40b6-bfee-c29e22cc75d4", #API Management APIs should use only encrypted protocols
    "ae1b9a8c-dfce-4605-bd91-69213b4a26fc", #App Service app slots should only be accessible over HTTPS
    "4dcfb8b5-05cd-4090-a931-2ec29057e1fc", #App Service app slots should use latest 'HTTP Version'
    "4ee5b817-627a-435a-8932-116193268172", #App Service app slots should use the latest TLS version
    "a4af4a39-4135-47fb-b175-47fbdf85311d", #App Service apps should only be accessible over HTTPS
    "f0e6e85b-9b9f-4a4b-b67b-f730d42f1b0b", #App Service apps should use the latest TLS version
    "d6545c6b-dd9d-4265-91e6-0b451e2f1c50", #App Service Environment should have TLS 1.0 and 1.1 disabled
    "3aa87b5a-7813-4b57-8a43-42dd9df5aaa7", #Azure Active Directory Domain Services managed domains should use TLS 1.2 only mode
    "a58ac66d-92cb-409c-94b8-8e48d7a96596", #Azure firewall policy should enable TLS inspection within application rules
    "711c24bb-7f18-4578-b192-81a6161e1f17", #Azure Firewall Premium should configure a valid intermediate certificate to enable TLS inspection
    "679da822-78a7-4eff-8fff-a899454a9970", #Azure Front Door Standard and Premium should be running minimum TLS version of 1.2
    "32e6bbec-16b6-44c2-be37-c5b672d103cf", #Azure SQL Database should be running TLS version 1.2 or newer
    "cb3738a6-82a2-4a18-b87b-15217b9deff4", #Azure Synapse Workspace SQL Server should be running TLS version 1.2 or newer
    "11c82d0c-db9f-4d7b-97c5-f3f9aa957da2", #Function app slots should disable public network access
    "deb528de-8f89-4101-881c-595899253102", #Function app slots should use the latest TLS version
    "969ac98b-88a8-449f-883c-2e9adb123127", #Function apps should disable public network access
    "6d555dd1-86f2-4f1c-8ed7-5abae7c6cbab", #Function apps should only be accessible over HTTPS
    "404c3081-a854-4457-ae30-26a93ef643f9", #Secure transfer to storage accounts should be enabled
    "a8793640-60f7-487c-b5c3-1d37215905c4", #SQL Managed Instance should have the minimal TLS version of 1.2
    "fe83a0eb-a853-422d-aac2-1bffd182c5d0", #Storage accounts should have the specified minimum TLS version
    "bb3c7464-033e-41ee-81dc-480fde675b20", #TLS protocol 1.2 must be used for Arc SQL managed instances.
    "5752e6d6-1206-46d8-8ab1-ecc2f71a8112"  #Windows machines should be configured to use secure communication protocols
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

    #API Management APIs should use only encrypted protocols
    effect_ee7495e73ba740b6bfeec29e22cc75d4 = "Audit"

    #App Service app slots should only be accessible over HTTPS
    effect_ae1b9a8cdfce4605bd9169213b4a26fc = "Audit"

    #App Service app slots should use latest 'HTTP Version'
    effect_4dcfb8b505cd4090a9312ec29057e1fc = "AuditIfNotExists"

    #App Service app slots should use the latest TLS version
    effect_4ee5b817627a435a8932116193268172 = "AuditIfNotExists"

    #App Service apps should only be accessible over HTTPS
    effect_a4af4a39413547fbb17547fbdf85311d = "Audit"

    #App Service apps should use the latest TLS version
    effect_f0e6e85b9b9f4a4bb67bf730d42f1b0b = "AuditIfNotExists"

    #App Service Environment should have TLS 1.0 and 1.1 disabled
    effect_d6545c6bdd9d426591e60b451e2f1c50 = "Audit"

    #Azure Active Directory Domain Services managed domains should use TLS 1.2 only mode
    effect_3aa87b5a78134b578a4342dd9df5aaa7 = "Audit"

    #Azure firewall policy should enable TLS inspection within application rules
    effect_a58ac66d92cb409c94b88e48d7a96596 = "Audit"

    #Azure Firewall Premium should configure a valid intermediate certificate to enable TLS inspection
    effect_711c24bb7f184578b19281a6161e1f17 = "Audit"

    #Azure Front Door Standard and Premium should be running minimum TLS version of 1.2
    effect_679da82278a74eff8fffa899454a9970 = "Audit"

    #Azure SQL Database should be running TLS version 1.2 or newer
    effect_32e6bbec16b644c2be37c5b672d103cf = "Audit"

    #Azure Synapse Workspace SQL Server should be running TLS version 1.2 or newer
    effect_cb3738a682a24a18b87b15217b9deff4 = "Audit"

    #Function app slots should disable public network access
    effect_11c82d0cdb9f4d7b97c5f3f9aa957da2 = "Audit"

    #Function app slots should use the latest TLS version
    effect_deb528de8f894101881c595899253102 = "AuditIfNotExists"

    #Function apps should disable public network access
    effect_969ac98b88a8449f883c2e9adb123127 = "Audit"

    #Function apps should only be accessible over HTTPS
    effect_6d555dd186f24f1c8ed75abae7c6cbab = "Audit"

    #Secure transfer to storage accounts should be enabled
    effect_404c3081a8544457ae3026a93ef643f9 = "Audit"

    #SQL Managed Instance should have the minimal TLS version of 1.2
    effect_a879364060f7487cb5c31d37215905c4 = "Audit"

    #Storage accounts should have the specified minimum TLS version
    effect_fe83a0eba853422daac21bffd182c5d0            = "Audit"
    minimumTlsVersion_fe83a0eba853422daac21bffd182c5d0 = "TLS1_2"

    #TLS protocol 1.2 must be used for Arc SQL managed instances.
    effect_bb3c7464033e41ee81dc480fde675b20 = "Audit"

    #Windows machines should be configured to use secure communication protocols
    IncludeArcMachines_5752e6d6120646d88ab1ecc2f71a8112 = "false"
    MinimumTLSVersion_5752e6d6120646d88ab1ecc2f71a8112  = "1.2"
    effect_5752e6d6120646d88ab1ecc2f71a8112             = "AuditIfNotExists"
  }
}
