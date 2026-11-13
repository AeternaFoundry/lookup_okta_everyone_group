output "everyone_group_lookup_id" {
  description = "Map of id values across all everyone_group_lookup, keyed the same as var.everyone_group_lookup"
  value       = { for k, v in data.okta_everyone_group.everyone_group_lookup : k => v.id }
}
output "everyone_group_lookup_description" {
  description = "Map of description values across all everyone_group_lookup, keyed the same as var.everyone_group_lookup"
  value       = { for k, v in data.okta_everyone_group.everyone_group_lookup : k => v.description }
}
output "everyone_group_lookup_include_users" {
  description = "Map of include_users values across all everyone_group_lookup, keyed the same as var.everyone_group_lookup"
  value       = { for k, v in data.okta_everyone_group.everyone_group_lookup : k => v.include_users }
}

