module "au" {
  source              = "./au"
  location            = var.au_location
  resource_group_name = var.au_resource_group_name
}

module "us" {
  source              = "./us"
  location            = var.us_location
  resource_group_name = var.us_resource_group_name
}