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

module "service_plan" {
  source                 = "./modules/servicePlan"
  au_location            = module.resource_group.au_location
  au_resource_group_name = module.resource_group.au_name
  us_location            = module.resource_group.us_location
  us_resource_group_name = module.resource_group.us_name

  depends_on = [module.resource_group]
}

module "function_app" {
  source                 = "./modules/functionApp"
  au_location            = module.resource_group.au_location
  au_resource_group_name = module.resource_group.au_name
  au_service_plan_id     = module.service_plan.au_id
  us_location            = module.resource_group.us_location
  us_resource_group_name = module.resource_group.us_name
  us_service_plan_id     = module.service_plan.us_id

  depends_on = [module.resource_group, module.service_plan]
}

module "frontdoor" {
  source              = "./modules/frontdoor"
  resource_group_name = module.resource_group.au_name
  dev_au_service_url  = module.function_app.dev_au_service_url
  dev_us_service_url  = module.function_app.dev_us_service_url
  test_au_service_url = module.function_app.test_au_service_url
  test_us_service_url = module.function_app.test_us_service_url
  prod_au_service_url = module.function_app.prod_au_service_url
  prod_us_service_url = module.function_app.prod_us_service_url

  depends_on = [module.bootstrap, module.resource_group, module.function_app]
}