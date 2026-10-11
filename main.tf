data "cloudflare_workers_custom_domain" "workers_custom_domain_lookup" {
  for_each = var.workers_custom_domain_lookup

  account_id = each.value.account_id
  domain_id  = each.value.domain_id
  filter     = each.value.filter
}

