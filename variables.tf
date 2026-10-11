variable "compute_global_vm_extension_policies" {
  description = <<EOT
Map of compute_global_vm_extension_policies, attributes below
Required:
    - name
    - extension_policies (block):
        - extension_name (required)
        - pinned_version (optional)
        - string_config (optional)
    - rollout_operation (block):
        - rollout_input (required, block):
            - conflict_behavior (optional)
            - name (optional)
            - predefined_rollout_plan (optional)
            - retry_uuid (optional)
Optional:
    - deletion_policy
    - description
    - priority
    - project
    - instance_selectors (block):
        - label_selector (optional, block):
            - inclusion_labels (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name            = string
    deletion_policy = optional(string)
    description     = optional(string)
    priority        = optional(number)
    project         = optional(string)
    extension_policies = list(object({
      extension_name = string
      pinned_version = optional(string)
      string_config  = optional(string)
    }))
    rollout_operation = object({
      rollout_input = object({
        conflict_behavior       = optional(string)
        name                    = optional(string)
        predefined_rollout_plan = optional(string)
        retry_uuid              = optional(string)
      })
    })
    instance_selectors = optional(list(object({
      label_selector = optional(object({
        inclusion_labels = optional(map(string))
      }))
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.compute_global_vm_extension_policies : (
        length(v.extension_policies) >= 1
      )
    ])
    error_message = "Each extension_policies list must contain at least 1 items"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

