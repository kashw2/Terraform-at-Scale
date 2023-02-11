module "environment" {
  source               = "./environment"
  grafana_workspace_id = var.grafana_workspace_id
  location             = var.location
  nginx_workspace_id   = var.nginx_workspace_id
  resource_group_name  = var.resource_group_name
}

module "app" {
  source                 = "./app"
  grafana_workspace_id   = var.grafana_workspace_id
  location               = var.location
  nginx_workspace_id     = var.nginx_workspace_id
  resource_group_name    = var.resource_group_name
  grafana_environment_id = module.environment.grafana_id
  nginx_environment_id   = module.environment.nginx_id

  depends_on = [module.environment]
}