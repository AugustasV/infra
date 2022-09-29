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
  default     = "eu-frankfurt-1"
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
  default     = "v1.24.1"
  description = "Kubernetes version"
}
variable oci_core_image {
  type        = string
  default     = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaqz3y3bnqusfksz44ysicyikiw6kdhkahjrmvrhubtxwtrfh2onsq"
  description = "oci core image"
}
variable oci_node_shape {
  type        = string
  default     = "VM.Standard3.Flex"
  description = "oci node shape"
}
