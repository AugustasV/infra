data "oci_identity_availability_domains" "ads" {
  compartment_id = oci_identity_compartment.tf_compartment.id
}