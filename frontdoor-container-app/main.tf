module "bootstrap" {
  source = "./modules/bootstrap"
}

module "resource_group" {
  source = "./modules/resourceGroup"
}

module "log_analytics_workspace" {
  source              = "./modules/logAnalyticsWorkspace"
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name

  depends_on = [module.resource_group]
}

module "application_insights" {
  source               = "./modules/applicationInsights"
  grafana_workspace_id = module.log_analytics_workspace.grafana_id
  location             = module.resource_group.location
  nginx_workspace_id   = module.log_analytics_workspace.nginx_id
  resource_group_name  = module.resource_group.name

  depends_on = [module.resource_group, module.log_analytics_workspace]
}
