data "oci_identity_availability_domains" "ads" {
  compartment_id = oci_identity_compartment.tf_compartment.id
}

data "oci_containerengine_cluster_kube_config" "kubeconfig" {
    cluster_id = oci_containerengine_cluster.k8s_cluster.id
}
