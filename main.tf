data "gitlab_project_access_tokens" "project_access_tokens_lookup" {
  for_each = var.project_access_tokens_lookup

  project = each.value.project
  state   = each.value.state
}

