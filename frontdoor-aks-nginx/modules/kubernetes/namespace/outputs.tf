output "application" {
  value = kubernetes_namespace_v1.application.metadata.0.name
}

output "prometheus" {
  value = kubernetes_namespace_v1.prometheus.metadata.0.name
}