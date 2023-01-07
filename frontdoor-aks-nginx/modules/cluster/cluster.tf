module "cluster" {
  source              = "./cluster"
  location            = var.location
  resource_group_name = var.resource_group_name
  workspace_id        = var.workspace_id
}