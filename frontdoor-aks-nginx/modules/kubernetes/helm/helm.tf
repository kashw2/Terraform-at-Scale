resource "helm_release" "ingress" {
  repository      = "https://kubernetes.github.io/ingress-nginx"
  namespace       = "default"
  chart           = "ingress-nginx"
  cleanup_on_fail = true
  replace         = true
  atomic          = true
  recreate_pods   = true
  version         = "4.2.1"
  set {
    name  = "controller.replicaCount"
    value = "1"
  }
  set {
    name  = "service.type"
    value = "ClusterIP"
  }
  name = "ingress"
}

resource "helm_release" "prometheus" {
  repository      = "https://prometheus-community.github.io/helm-charts"
  namespace       = var.prometheus_namespace
  chart           = "prometheus"
  cleanup_on_fail = true
  replace         = true
  atomic          = true
  recreate_pods   = true
  name            = var.prometheus_namespace
}