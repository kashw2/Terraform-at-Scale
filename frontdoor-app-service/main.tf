module "bootstrap" {
  source = "./modules/bootstrap"
}

module "resource_group" {
  source = "./modules/resourceGroup"
}

module "log_analytics_workspace" {
  source                 = "./modules/logAnalyticsWorkspace"
  au_location            = module.resource_group.au_location
  au_resource_group_name = module.resource_group.au_name
  us_location            = module.resource_group.us_location
  us_resource_group_name = module.resource_group.us_name

  depends_on = [module.resource_group]
}

module "application_insights" {
  source                 = "./modules/applicationInsights"
  au_location            = module.resource_group.au_location
  au_resource_group_name = module.resource_group.au_name
  dev_au_workspace_id    = module.log_analytics_workspace.dev_au_workspace_id
  dev_us_workspace_id    = module.log_analytics_workspace.dev_us_workspace_id
  prod_au_workspace_id   = module.log_analytics_workspace.prod_au_workspace_id
  prod_us_workspace_id   = module.log_analytics_workspace.prod_us_workspace_id
  test_au_workspace_id   = module.log_analytics_workspace.test_au_workspace_id
  test_us_workspace_id   = module.log_analytics_workspace.test_us_workspace_id
  us_location            = module.resource_group.us_location
  us_resource_group_name = module.resource_group.us_name

  depends_on = [module.resource_group, module.log_analytics_workspace]
}