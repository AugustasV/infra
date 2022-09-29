variable "name" {
  type        = string
  default     = "oracle-k8s"
  description = "Naming used for resources creation"
}

variable "user_ocid" {
  type        = string
  default     = ""
  description = "User ocid for oraclecloud"
}
variable "tenancy_ocid" {
  type        = string
  default     = ""
  description = "Tenancy name needed for Oracle Cloud auth"
}
variable "region" {
  type        = string
  default     = ""
  description = "Region in cloud"
}
variable "fingerprint" {
  type        = string
  default     = ""
  description = "Fingerprint name needed for Oracle Cloud auth"
}
variable "compartment_name" {
  type        = string
  default     = ""
  description = "Copartment name needed for Oracle Cloud auth"
}
variable "k8s_version" {
  type        = string
  default     = "v1.23.4"
  description = "Kubernetes version"
}
variable oci_core_image {
  type        = string
  default     = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaendjqxmyyq2sdw3vulvu3uf3dah465li3iaemabcmacaloza4zjq"
  description = "oci core image"
}
variable oci_node_shape {
  type        = string
  default     = "VM.Standard.A1.Flex"
  description = "oci node shape"
}
