resource "oci_kms_vault_replication" "kms_vault_replications" {
  for_each = var.kms_vault_replications

  replica_region = each.value.replica_region
  vault_id       = each.value.vault_id

  dynamic "replica_vault_metadata" {
    for_each = each.value.replica_vault_metadata != null ? [each.value.replica_vault_metadata] : []
    content {
      idcs_account_name_url = replica_vault_metadata.value.idcs_account_name_url
      private_endpoint_id   = replica_vault_metadata.value.private_endpoint_id
      vault_type            = replica_vault_metadata.value.vault_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

