locals {
  log_analytics_workspace_name                = "${var.zone}-${var.environment}-${var.short_location}-main-law"
  log_analytics_workspace_resource_group_name = "${var.zone}-${var.environment}-${var.short_location}-loganalytics-rg"

  short_locations = {
    "uksouth" = "uks"
    "ukwest"  = "ukw"
  }

  tags = {
    Environment     = var.environment
    Set             = var.set
    WorkloadName    = var.workload_name
    WorkloadType    = var.workload_type
    WorkloadVersion = var.workload_version
  }
}
