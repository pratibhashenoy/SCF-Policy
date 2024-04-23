# List of built-in policies to be used in intiative
variable "builtin_policies" {
  type        = set(string)
  description = "List of IDs of built-in policies"
  default = [
    #ToDo Add the Built-in policy. Refer to the "name" property in Policy Definition JSON in Azure
    "2d7e144b-159c-44fc-95c1-ac3dbf5e6e54", #[Preview]: Azure IoT Hub should use customer-managed key to encrypt data at rest
    "2e94d99a-8a36-4563-bc77-810d8893b671", #[Preview]: Azure Recovery Services vaults should use customer-managed keys for encrypting backup data
    "47031206-ce96-41f8-861b-6a915f3de284", #[Preview]: IoT Hub device provisioning service data should be encrypted using customer-managed keys (CMK)
    "56a5ee18-2ae6-4810-86f7-18e39ce5629b", #Azure Automation accounts should use customer-managed keys to encrypt data at rest
    "99e9ccd8-3db9-4592-b0d1-14b1715a4d8a", #Azure Batch account should use customer-managed keys to encrypt data
    "1f905d99-2ab7-462c-a6b0-f709acca6c8f", #Azure Cosmos DB accounts should use customer-managed keys to encrypt data at rest
    "4ec52d6d-beb7-40c4-9a9e-fe753254690e", #Azure data factories should be encrypted with a customer-managed key
    "64d314f6-6062-4780-a861-c23e8951bee5", #Azure HDInsight clusters should use customer-managed keys to encrypt data at rest
    "4d080fa5-a6d2-4f98-ba9c-f482d0d335c0", #Azure Health Bots should use customer-managed keys to encrypt data at rest
    "ba769a63-b8cc-4b2d-abf6-ac33c7204be8", #Azure Machine Learning workspaces should be encrypted with a customer-managed key
    "9285c3de-d5fd-4225-86d4-027894b0c442", #Azure Media Services should use customer-managed keys to encrypt data at rest
    "1f68a601-6e6d-4e42-babf-3f643a047ea2", #Azure Monitor Logs clusters should be encrypted with customer-managed key
    "5b9159ae-1701-4a6f-9a7a-aa9c8ddd0580", #Container registries should be encrypted with a customer-managed key
    "413923f0-ff16-41ae-8583-90c5c5d9fa8f", #Customer managed key encryption must be used as part of CMK Encryption for Arc SQL managed instances.
    "d461a302-a187-421a-89ac-84acdb4edc04", #Managed disks should use a specific set of disk encryption sets for the customer-managed key encryption
    "702dd420-7fcc-42c5-afe8-4026edd20fe0", #OS and data disks should be encrypted with a customer-managed key
    "18adea5e-f416-4d0f-8aa8-d24321e3e274", #PostgreSQL servers should use customer-managed keys to encrypt data at rest
    "f0e5abd0-2554-4736-b7c0-4ffef23475ef", #Queue Storage should use customer-managed key for encryption
    "ac01ad65-10e5-46df-bdd9-6b0cad13e1d2", #SQL managed instances should use customer-managed keys to encrypt data at rest
    "0a370ff3-6cab-4e85-8995-295fd854c5b8", #SQL servers should use customer-managed keys to encrypt data at rest
    "b5ec538c-daa0-4006-8596-35468b9148e8", #Storage account encryption scopes should use customer-managed keys to encrypt data at rest
    "6fac406b-40ca-413b-bf8e-0bf964659c25", #Storage accounts should use customer-managed key for encryption
    "7c322315-e26d-4174-a99e-f49d351b4688", #Table Storage should use customer-managed key for encryption
    "17k78e20-9358-41c9-923c-fb736d382a12", #Transparent Data Encryption on SQL databases should be enabled
    "fc4d8e41-e223-45ea-9bf5-eada37891d87" #Virtual machines and virtual machine scale sets should have encryption at host enabled
  ]
}

# List of custom policies to be used in intiative
variable "custom_policies" {
  type        = set(string)
  description = "List of custom policies"
  default = [
    #ToDo Add the Custom policy. Refer to the "name" property in Policy Definition JSON in 'Lib' Folder
    "PostgreSQLFlexibleCMK", #PostgreSQL Flexible Server should be encrypted with a Customer Managed Key (CMK)
    "ServiceBusCMK", #Service Bus should be encrypted with a Customer Managed Key (CMK)
    "StorageAccountCMK", #Storage account should be encrypted with a Customer Managed Key (CMK)
    "SQLServerDBCMK", #SQL Server DB should be encrypted with a Customer Managed Key (CMK)"
    "SQLServerAuth" #SQL Server should use Microsoft Entra for authentication
  ]
}

