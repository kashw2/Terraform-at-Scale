resource "kubernetes_namespace_v1" "application" {
  metadata {
    name = "application"
  }
}