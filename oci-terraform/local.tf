locals {

  kubeconfig_str = data.oci_containerengine_cluster_kube_config.kubeconfig.content
  kubeconfig = yamldecode( local.kubeconfig_str )

  exec_cli = "oci"

  cluster_cert = base64decode(local.kubeconfig["clusters"][0]["cluster"]["certificate-authority-data"])
  cluster_endpoint = local.kubeconfig["clusters"][0]["cluster"]["server"]


  exec_args = [
    local.kubeconfig["users"][0]["user"]["exec"]["args"][0],
    local.kubeconfig["users"][0]["user"]["exec"]["args"][1],
    local.kubeconfig["users"][0]["user"]["exec"]["args"][2],
    local.kubeconfig["users"][0]["user"]["exec"]["args"][3],
    local.kubeconfig["users"][0]["user"]["exec"]["args"][4],
    local.kubeconfig["users"][0]["user"]["exec"]["args"][5],
    local.kubeconfig["users"][0]["user"]["exec"]["args"][6]
  ]



}
