module "namespace" {
  source = "./namespace"
}

module "helm" {
  source               = "./helm"
  prometheus_namespace = module.namespace.prometheus_name

  depends_on = [module.namespace]
}