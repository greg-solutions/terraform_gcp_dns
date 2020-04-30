module "dns_zone" {
  source = "git::https://github.com/greg-solutions/terraform_gcp_dns.git"
  dns_name = "local.dns.com."
  name = "local-dns-com"
  networks = [
    module.vpc.network_self_link]
  type = "private"
}