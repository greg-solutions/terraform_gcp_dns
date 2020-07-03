resource "google_dns_managed_zone" "dns_zone" {
  name        = var.name
  dns_name    = var.dns_name
  description = var.description
  visibility = var.type

  labels = var.labels

  dynamic "private_visibility_config" {
    for_each = var.networks
    content {
      networks {
        network_url = private_visibility_config.value
      }
    }
  }
}