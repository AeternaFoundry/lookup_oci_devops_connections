variable "devops_connections_lookup" {
  description = <<EOT
Map of devops_connections_lookup, attributes below
Optional:
    - compartment_id
    - connection_type
    - display_name
    - project_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id  = optional(string)
    connection_type = optional(string)
    display_name    = optional(string)
    project_id      = optional(string)
    state           = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

