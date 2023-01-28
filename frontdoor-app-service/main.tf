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