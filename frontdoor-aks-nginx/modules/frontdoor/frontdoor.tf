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
  app1_origin_group_id = module.origin_group.app1_id
  app2_origin_group_id = module.origin_group.app2_id

  depends_on = [module.profile, module.origin_group]
}