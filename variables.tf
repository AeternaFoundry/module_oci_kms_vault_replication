variable "kms_vault_replications" {
  description = <<EOT
Map of kms_vault_replications, attributes below
Required:
    - replica_region
    - vault_id
Optional:
    - replica_vault_metadata (block):
        - idcs_account_name_url (required)
        - private_endpoint_id (required)
        - vault_type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    replica_region = string
    vault_id       = string
    replica_vault_metadata = optional(object({
      idcs_account_name_url = string
      private_endpoint_id   = string
      vault_type            = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

