module "vcn" {
  source                       = "oracle-terraform-modules/vcn/oci"
  version                      = "3.5.1"
  compartment_id               = oci_identity_compartment.tf_compartment.id
  region                       = var.region
  internet_gateway_route_rules = null
  local_peering_gateways       = null
  nat_gateway_route_rules      = null
  vcn_name                     = "${var.name}-vcn"
  vcn_dns_label                = "${replace(var.name, "-", "")}vcn"
  vcn_cidrs                    = ["10.0.0.0/16"]
  create_internet_gateway      = true
  create_nat_gateway           = true
  create_service_gateway       = true
}