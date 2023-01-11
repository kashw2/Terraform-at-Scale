resource "kubernetes_ingress_v1" "ingress" {
  metadata {
    name        = "ingress"
    namespace   = var.namespace
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

    rule {
      host = "app.mydomain.com"
      http {
        path {
          path      = "/*"
          path_type = "ImplementationSpecific"
          backend {
            service {
              name = "app"
              port {
                number = 3000
              }
            }
          }
        }
      }
    }

    rule {
      host = "grafana.mydomain.com"
      http {
        path {
          path      = "/*"
          path_type = "ImplementationSpecific"
          backend {
            service {
              name = "grafana"
              port {
                number = 80
              }
            }
          }
        }
      }
    }

  }
}