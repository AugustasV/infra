terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "4.95.0"
    }
    local = {
      version = "~> 2.1"
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

provider "helm" {
  kubernetes {
    cluster_ca_certificate = local.cluster_cert
    host                   = local.cluster_endpoint
    exec {
      api_version = "client.authentication.k8s.io/v1beta1"
      command     = local.exec_cli
      args        = local.exec_args
    }
  }
}

