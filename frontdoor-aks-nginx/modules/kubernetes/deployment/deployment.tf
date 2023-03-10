resource "kubernetes_deployment_v1" "nginx" {
  metadata {
    labels = {
      "app.kubernetes.io/name"       = "nginx"
      "app.kubernetes.io/version"    = "latest"
      "app.kubernetes.io/component"  = "Default"
      "app.kubernetes.io/part-of"    = "Terraform-at-Scale"
      "app.kubernetes.io/managed-by" = "Terraform"
    }
    name      = "nginx"
    namespace = var.namespace
  }
  spec {
    replicas               = 1
    revision_history_limit = 1
    selector {
      match_labels = {
        app = "nginx"
      }
    }
    strategy {
      type = "RollingUpdate"
      rolling_update {
        max_unavailable = 0
        max_surge       = "50%"
      }
    }
    template {
      metadata {
        labels = {
          app = "nginx"
        }
        namespace = var.namespace
      }
      spec {
        node_selector = {
          node = var.node_name
        }
        container {
          name              = "nginx"
          image             = "nginx:latest"
          image_pull_policy = "Always"
          port {
            container_port = 80
          }
          liveness_probe {
            http_get {
              path = "/"
              port = 80
            }
            failure_threshold     = 1
            success_threshold     = 1
            period_seconds        = 60
            initial_delay_seconds = 30
            timeout_seconds       = 30
          }
          readiness_probe {
            http_get {
              path = "/"
              port = 80
            }
            failure_threshold     = 1
            success_threshold     = 1
            period_seconds        = 60
            initial_delay_seconds = 30
            timeout_seconds       = 30
          }
          security_context {
            privileged                 = false
            allow_privilege_escalation = false
          }
        }
      }
    }
  }
}

resource "kubernetes_deployment_v1" "grafana" {
  metadata {
    labels = {
      "app.kubernetes.io/name"       = "grafana"
      "app.kubernetes.io/version"    = "latest"
      "app.kubernetes.io/component"  = "Default"
      "app.kubernetes.io/part-of"    = "Terraform-at-Scale"
      "app.kubernetes.io/managed-by" = "Terraform"
    }
    name      = "grafana"
    namespace = var.namespace
  }
  spec {
    replicas               = 1
    revision_history_limit = 1
    selector {
      match_labels = {
        app = "grafana"
      }
    }
    strategy {
      type = "RollingUpdate"
      rolling_update {
        max_unavailable = 0
        max_surge       = "50%"
      }
    }
    template {
      metadata {
        labels = {
          app = "grafana"
        }
        namespace = var.namespace
      }
      spec {
        node_selector = {
          node = var.node_name
        }
        container {
          name              = "grafana"
          image             = "grafana/grafana:latest"
          image_pull_policy = "Always"
          port {
            container_port = 3000
          }
          liveness_probe {
            http_get {
              path = "/"
              port = 3000
            }
            failure_threshold     = 1
            success_threshold     = 1
            period_seconds        = 60
            initial_delay_seconds = 30
            timeout_seconds       = 30
          }
          readiness_probe {
            http_get {
              path = "/"
              port = 3000
            }
            failure_threshold     = 1
            success_threshold     = 1
            period_seconds        = 60
            initial_delay_seconds = 30
            timeout_seconds       = 30
          }
          security_context {
            privileged                 = false
            allow_privilege_escalation = false
          }
        }
      }
    }
  }
}


resource "kubernetes_deployment_v1" "app" {
  metadata {
    labels = {
      "app.kubernetes.io/name"       = "app"
      "app.kubernetes.io/version"    = "latest"
      "app.kubernetes.io/component"  = "Default"
      "app.kubernetes.io/part-of"    = "Terraform-at-Scale"
      "app.kubernetes.io/managed-by" = "Terraform"
    }
    name      = "app"
    namespace = var.namespace
  }
  spec {
    replicas               = 1
    revision_history_limit = 1
    selector {
      match_labels = {
        app = "app"
      }
    }
    strategy {
      type = "RollingUpdate"
      rolling_update {
        max_unavailable = 0
        max_surge       = "50%"
      }
    }
    template {
      metadata {
        labels = {
          app = "app"
        }
        namespace = var.namespace
      }
      spec {
        node_selector = {
          node = var.node_name
        }
        container {
          name              = "hello-world"
          image             = "tutum/hello-world:latest"
          image_pull_policy = "Always"
          port {
            container_port = 80
          }
          liveness_probe {
            http_get {
              path = "/"
              port = 80
            }
            failure_threshold     = 1
            success_threshold     = 1
            period_seconds        = 60
            initial_delay_seconds = 30
            timeout_seconds       = 30
          }
          readiness_probe {
            http_get {
              path = "/"
              port = 80
            }
            failure_threshold     = 1
            success_threshold     = 1
            period_seconds        = 60
            initial_delay_seconds = 30
            timeout_seconds       = 30
          }
          security_context {
            privileged                 = false
            allow_privilege_escalation = false
          }
        }
      }
    }
  }
}

