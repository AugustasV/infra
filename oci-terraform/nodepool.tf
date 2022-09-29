resource "oci_containerengine_node_pool" "oke_node_pool" {
  cluster_id         = oci_containerengine_cluster.k8s_cluster.id
  compartment_id     = oci_identity_compartment.tf_compartment.id
  name               = "${var.name}-nodepool"
  node_shape         = var.oci_node_shape
  kubernetes_version = var.k8s_version
  node_config_details {
    placement_configs {
      availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
      subnet_id           = oci_core_subnet.vcn_private_subnet.id
    }
    placement_configs {
      availability_domain = data.oci_identity_availability_domains.ads.availability_domains[1].name
      subnet_id           = oci_core_subnet.vcn_private_subnet.id
    }
    placement_configs {
      availability_domain = data.oci_identity_availability_domains.ads.availability_domains[2].name
      subnet_id           = oci_core_subnet.vcn_private_subnet.id
    }
    size = 2
  }
  node_shape_config {
    memory_in_gbs = 16
    ocpus         = 1
  }
  node_source_details {
    image_id    = var.oci_core_image
    source_type = "image"
  }
  timeouts {
    create = "30m"
    delete = "30m"
  }
}