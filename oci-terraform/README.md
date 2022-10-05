# Oracle cloud k8s provisioning

Terraform scripts to provision k8s cluster on Oracle cloud.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.7.0 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 4.95.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 4.95.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_oke"></a> [oke](#module\_oke) | oracle-terraform-modules/oke/oci | 4.2.8 |

## Resources

| Name | Type |
|------|------|
| [oci_identity_compartment.tf_compartment](https://registry.terraform.io/providers/oracle/oci/4.95.0/docs/resources/identity_compartment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_name"></a> [compartment\_name](#input\_compartment\_name) | Copartment name needed for Oracle Cloud auth | `string` | `""` | no |
| <a name="input_fingerprint"></a> [fingerprint](#input\_fingerprint) | Fingerprint name needed for Oracle Cloud auth | `string` | `""` | no |
| <a name="input_k8s_version"></a> [k8s\_version](#input\_k8s\_version) | Kubernetes version | `string` | `"v1.24.1"` | no |
| <a name="input_name"></a> [name](#input\_name) | Naming used for resources creation | `string` | `"oracle-k8s"` | no |
| <a name="input_node_pools"></a> [node\_pools](#input\_node\_pools) | n/a | `any` | <pre>{<br>  "np1": {<br>    "boot_volume_size": 150,<br>    "label": {<br>      "app": "frontend",<br>      "pool": "np1"<br>    },<br>    "memory": 16,<br>    "node_pool_size": 1,<br>    "ocpus": 1,<br>    "shape": "VM.Standard.E2.2"<br>  },<br>  "np2": {<br>    "boot_volume_size": 150,<br>    "node_pool_size": 2,<br>    "shape": "VM.Standard.E2.2"<br>  },<br>  "np3": {<br>    "node_pool_size": 1,<br>    "shape": "VM.Standard.E2.2"<br>  }<br>}</pre> | no |
| <a name="input_oci_core_image"></a> [oci\_core\_image](#input\_oci\_core\_image) | oci core image | `string` | `"ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaqz3y3bnqusfksz44ysicyikiw6kdhkahjrmvrhubtxwtrfh2onsq"` | no |
| <a name="input_oci_node_shape"></a> [oci\_node\_shape](#input\_oci\_node\_shape) | oci node shape | `string` | `"VM.Standard3.Flex"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region in cloud | `string` | `"eu-frankfurt-1"` | no |
| <a name="input_ssh_private_key_path"></a> [ssh\_private\_key\_path](#input\_ssh\_private\_key\_path) | private ssh key location | `string` | `""` | no |
| <a name="input_ssh_public_key_path"></a> [ssh\_public\_key\_path](#input\_ssh\_public\_key\_path) | public ssh key location | `string` | `""` | no |
| <a name="input_tenancy_ocid"></a> [tenancy\_ocid](#input\_tenancy\_ocid) | Tenancy name needed for Oracle Cloud auth | `string` | `""` | no |
| <a name="input_user_ocid"></a> [user\_ocid](#input\_user\_ocid) | User ocid for oraclecloud | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_compartment_name"></a> [compartment\_name](#output\_compartment\_name) | n/a |
| <a name="output_kubeconfig_path_oci"></a> [kubeconfig\_path\_oci](#output\_kubeconfig\_path\_oci) | n/a |


## Other

* For nodepool different pool images types could be found here https://docs.oracle.com/en-us/iaas/Content/Compute/References/computeshapes.htm

* Images OCID links: https://docs.oracle.com/en-us/iaas/images/all/?search=OKE
