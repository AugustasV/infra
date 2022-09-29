data "oci_identity_availability_domains" "ads" {
  compartment_id = oci_identity_compartment.tf_compartment.id
}
resource "oci_containerengine_node_pool" "oke_node_pool" {

  cluster_id     = oci_containerengine_cluster.k8s_cluster.id
  compartment_id = oci_identity_compartment.tf_compartment.id
  name           = "${var.name}-nodepool"
  node_shape     = var.oci_node_shape
  kubernetes_version = var.k8s_version
  node_config_details {
    placement_configs {
      availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
      subnet_id           = oci_core_security_list.private_subnet.id
    }
    size = 3
  }
  node_source_details {
    image_id = var.oci_core_image
    source_type = "image"
  }
  timeouts {
    create = "30m"
    delete = "30m"
  }
}