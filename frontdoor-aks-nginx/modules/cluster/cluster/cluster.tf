resource "azurerm_kubernetes_cluster" "cluster" {
  location            = var.location
  name                = "cluster"
  resource_group_name = var.resource_group_name
  kubernetes_version  = "1.24.6"
  dns_prefix          = "cluster"

  local_account_disabled = false

  role_based_access_control_enabled = false

  private_cluster_enabled             = false
  private_cluster_public_fqdn_enabled = false

  default_node_pool {
    name            = "default"
    vm_size         = "Standard_B2ms"
    type            = "VirtualMachineScaleSets"
    node_count      = 1
    os_disk_size_gb = 30
    os_sku          = "Ubuntu"
    upgrade_settings {
      max_surge = 1
    }
    node_labels = {
      node = "default"
    }
  }

  oms_agent {
    log_analytics_workspace_id = var.workspace_id
  }

  identity {
    type = "SystemAssigned"
  }

  auto_scaler_profile {
    balance_similar_node_groups = false
    expander                    = "priority"
  }

  network_profile {
    load_balancer_sku = "standard"
    network_plugin    = "kubenet"
  }

}