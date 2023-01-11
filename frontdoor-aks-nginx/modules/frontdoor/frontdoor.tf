module "profile" {
  source              = "./profile"
  resource_group_name = var.resource_group_name
}

module "custom_domain" {
  source     = "./customDomain"
  profile_id = module.profile.id

  depends_on = [module.profile]
}

module "origin_group" {
  source     = "./originGroup"
  profile_id = module.profile.id

  depends_on = [module.profile]
}

module "origin" {
  source = "./origin"
  app_origin_group_id = module.origin_group.app_id
  grafana_origin_group_id = module.origin_group.grafana_id

  depends_on = [module.profile, module.origin_group]
}

module "endpoint" {
  source = "./endpoint"
  profile_id = module.profile.id

  depends_on = [module.profile]
}