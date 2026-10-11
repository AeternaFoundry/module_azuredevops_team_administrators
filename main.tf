resource "azuredevops_team_administrators" "team_administrators" {
  for_each = var.team_administrators

  administrators = each.value.administrators
  project_id     = each.value.project_id
  team_id        = each.value.team_id
  mode           = each.value.mode

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

