# List of built-in policies to be used in intiative
variable "builtin_policies" {
  # set rather than list because these don't seem to be in
  # any significant order; we're just using them for instance
  # identifiers.
  type        = set(string)
  description = "List of IDs of built-in policies"
  default = [
    "8dfab9c4-fe7b-49ad-85e4-1e9be085358f", #[Preview]: Azure Arc enabled Kubernetes clusters should have Microsoft Defender for Cloud extension installed
    "04c4380f-3fae-46e8-96c9-30193528f602", #[Preview]: Network traffic data collection agent should be installed on Linux virtual machines
    "2f2ee1de-44aa-4762-b6bd-0893fc3f306d", #[Preview]: Network traffic data collection agent should be installed on Windows virtual machines
    "97566dd7-78ae-4997-8b36-1c7bfe0d8121", #[Preview]: Secure Boot should be enabled on supported Windows virtual machines
    "f85bf3e0-d513-442e-89c3-1784ad63382b", #[Preview]: System updates should be installed on your machines (powered by Update Center)
    "501541f7-f7e7-4cd6-868c-4190fdad3ac9", #A vulnerability assessment solution should be enabled on your virtual machines
    "47a6b606-51aa-4496-8bb7-64b11cf66adc", #Adaptive application controls for defining safe applications should be enabled on your machines
    "08e6af2d-db70-460a-bfe9-d5bd474ba9d6", #Adaptive network hardening recommendations should be applied on internet facing virtual machines
    "abfb4388-5bf4-4ad7-ba82-2cd2f41ceae9", #Azure Defender for SQL should be enabled for unprotected Azure SQL servers
    "abfb7388-5bf4-4ad7-ba99-2cd2f41cebb9", #Azure Defender for SQL should be enabled for unprotected SQL Managed Instances
    "640d2586-54d2-465f-877f-9ffc1d2109f4", #Microsoft Defender for Storage should be enabled
    "1b7aa243-30e4-4c9e-bca8-d0d3022b634a", #Vulnerability assessment should be enabled on SQL Managed Instance
    "ef2a8f2a-b3d9-49cd-a8a8-9a3aaaf647d9" #Vulnerability assessment should be enabled on your SQL servers
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
    effect_8dfab9c4fe7b49ad85e41e9be085358f = "AuditIfNotExists"
    effect_04c4380f3fae46e896c930193528f602 = "AuditIfNotExists"
    effect_2f2ee1de44aa4762b6bd0893fc3f306d = "AuditIfNotExists"
    effect_97566dd778ae49978b361c7bfe0d8121 = "Audit"
    effect_f85bf3e0d513442e89c31784ad63382b = "AuditIfNotExists"
    effect_501541f7f7e74cd6868c4190fdad3ac9 = "AuditIfNotExists"
    effect_47a6b60651aa44968bb764b11cf66adc = "AuditIfNotExists"
    effect_08e6af2ddb70460abfe9d5bd474ba9d6 = "AuditIfNotExists"
    effect_abfb43885bf44ad7ba822cd2f41ceae9 = "AuditIfNotExists"
    effect_abfb73885bf44ad7ba992cd2f41cebb9 = "AuditIfNotExists"
    effect_640d258654d2465f877f9ffc1d2109f4 = "AuditIfNotExists"
    effect_1b7aa24330e44c9ebca8d0d3022b634a = "AuditIfNotExists"
    effect_ef2a8f2ab3d949cda8a89a3aaaf647d9 = "AuditIfNotExists"
  }
}