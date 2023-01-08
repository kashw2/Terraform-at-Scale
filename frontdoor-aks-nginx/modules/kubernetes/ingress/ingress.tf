resource "kubernetes_ingress_v1" "ingress" {
  metadata {
    name      = "ingress"
    namespace = var.namespace
    annotations = {
      "kubernetes.io/ingress.class"           = "nginx"
      "nginx.ingress.kubernetes.io/use-regex" = true
    }
  }
  spec {
    default_backend {
      service {
        name = "nginx"
        port {
          number = 80
        }
      }
    }
  }
}