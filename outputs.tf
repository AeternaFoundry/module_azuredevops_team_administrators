output "team_administrators_id" {
  description = "Map of id values across all team_administrators, keyed the same as var.team_administrators"
  value       = { for k, v in azuredevops_team_administrators.team_administrators : k => v.id }
}
output "team_administrators_administrators" {
  description = "Map of administrators values across all team_administrators, keyed the same as var.team_administrators"
  value       = { for k, v in azuredevops_team_administrators.team_administrators : k => v.administrators }
}
output "team_administrators_mode" {
  description = "Map of mode values across all team_administrators, keyed the same as var.team_administrators"
  value       = { for k, v in azuredevops_team_administrators.team_administrators : k => v.mode }
}
output "team_administrators_project_id" {
  description = "Map of project_id values across all team_administrators, keyed the same as var.team_administrators"
  value       = { for k, v in azuredevops_team_administrators.team_administrators : k => v.project_id }
}
output "team_administrators_team_id" {
  description = "Map of team_id values across all team_administrators, keyed the same as var.team_administrators"
  value       = { for k, v in azuredevops_team_administrators.team_administrators : k => v.team_id }
}

