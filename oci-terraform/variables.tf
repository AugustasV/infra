variable "name" {
  type        = string
  default     = "oracle-k8s"
  description = "User ocid for oraclecloud"
}

variable "user_ocid" {
  type        = string
  default     = ""
  description = "User ocid for oraclecloud"
}
variable "tenancy_ocid" {
  type        = string
  default     = ""
  description = "description"
}
variable "region" {
  type        = string
  default     = ""
  description = "description"
}
variable "fingerprint" {
  type        = string
  default     = ""
  description = "description"
}
variable "compartment_name" {
  type        = string
  default     = ""
  description = "Copartment name"
}


