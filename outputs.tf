output "team_administrators_id" {
  description = "Map of id values across all team_administrators, keyed the same as var.team_administrators except keys with no id are omitted"
  value       = { for k, v in azuredevops_team_administrators.team_administrators : k => v.id if v.id != null && length(v.id) > 0 }
}
output "team_administrators_administrators" {
  description = "Map of administrators values across all team_administrators, keyed the same as var.team_administrators except keys with no administrators are omitted"
  value       = { for k, v in azuredevops_team_administrators.team_administrators : k => v.administrators if v.administrators != null && length(v.administrators) > 0 }
}
output "team_administrators_mode" {
  description = "Map of mode values across all team_administrators, keyed the same as var.team_administrators except keys with no mode are omitted"
  value       = { for k, v in azuredevops_team_administrators.team_administrators : k => v.mode if v.mode != null && length(v.mode) > 0 }
}
output "team_administrators_project_id" {
  description = "Map of project_id values across all team_administrators, keyed the same as var.team_administrators except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_team_administrators.team_administrators : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "team_administrators_team_id" {
  description = "Map of team_id values across all team_administrators, keyed the same as var.team_administrators except keys with no team_id are omitted"
  value       = { for k, v in azuredevops_team_administrators.team_administrators : k => v.team_id if v.team_id != null && length(v.team_id) > 0 }
}

