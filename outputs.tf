output "id" {
  value = google_dns_managed_zone.dns_zone.id
}
output "nameservers" {
  value = google_dns_managed_zone.dns_zone.name_servers
}
output "dns_name" {
  value = google_dns_managed_zone.dns_zone.dns_name
}
output "name" {
  value = google_dns_managed_zone.dns_zone.name
}