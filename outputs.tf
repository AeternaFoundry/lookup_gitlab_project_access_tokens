output "project_access_tokens_lookup_id" {
  description = "Map of id values across all project_access_tokens_lookup, keyed the same as var.project_access_tokens_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_project_access_tokens.project_access_tokens_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_access_tokens_lookup_access_tokens" {
  description = "Map of access_tokens values across all project_access_tokens_lookup, keyed the same as var.project_access_tokens_lookup except keys with no access_tokens are omitted"
  value       = { for k, v in data.gitlab_project_access_tokens.project_access_tokens_lookup : k => v.access_tokens if v.access_tokens != null && length(v.access_tokens) > 0 }
}
output "project_access_tokens_lookup_project" {
  description = "Map of project values across all project_access_tokens_lookup, keyed the same as var.project_access_tokens_lookup except keys with no project are omitted"
  value       = { for k, v in data.gitlab_project_access_tokens.project_access_tokens_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}
output "project_access_tokens_lookup_state" {
  description = "Map of state values across all project_access_tokens_lookup, keyed the same as var.project_access_tokens_lookup except keys with no state are omitted"
  value       = { for k, v in data.gitlab_project_access_tokens.project_access_tokens_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

