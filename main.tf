resource "google_dns_managed_zone" "private-zone" {
  name        = var.name
  dns_name    = var.dns_name
  description = var.description
  visibility = var.type

  labels = var.labels

  private_visibility_config {
    dynamic "networks" {
      for_each = var.networks
      content {
        network_url = networks.value
      }
    }
  }
}