resource "oci_core_security_list" "private_subnet" {
  compartment_id = oci_identity_compartment.tf_compartment.id
  vcn_id         = module.vcn.vcn_id
  display_name   = "${var.name}-private-subnet"
  egress_security_rules {
    stateless        = false
    destination      = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
    protocol         = "all"
  }

  ingress_security_rules {
    stateless   = false
    source      = "10.0.0.0/16"
    source_type = "CIDR_BLOCK"
    protocol    = "all"
  }
}
resource "oci_core_subnet" "vcn_private_subnet" {
  compartment_id             = oci_identity_compartment.tf_compartment.id
  vcn_id                     = module.vcn.vcn_id
  cidr_block                 = "10.0.1.0/24"
  route_table_id             = module.vcn.nat_route_id
  security_list_ids          = [oci_core_security_list.private_subnet.id]
  display_name               = "${var.name}-private-subnet"
  prohibit_public_ip_on_vnic = true
}


resource "oci_core_security_list" "public_subnet" {
  compartment_id = oci_identity_compartment.tf_compartment.id
  vcn_id         = module.vcn.vcn_id
  display_name   = "${var.name}-public-subnet"
  egress_security_rules {
    stateless        = false
    destination      = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
    protocol         = "all"
  }
  ingress_security_rules {
    stateless   = false
    source      = "10.0.0.0/16"
    source_type = "CIDR_BLOCK"
    protocol    = "all"
  }
  ingress_security_rules {
    stateless   = false
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    protocol    = "6"
    tcp_options {
      min = 6443
      max = 6443
    }
  }
}

resource "oci_core_subnet" "vcn_public_subnet" {
  compartment_id    = oci_identity_compartment.tf_compartment.id
  vcn_id            = module.vcn.vcn_id
  cidr_block        = "10.0.0.0/24"
  route_table_id    = module.vcn.ig_route_id
  security_list_ids = [oci_core_security_list.public_subnet.id]
  display_name      = "${var.name}-public-subnet"
}
