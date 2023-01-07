module "bootstrap" {
  source = "./modules/bootstrap"
}

module "resource_group" {
  source = "./modules/resourceGroup"
}

module "cluster" {
  source = "./modules/cluster"
  location = module.resource_group.location
  resource_group_name = module.resource_group.name

  depends_on = [module.bootstrap, module.resource_group]
}

provider "kubernetes" {
  host                   = module.cluster.host
  client_certificate     = base64decode(module.cluster.client_certificate)
  client_key             = base64decode(module.cluster.client_key)
  cluster_ca_certificate = base64decode(module.cluster.cluster_ca_certificate)
}

provider "helm" {
  kubernetes {
    host                   = module.cluster.host
    client_certificate     = base64decode(module.cluster.client_certificate)
    client_key             = base64decode(module.cluster.client_key)
    cluster_ca_certificate = base64decode(module.cluster.cluster_ca_certificate)
  }
}