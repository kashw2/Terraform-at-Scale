module "au" {
  source           = "./au"
  dev_group_id     = var.dev_group_id
  prod_group_id    = var.prod_group_id
  test_group_id    = var.test_group_id
  dev_service_url  = var.dev_au_service_url
  prod_service_url = var.prod_au_service_url
  test_service_url = var.test_au_service_url
}

module "us" {
  source           = "./us"
  dev_group_id     = var.dev_group_id
  prod_group_id    = var.prod_group_id
  test_group_id    = var.test_group_id
  dev_service_url  = var.dev_us_service_url
  prod_service_url = var.prod_us_service_url
  test_service_url = var.test_us_service_url
}