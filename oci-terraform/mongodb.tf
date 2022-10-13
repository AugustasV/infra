resource "helm_release" "umbrella" {
  name       = "umbrella"
  chart      = "../charts/umbrella"
  values = [
    file("../charts/umbrella/values.yaml")
  ]
  reuse_values      = true
  dependency_update = true
  force_update      = true
  recreate_pods     = false
  wait              = true
  max_history       = 1
}
