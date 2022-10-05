# Civo k3s provisioning

Terraform scripts to provision k3s cluster for quickly (under 3min)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.1 |
| <a name="requirement_civo"></a> [civo](#requirement\_civo) | 1.0.24 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.7.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_civo"></a> [civo](#provider\_civo) | 1.0.24 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.7.0 |
| <a name="provider_local"></a> [local](#provider\_local) | 2.2.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [civo_firewall.my-firewall](https://registry.terraform.io/providers/civo/civo/1.0.24/docs/resources/firewall) | resource |
| [civo_firewall_rule.kubernetes](https://registry.terraform.io/providers/civo/civo/1.0.24/docs/resources/firewall_rule) | resource |
| [civo_kubernetes_cluster.my-cluster](https://registry.terraform.io/providers/civo/civo/1.0.24/docs/resources/kubernetes_cluster) | resource |
| [helm_release.argocd](https://registry.terraform.io/providers/hashicorp/helm/2.7.0/docs/resources/release) | resource |
| [local_file.kubeconfig](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [civo_size.xsmall](https://registry.terraform.io/providers/civo/civo/1.0.24/docs/data-sources/size) | data source |
| [helm_template.argocd](https://registry.terraform.io/providers/hashicorp/helm/2.7.0/docs/data-sources/template) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_civo_token"></a> [civo\_token](#input\_civo\_token) | API key for CIVO cloud | `string` | n/a | yes |
| <a name="input_k8s_version"></a> [k8s\_version](#input\_k8s\_version) | Kubernetes version | `string` | `"1.22.11"` | no |
| <a name="input_name"></a> [name](#input\_name) | Naming used for resources creation | `string` | `"k8s"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region in cloud | `string` | n/a | yes |

## Outputs

No outputs.
