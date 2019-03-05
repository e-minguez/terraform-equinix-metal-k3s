module "cluster_facility" {
  source = "modules/cluster_pool"

  cluster_name         = "primary"
  count                = "${var.count}"
  plan_primary         = "${var.plan_primary}"
  plan_node            = "${var.plan_node}"
  facility             = "${var.facility}"
  auth_token           = "${var.auth_token}"
  project_id           = "${packet_project.k3s_packet.id}"
}


