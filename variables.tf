variable "everyone_group_lookup" {
  description = <<EOT
Map of everyone_group_lookup, attributes below
Optional:
    - include_users
EOT

  type = map(object({
    include_users = optional(bool)
  }))
}

