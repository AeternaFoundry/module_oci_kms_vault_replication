output "kms_vault_replications_id" {
  description = "Map of id values across all kms_vault_replications, keyed the same as var.kms_vault_replications except keys with no id are omitted"
  value       = { for k, v in oci_kms_vault_replication.kms_vault_replications : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_vault_replications_crypto_endpoint" {
  description = "Map of crypto_endpoint values across all kms_vault_replications, keyed the same as var.kms_vault_replications except keys with no crypto_endpoint are omitted"
  value       = { for k, v in oci_kms_vault_replication.kms_vault_replications : k => v.crypto_endpoint if v.crypto_endpoint != null && length(v.crypto_endpoint) > 0 }
}
output "kms_vault_replications_management_endpoint" {
  description = "Map of management_endpoint values across all kms_vault_replications, keyed the same as var.kms_vault_replications except keys with no management_endpoint are omitted"
  value       = { for k, v in oci_kms_vault_replication.kms_vault_replications : k => v.management_endpoint if v.management_endpoint != null && length(v.management_endpoint) > 0 }
}
output "kms_vault_replications_replica_region" {
  description = "Map of replica_region values across all kms_vault_replications, keyed the same as var.kms_vault_replications except keys with no replica_region are omitted"
  value       = { for k, v in oci_kms_vault_replication.kms_vault_replications : k => v.replica_region if v.replica_region != null && length(v.replica_region) > 0 }
}
output "kms_vault_replications_replica_vault_metadata" {
  description = "Map of replica_vault_metadata values across all kms_vault_replications, keyed the same as var.kms_vault_replications except keys with no replica_vault_metadata are omitted"
  value       = { for k, v in oci_kms_vault_replication.kms_vault_replications : k => one(v.replica_vault_metadata) if v.replica_vault_metadata != null && length(v.replica_vault_metadata) > 0 }
}
output "kms_vault_replications_vault_id" {
  description = "Map of vault_id values across all kms_vault_replications, keyed the same as var.kms_vault_replications except keys with no vault_id are omitted"
  value       = { for k, v in oci_kms_vault_replication.kms_vault_replications : k => v.vault_id if v.vault_id != null && length(v.vault_id) > 0 }
}
output "kms_vault_replications_vault_replica_status" {
  description = "Map of vault_replica_status values across all kms_vault_replications, keyed the same as var.kms_vault_replications except keys with no vault_replica_status are omitted"
  value       = { for k, v in oci_kms_vault_replication.kms_vault_replications : k => v.vault_replica_status if v.vault_replica_status != null && length(v.vault_replica_status) > 0 }
}

