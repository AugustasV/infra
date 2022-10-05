output "compartment_name" {
  value = oci_identity_compartment.tf_compartment.name
}

output "kubeconfig_path_oci" {
  value = module.oke.kubeconfig
}
