module "au" {
  source              = "./au"
  dev_workspace_id    = var.dev_au_workspace_id
  location            = var.au_location
  prod_workspace_id   = var.prod_au_workspace_id
  resource_group_name = var.au_resource_group_name
  test_workspace_id   = var.test_au_workspace_id
}

module "us" {
  source              = "./us"
  dev_workspace_id    = var.dev_us_workspace_id
  location            = var.us_location
  prod_workspace_id   = var.prod_us_workspace_id
  resource_group_name = var.us_resource_group_name
  test_workspace_id   = var.test_us_workspace_id
}