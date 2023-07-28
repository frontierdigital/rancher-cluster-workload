resource "rancher2_cluster" "main" {
  for_each = { for c in var.clusters : c.name => c }

  name = "${var.zone}-${var.environment}-${lookup(local.short_locations, var.location)}-${replace(lower(each.value.name), "/[^a-z1-9]/", "")}-aks"

  aks_config_v2 {
    cloud_credential_id = data.rancher2_cloud_credential.main.id

    resource_group    = "${var.zone}-${var.environment}-${lookup(local.short_locations, var.location)}-${replace(lower(each.value.name), "/[^a-z1-9]/", "")}aks-rg"
    resource_location = var.location

    dns_prefix                    = "${var.zone}-${var.environment}-${lookup(local.short_locations, var.location)}-${replace(lower(each.value.name), "/[^a-z1-9]/", "")}"
    kubernetes_version            = each.value.kubernetes_version
    log_analytics_workspace_group = local.log_analytics_workspace_resource_group_name
    log_analytics_workspace_name  = local.log_analytics_workspace_name
    monitoring                    = true
    network_plugin                = "kubenet"

    node_pools {
      name = "system"

      orchestrator_version = each.value.kubernetes_version
      count                = each.value.node_count
      vm_size              = each.value.vm_size
    }
  }
}
