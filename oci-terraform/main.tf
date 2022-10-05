terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "4.95.0"
    }
  }
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  private_key_path = "~/private_key"
  region           = var.region
  fingerprint      = var.fingerprint
}
