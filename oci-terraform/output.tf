output "compartment_name" {
  value = oci_identity_compartment.tf_compartment.name
}

output "compartment_id" {
  value = oci_identity_compartment.tf_compartment.id
}

output "k8s-cluster-id" {
  value = oci_containerengine_cluster.k8s_cluster.id
}