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
