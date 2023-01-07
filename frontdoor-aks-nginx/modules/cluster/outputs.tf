output "client_certificate" {
  value = module.cluster.client_certificate
}

output "client_key" {
  value = module.cluster.client_key
}

output "cluster_ca_certificate" {
  value = module.cluster.cluster_ca_certificate
}

output "host" {
  value = module.cluster.host
}