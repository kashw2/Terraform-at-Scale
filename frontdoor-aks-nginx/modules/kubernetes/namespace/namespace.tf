resource "kubernetes_namespace_v1" "application" {
  metadata {
    name = "application"
  }
}

resource "kubernetes_namespace_v1" "prometheus" {
  metadata {
    name = "prometheus"
  }
}