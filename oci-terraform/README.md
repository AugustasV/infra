# Oracle cloud k8s provisioning

Terraform scripts to provision k8s cluster on Oracle cloud.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 4.95.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 4.95.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vcn"></a> [vcn](#module\_vcn) | oracle-terraform-modules/vcn/oci | 3.5.1 |

## Resources

| Name | Type |
|------|------|
| [oci_containerengine_cluster.k8s_cluster](https://registry.terraform.io/providers/oracle/oci/4.95.0/docs/resources/containerengine_cluster) | resource |
| [oci_containerengine_node_pool.oke_node_pool](https://registry.terraform.io/providers/oracle/oci/4.95.0/docs/resources/containerengine_node_pool) | resource |
| [oci_core_security_list.private_subnet](https://registry.terraform.io/providers/oracle/oci/4.95.0/docs/resources/core_security_list) | resource |
| [oci_core_security_list.public_subnet](https://registry.terraform.io/providers/oracle/oci/4.95.0/docs/resources/core_security_list) | resource |
| [oci_core_subnet.vcn_private_subnet](https://registry.terraform.io/providers/oracle/oci/4.95.0/docs/resources/core_subnet) | resource |
| [oci_core_subnet.vcn_public_subnet](https://registry.terraform.io/providers/oracle/oci/4.95.0/docs/resources/core_subnet) | resource |
| [oci_identity_compartment.tf_compartment](https://registry.terraform.io/providers/oracle/oci/4.95.0/docs/resources/identity_compartment) | resource |
| [oci_identity_availability_domains.ads](https://registry.terraform.io/providers/oracle/oci/4.95.0/docs/data-sources/identity_availability_domains) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_name"></a> [compartment\_name](#input\_compartment\_name) | Copartment name needed for Oracle Cloud auth | `string` | `""` | no |
| <a name="input_fingerprint"></a> [fingerprint](#input\_fingerprint) | Fingerprint name needed for Oracle Cloud auth | `string` | `""` | no |
| <a name="input_k8s_version"></a> [k8s\_version](#input\_k8s\_version) | Kubernetes version | `string` | `"v1.24.1"` | no |
| <a name="input_name"></a> [name](#input\_name) | Naming used for resources creation | `string` | `"oracle-k8s"` | no |
| <a name="input_oci_core_image"></a> [oci\_core\_image](#input\_oci\_core\_image) | oci core image | `string` | `"ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaqz3y3bnqusfksz44ysicyikiw6kdhkahjrmvrhubtxwtrfh2onsq"` | no |
| <a name="input_oci_node_shape"></a> [oci\_node\_shape](#input\_oci\_node\_shape) | oci node shape | `string` | `"VM.Standard3.Flex"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region in cloud | `string` | `"eu-frankfurt-1"` | no |
| <a name="input_tenancy_ocid"></a> [tenancy\_ocid](#input\_tenancy\_ocid) | Tenancy name needed for Oracle Cloud auth | `string` | `""` | no |
| <a name="input_user_ocid"></a> [user\_ocid](#input\_user\_ocid) | User ocid for oraclecloud | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_compartment_id"></a> [compartment\_id](#output\_compartment\_id) | n/a |
| <a name="output_compartment_name"></a> [compartment\_name](#output\_compartment\_name) | n/a |
| <a name="output_k8s-cluster-id"></a> [k8s-cluster-id](#output\_k8s-cluster-id) | n/a |


## Other

For nodepool different pool images types could be found here https://docs.oracle.com/en-us/iaas/Content/Compute/References/computeshapes.htm
Images OCID links: https://docs.oracle.com/en-us/iaas/images/all/?search=OKE