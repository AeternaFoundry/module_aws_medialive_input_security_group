variable "medialive_input_security_groups" {
  description = <<EOT
Map of medialive_input_security_groups, attributes below
Required:
    - whitelist_rules (block):
        - cidr (required)
Optional:
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    region   = optional(string)
    tags     = optional(map(string))
    tags_all = optional(map(string))
    whitelist_rules = list(object({
      cidr = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.medialive_input_security_groups : (
        length(v.whitelist_rules) >= 1
      )
    ])
    error_message = "Each whitelist_rules list must contain at least 1 items"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

