output "id" {
  value = google_dns_managed_zone.private-zone.id
}
output "nameservers" {
  value = google_dns_managed_zone.private-zone.name_servers
}
output "dns_name" {
  value = google_dns_managed_zone.private-zone.dns_name
}