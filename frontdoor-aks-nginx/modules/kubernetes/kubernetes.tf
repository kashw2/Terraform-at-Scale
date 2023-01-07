module "namespace" {
  source = "./namespace"
}

module "helm" {
  source               = "./helm"
  prometheus_namespace = module.namespace.prometheus

  depends_on = [module.namespace]
}

module "deployment" {
  source    = "./deployment"
  namespace = module.namespace.application
  node_name = var.node_name

  depends_on = [module.namespace]
}

module "service" {
  source = "./service"
  namespace = module.namespace.application

  depends_on = [module.namespace, module.deployment]
}