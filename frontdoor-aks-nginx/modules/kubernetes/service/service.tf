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

resource "kubernetes_service_v1" "app_1" {
  metadata {
    name      = "app1"
    namespace = var.namespace
  }
  spec {
    type = "ClusterIP"
    port {
      port = 3000
      target_port = 3000
    }
    selector = {
      app = "app1"
    }
  }
}

resource "kubernetes_service_v1" "app_2" {
  metadata {
    name      = "app2"
    namespace = var.namespace
  }
  spec {
    type = "ClusterIP"
    port {
      port = 80
    }
    selector = {
      app = "app2"
    }
  }
}