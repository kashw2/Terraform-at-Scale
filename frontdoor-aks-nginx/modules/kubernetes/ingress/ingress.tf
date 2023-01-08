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
      host = "20.227.13.61"
      http {
        path {
          path      = "/*"
          path_type = "ImplementationSpecific"
          backend {
            service {
              name = "app1"
              port {
                number = 3000
              }
            }
          }
        }
      }
    }

    rule {
      host = "app2.mydomain.com"
      http {
        path {
          path      = "/*"
          path_type = "ImplementationSpecific"
          backend {
            service {
              name = "app2"
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