variable "workers_custom_domain_lookup" {
  description = <<EOT
Map of workers_custom_domain_lookup, attributes below
Optional:
    - account_id
    - domain_id
    - filter
EOT

  type = map(object({
    account_id = optional(string)
    domain_id  = optional(string)
    filter = optional(object({
      environment = optional(string)
      hostname    = optional(string)
      service     = optional(string)
      zone_id     = optional(string)
      zone_name   = optional(string)
    }))
  }))
}

