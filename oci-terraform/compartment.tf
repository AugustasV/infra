resource "oci_identity_compartment" "tf_compartment" {
  compartment_id = var.tenancy_ocid
  description    = "Compratment creation"
  name           = var.compartment_name
}
