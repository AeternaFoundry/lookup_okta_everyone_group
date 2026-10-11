data "okta_everyone_group" "everyone_group_lookup" {
  for_each = var.everyone_group_lookup

  include_users = each.value.include_users
}

