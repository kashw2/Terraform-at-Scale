output "application_name" {
  value = kubernetes_namespace_v1.application.metadata.0.name
}

output "prometheus_name" {
  value = kubernetes_namespace_v1.prometheus.metadata.0.name
}