# Parameters to be used during initiative assignment
variable "assignment_parameters" {
  description = "assignment parameter value for policy assignment"
  default = {
    #ToDo Add the parameters value to be used during assignment. Can be skipped if using the default value defined in the policy definition.
    #Format: parameterID = parameterValue where parameterID is {parameter_name}_{policy_reference_id}

    # [Preview]: Azure IoT Hub should use customer-managed key to encrypt data at rest
    effect_2d7e144b159c44fc95c1ac3dbf5e6e54 = "Audit"

    # [Preview]: Azure Recovery Services vaults should use customer-managed keys for encrypting backup data
    effect_2e94d99a8a364563bc77810d8893b671 = "Audit"
    enableDoubleEncryption_2e94d99a8a364563bc77810d8893b671 = false
    
    # [Preview]: IoT Hub device provisioning service data should be encrypted using customer-managed keys (CMK)
    effect_47031206ce9641f8861b6a915f3de284 = "Audit"

    #Azure Automation accounts should use customer-managed keys to encrypt data at rest
    effect_56a5ee182ae6481086f718e39ce5629b = "Audit"

    #Azure Batch account should use customer-managed keys to encrypt data
    effect_99e9ccd83db94592b0d114b1715a4d8a = "Audit"

    #Azure Cosmos DB accounts should use customer-managed keys to encrypt data at rest
    effect_1f905d992ab7462ca6b0f709acca6c8f = "Audit"

    #Azure data factories should be encrypted with a customer-managed key
    effect_4ec52d6dbeb740c49a9efe753254690e = "Audit"

    #Azure HDInsight clusters should use customer-managed keys to encrypt data at rest
    effect_64d314f660624780a861c23e8951bee5 = "Audit"

    #Azure Health Bots should use customer-managed keys to encrypt data at rest
    effect_4d080fa5a6d24f98ba9cf482d0d335c0 = "Audit"

    #Azure Machine Learning workspaces should be encrypted with a customer-managed key
    effect_ba769a63b8cc4b2dabf6ac33c7204be8 = "Audit"

    #Azure Media Services should use customer-managed keys to encrypt data at rest
    effect_9285c3ded5fd422586d4027894b0c442 = "Audit"

    #Azure Monitor Logs clusters should be encrypted with customer-managed key
    effect_1f68a6016e6d4e42babf3f643a047ea2 = "Audit"

    #Container registries should be encrypted with a customer-managed key
    effect_5b9159ae17014a6f9a7aaa9c8ddd0580 = "Audit"

    #Customer managed key encryption must be used as part of CMK Encryption for Arc SQL managed instances.
    effect_413923f0ff1641ae858390c5c5d9fa8f = "Audit"

    #Managed disks should use a specific set of disk encryption sets for the customer-managed key encryption
    effect_d461a302a187421a89ac84acdb4edc04 = "Audit"
    allowedEncryptionSets_D461a302A187421a89ac84acdb4edc04 = []

    #OS and data disks should be encrypted with a customer-managed key
    effect_702dd4207fcc42c5afe84026edd20fe0 = "Audit"

    #PostgreSQL servers should use customer-managed keys to encrypt data at rest
    effect_18adea5ef4164d0f8aa8d24321e3e274 = "AuditIfNotExists"

    #Queue Storage should use customer-managed key for encryption
    effect_f0e5abd025544736b7c04ffef23475ef = "Audit"

    #SQL managed instances should use customer-managed keys to encrypt data at rest
    effect_ac01ad6510e546dfbdd96b0cad13e1d2 = "Audit"

    #SQL servers should use customer-managed keys to encrypt data at rest
    effect_0a370ff36cab4e858995295fd854c5b8 = "Audit"

    #Storage account encryption scopes should use customer-managed keys to encrypt data at rest
    effect_b5ec538cdaa04006859635468b9148e8 = "Audit"

    #Storage accounts should use customer-managed key for encryption
    effect_6fac406b40ca413bbf8e0bf964659c25 = "Audit"

    #Table Storage should use customer-managed key for encryption
    effect_7c322315e26d4174a99ef49d351b4688 = "Audit"

    #Transparent Data Encryption on SQL databases should be enabled
    effect_17k78e20935841c9923cfb736d382a12 = "AuditIfNotExists"

    #Virtual machines and virtual machine scale sets should have encryption at host enabled
    effect_fc4d8e41e22345ea9bf5eada37891d87 = "Audit"

    #Custom Policies
    #PostgreSQL Flexible Server should be encrypted with a Customer Managed Key (CMK)
    effect_PostgreSQLFlexibleCMK = "Audit"

    #Service Bus should be encrypted with a Customer Managed Key (CMK)
    effect_ServiceBusCMK = "Audit"

    #Storage account should be encrypted with a Customer Managed Key (CMK)
    effect_StorageAccountCMK = "Audit"

    #SQL Server DB should be encrypted with a Customer Managed Key (CMK)
    effect_SQLServerDBCMK = "Audit"

    #SQL Server should use Microsoft Entra for authentication
    effect_SQLServerAuth = "Audit"

  }
}

variable "policy_exceptions" {
  type = map(object({
    exception_resource_id = string       # Resource id of resouce which need exception
    description           = string       # A description for exception rule.
    display_name          = string       # Display name
    expiration_date       = string       # Expiration UTC datetime (Y-m-d'T'H:M:S'Z').
    policy_reference_ids  = list(string) # List of policy id which need to be exmpted

  }))
  description = "List of policy execptions , as defined above."
  default = {
    "<Provide a name for policy exception>" = {
      exception_resource_id = "/subscriptions/acd4eadd-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
      description           = "Exception provided for <provide subscription name> subscription"
      display_name          = "<Provide a display name>"
      expiration_date       = null
      policy_reference_ids = [
        # List of Policy reference IDs that needs to be added to this exception
      ]
    }
  }
}