resource "google_compute_global_vm_extension_policy" "compute_global_vm_extension_policies" {
  for_each = var.compute_global_vm_extension_policies

  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  priority        = each.value.priority
  project         = each.value.project

  dynamic "extension_policies" {
    for_each = each.value.extension_policies
    content {
      extension_name = extension_policies.value.extension_name
      pinned_version = extension_policies.value.pinned_version
      string_config  = extension_policies.value.string_config
    }
  }

  rollout_operation {
    rollout_input {
      conflict_behavior       = each.value.rollout_operation.rollout_input.conflict_behavior
      name                    = each.value.rollout_operation.rollout_input.name
      predefined_rollout_plan = each.value.rollout_operation.rollout_input.predefined_rollout_plan
      retry_uuid              = each.value.rollout_operation.rollout_input.retry_uuid
    }
  }

  dynamic "instance_selectors" {
    for_each = each.value.instance_selectors != null ? each.value.instance_selectors : []
    content {
      dynamic "label_selector" {
        for_each = instance_selectors.value.label_selector != null ? [instance_selectors.value.label_selector] : []
        content {
          inclusion_labels = label_selector.value.inclusion_labels
        }
      }
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

