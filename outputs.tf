output "compute_global_vm_extension_policies_id" {
  description = "Map of id values across all compute_global_vm_extension_policies, keyed the same as var.compute_global_vm_extension_policies except keys with no id are omitted"
  value       = { for k, v in google_compute_global_vm_extension_policy.compute_global_vm_extension_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_global_vm_extension_policies_creation_timestamp" {
  description = "Map of creation_timestamp values across all compute_global_vm_extension_policies, keyed the same as var.compute_global_vm_extension_policies except keys with no creation_timestamp are omitted"
  value       = { for k, v in google_compute_global_vm_extension_policy.compute_global_vm_extension_policies : k => v.creation_timestamp if v.creation_timestamp != null && length(v.creation_timestamp) > 0 }
}
output "compute_global_vm_extension_policies_deletion_policy" {
  description = "Map of deletion_policy values across all compute_global_vm_extension_policies, keyed the same as var.compute_global_vm_extension_policies except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_global_vm_extension_policy.compute_global_vm_extension_policies : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_global_vm_extension_policies_description" {
  description = "Map of description values across all compute_global_vm_extension_policies, keyed the same as var.compute_global_vm_extension_policies except keys with no description are omitted"
  value       = { for k, v in google_compute_global_vm_extension_policy.compute_global_vm_extension_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_global_vm_extension_policies_extension_policies" {
  description = "Map of extension_policies values across all compute_global_vm_extension_policies, keyed the same as var.compute_global_vm_extension_policies except keys with no extension_policies are omitted"
  value       = { for k, v in google_compute_global_vm_extension_policy.compute_global_vm_extension_policies : k => v.extension_policies if v.extension_policies != null && length(v.extension_policies) > 0 }
}
output "compute_global_vm_extension_policies_instance_selectors" {
  description = "Map of instance_selectors values across all compute_global_vm_extension_policies, keyed the same as var.compute_global_vm_extension_policies except keys with no instance_selectors are omitted"
  value       = { for k, v in google_compute_global_vm_extension_policy.compute_global_vm_extension_policies : k => v.instance_selectors if v.instance_selectors != null && length(v.instance_selectors) > 0 }
}
output "compute_global_vm_extension_policies_kind" {
  description = "Map of kind values across all compute_global_vm_extension_policies, keyed the same as var.compute_global_vm_extension_policies except keys with no kind are omitted"
  value       = { for k, v in google_compute_global_vm_extension_policy.compute_global_vm_extension_policies : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "compute_global_vm_extension_policies_name" {
  description = "Map of name values across all compute_global_vm_extension_policies, keyed the same as var.compute_global_vm_extension_policies except keys with no name are omitted"
  value       = { for k, v in google_compute_global_vm_extension_policy.compute_global_vm_extension_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_global_vm_extension_policies_priority" {
  description = "Map of priority values across all compute_global_vm_extension_policies, keyed the same as var.compute_global_vm_extension_policies except keys with no priority are omitted"
  value       = { for k, v in google_compute_global_vm_extension_policy.compute_global_vm_extension_policies : k => v.priority if v.priority != null }
}
output "compute_global_vm_extension_policies_project" {
  description = "Map of project values across all compute_global_vm_extension_policies, keyed the same as var.compute_global_vm_extension_policies except keys with no project are omitted"
  value       = { for k, v in google_compute_global_vm_extension_policy.compute_global_vm_extension_policies : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_global_vm_extension_policies_rollout_operation" {
  description = "Map of rollout_operation values across all compute_global_vm_extension_policies, keyed the same as var.compute_global_vm_extension_policies except keys with no rollout_operation are omitted"
  value       = { for k, v in google_compute_global_vm_extension_policy.compute_global_vm_extension_policies : k => one(v.rollout_operation) if v.rollout_operation != null && length(v.rollout_operation) > 0 }
}
output "compute_global_vm_extension_policies_scoped_resource_status" {
  description = "Map of scoped_resource_status values across all compute_global_vm_extension_policies, keyed the same as var.compute_global_vm_extension_policies except keys with no scoped_resource_status are omitted"
  value       = { for k, v in google_compute_global_vm_extension_policy.compute_global_vm_extension_policies : k => v.scoped_resource_status if v.scoped_resource_status != null && length(v.scoped_resource_status) > 0 }
}
output "compute_global_vm_extension_policies_self_link" {
  description = "Map of self_link values across all compute_global_vm_extension_policies, keyed the same as var.compute_global_vm_extension_policies except keys with no self_link are omitted"
  value       = { for k, v in google_compute_global_vm_extension_policy.compute_global_vm_extension_policies : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "compute_global_vm_extension_policies_update_timestamp" {
  description = "Map of update_timestamp values across all compute_global_vm_extension_policies, keyed the same as var.compute_global_vm_extension_policies except keys with no update_timestamp are omitted"
  value       = { for k, v in google_compute_global_vm_extension_policy.compute_global_vm_extension_policies : k => v.update_timestamp if v.update_timestamp != null && length(v.update_timestamp) > 0 }
}

