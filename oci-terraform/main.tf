module "oke" {
  source  = "oracle-terraform-modules/oke/oci"
  version = "4.2.8"

  compartment_id = oci_identity_compartment.tf_compartment.id
  tenancy_id     = var.tenancy_ocid

  ssh_private_key_path = var.ssh_private_key_path
  ssh_public_key_path  = var.ssh_public_key_path

  label_prefix = var.name
  home_region  = var.region
  region       = var.region

  vcn_dns_label = "test"
  vcn_name      = "test"

  create_bastion_host = "false"

  create_operator = "false"
  node_pools      = var.node_pools
  # add additional parameters for availability_domains, oke etc as you need

  providers = {
    oci.home = oci.home
  }
}
