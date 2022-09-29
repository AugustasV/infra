terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "4.95.0"
    }
  }
  #   backend "s3" {
  #     bucket                      = "terraform-states"
  #     key                         = "networking/terraform.tfstate"
  #     region                      = var.re
  #     endpoint                    = "https://acme.compat.objectstorage.us-phoenix-1.oraclecloud.com"
  #     shared_credentials_file     = "../terraform-states_bucket_credentials"
  #     skip_region_validation      = true
  #     skip_credentials_validation = true
  #     skip_metadata_api_check     = true
  #     force_path_style            = true
  #   }
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  private_key_path = "~/private_key"
  region           = var.region
  fingerprint      = var.fingerprint
}
