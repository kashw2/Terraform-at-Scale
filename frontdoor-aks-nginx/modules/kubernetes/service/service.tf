resource "kubernetes_service_v1" "nginx" {
  metadata {
    name      = "nginx"
    namespace = var.namespace
  }
  spec {
    type = "ClusterIP"
    port {
      port = 80
    }
    selector = {
      app = "nginx"
    }
  }
}