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
  source              = "./origin"
  dev_au_service_url  = var.dev_au_service_url
  dev_us_service_url  = var.dev_us_service_url
  dev_group_id        = module.origin_group.dev_id
  prod_au_service_url = var.prod_au_service_url
  prod_us_service_url = var.prod_us_service_url
  prod_group_id       = module.origin_group.prod_id
  test_au_service_url = var.test_au_service_url
  test_us_service_url = var.test_us_service_url
  test_group_id       = module.origin_group.test_id

  depends_on = [module.profile, module.origin_group]
}

module "endpoint" {
  source     = "./endpoint"
  profile_id = module.profile.id

  depends_on = [module.profile, module.origin_group, module.origin]
}

module "route" {
  source                = "./route"
  prod_custom_domain_id = module.custom_domain.prod_id
  prod_endpoint_id      = module.endpoint.prod_id
  prod_au_origin_id     = module.origin.prod_au_id
  test_custom_domain_id = module.custom_domain.test_id
  test_endpoint_id      = module.endpoint.test_id
  test_au_origin_id     = module.origin.test_au_id
  dev_custom_domain_id  = module.custom_domain.dev_id
  dev_endpoint_id       = module.endpoint.dev_id
  dev_au_origin_id      = module.origin.dev_au_id
  prod_us_origin_id     = module.origin.prod_us_id
  test_us_origin_id     = module.origin.test_us_id
  dev_us_origin_id      = module.origin.dev_us_id
  dev_group_id          = module.origin_group.dev_id
  prod_group_id         = module.origin_group.prod_id
  test_group_id         = module.origin_group.test_id

  depends_on = [module.custom_domain, module.origin_group, module.origin, module.endpoint]
}