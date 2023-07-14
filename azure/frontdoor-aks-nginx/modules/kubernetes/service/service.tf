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

resource "kubernetes_service_v1" "app" {
  metadata {
    name      = "app"
    namespace = var.namespace
  }
  spec {
    type = "ClusterIP"
    port {
      port        = 3000
      target_port = 3000
    }
    selector = {
      app = "app"
    }
  }
}

resource "kubernetes_service_v1" "grafana" {
  metadata {
    name      = "grafana"
    namespace = var.namespace
  }
  spec {
    type = "ClusterIP"
    port {
      port = 80
    }
    selector = {
      app = "grafana"
    }
  }
}