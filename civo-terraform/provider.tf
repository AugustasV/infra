terraform {
  required_providers {
    civo = {
      source  = "civo/civo"
      version = "1.0.24"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.7.0"
    }
  }
  required_version = ">= 1.3.1"
}

provider "civo" {
  token  = var.civo_token
  region = var.region
}
provider "helm" {
  //Civo terraform provider is pretty simple, doesn't support output values from resources
  // with google or aws I would export cluster_ca_certificate, cluster token
  // So I don't need to use local_resource - it's not good practice.
  kubernetes {
    config_path = "./kubeconfig.civo"
  }
}
