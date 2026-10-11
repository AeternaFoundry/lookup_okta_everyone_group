output "everyone_group_lookup_id" {
  description = "Map of id values across all everyone_group_lookup, keyed the same as var.everyone_group_lookup except keys with no id are omitted"
  value       = { for k, v in data.okta_everyone_group.everyone_group_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "everyone_group_lookup_description" {
  description = "Map of description values across all everyone_group_lookup, keyed the same as var.everyone_group_lookup except keys with no description are omitted"
  value       = { for k, v in data.okta_everyone_group.everyone_group_lookup : k => v.description if v.description != null && length(v.description) > 0 }
}
output "everyone_group_lookup_include_users" {
  description = "Map of include_users values across all everyone_group_lookup, keyed the same as var.everyone_group_lookup except keys with no include_users are omitted"
  value       = { for k, v in data.okta_everyone_group.everyone_group_lookup : k => v.include_users if v.include_users != null }
}

