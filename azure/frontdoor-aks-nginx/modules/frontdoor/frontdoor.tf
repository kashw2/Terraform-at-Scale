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
  source                  = "./origin"
  app_origin_group_id     = module.origin_group.app_id
  grafana_origin_group_id = module.origin_group.grafana_id

  depends_on = [module.profile, module.origin_group]
}

module "endpoint" {
  source     = "./endpoint"
  profile_id = module.profile.id

  depends_on = [module.profile]
}

module "route" {
  source                   = "./route"
  app_custom_domain_id     = module.custom_domain.app_id
  app_endpoint_id          = module.endpoint.app_id
  app_group_id             = module.origin_group.app_id
  app_origin_id            = module.origin.app_id
  grafana_custom_domain_id = module.custom_domain.grafana_id
  grafana_endpoint_id      = module.endpoint.grafana_id
  grafana_group_id         = module.origin_group.grafana_id
  grafana_origin_id        = module.origin.grafana_id
}