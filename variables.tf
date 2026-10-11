variable "project_access_tokens_lookup" {
  description = <<EOT
Map of project_access_tokens_lookup, attributes below
Required:
    - project
Optional:
    - state
EOT

  type = map(object({
    project = string
    state   = optional(string)
  }))
}

