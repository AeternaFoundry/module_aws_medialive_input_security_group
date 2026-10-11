output "medialive_input_security_groups_id" {
  description = "Map of id values across all medialive_input_security_groups, keyed the same as var.medialive_input_security_groups"
  value       = { for k, v in aws_medialive_input_security_group.medialive_input_security_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "medialive_input_security_groups_arn" {
  description = "Map of arn values across all medialive_input_security_groups, keyed the same as var.medialive_input_security_groups"
  value       = { for k, v in aws_medialive_input_security_group.medialive_input_security_groups : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "medialive_input_security_groups_inputs" {
  description = "Map of inputs values across all medialive_input_security_groups, keyed the same as var.medialive_input_security_groups"
  value       = { for k, v in aws_medialive_input_security_group.medialive_input_security_groups : k => v.inputs if v.inputs != null && length(v.inputs) > 0 }
}
output "medialive_input_security_groups_region" {
  description = "Map of region values across all medialive_input_security_groups, keyed the same as var.medialive_input_security_groups"
  value       = { for k, v in aws_medialive_input_security_group.medialive_input_security_groups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "medialive_input_security_groups_tags" {
  description = "Map of tags values across all medialive_input_security_groups, keyed the same as var.medialive_input_security_groups"
  value       = { for k, v in aws_medialive_input_security_group.medialive_input_security_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "medialive_input_security_groups_tags_all" {
  description = "Map of tags_all values across all medialive_input_security_groups, keyed the same as var.medialive_input_security_groups"
  value       = { for k, v in aws_medialive_input_security_group.medialive_input_security_groups : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "medialive_input_security_groups_whitelist_rules" {
  description = "Map of whitelist_rules values across all medialive_input_security_groups, keyed the same as var.medialive_input_security_groups"
  value       = { for k, v in aws_medialive_input_security_group.medialive_input_security_groups : k => v.whitelist_rules if v.whitelist_rules != null && length(v.whitelist_rules) > 0 }
}

