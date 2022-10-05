terraform {
  required_providers {
    oci = {
      source                = "oracle/oci"
      configuration_aliases = [oci.home]
      version               = "4.95.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.7.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "oci" {
  fingerprint  = var.fingerprint
  region       = var.region
  tenancy_ocid = var.tenancy_ocid
  user_ocid    = var.user_ocid
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  private_key_path = "~/private_key"
  region           = var.region
  fingerprint      = var.fingerprint
  alias            = "home"
}

provider "helm" {
  kubernetes {
    config_path = module.oke.kubeconfig
  }
}
# provider "kubernetes" {
#   cluster_ca_certificate = local.cluster_cert
#   host                   = local.cluster_endpoint
#   exec {
#     api_version = "client.authentication.k8s.io/v1beta1"
#     command     = local.exec_cli
#     args        = local.exec_args
#   }
# }
# provider "helm" {
#   kubernetes {
#     cluster_ca_certificate = local.cluster_cert
#     host                   = local.cluster_endpoint
#     exec {
#       api_version = "client.authentication.k8s.io/v1beta1"
#       command     = local.exec_cli
#       args        = local.exec_args
#     }
#   }
# }
