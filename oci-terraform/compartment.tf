resource "oci_identity_compartment" "tf_compartment" {
  compartment_id = var.tenancy_ocid
  description    = "test"
  name           = var.compartment_name
}
