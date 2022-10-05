# resource "local_file" "temp_kubeconfig" {
#   content  = local.kubeconfig_str
#   filename = "${path.module}/kubeconfig_temp"
# }

# data "helm_template" "argocd" {
#   name       = "argo-cd"
#   namespace  = "default"
#   repository = "https://argoproj.github.io/argo-helm"

#   chart = "argo-cd"
# }

# resource "helm_release" "argocd" {
#   name  = "argocd"
#   repository = "https://argoproj.github.io/argo-helm"
#   chart = "argo-cd"
#   values = [
#     file("../charts/argo-cd/values.yaml")
#   ]
#   reuse_values      = true
#   dependency_update = true
#   force_update      = true
#   recreate_pods     = false
#   wait              = true
#   max_history       = 1
# }
