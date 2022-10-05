variable "name" {
  type        = string
  default     = "k8s"
  description = "Naming used for resources creation"
}


variable "region" {
  type        = string
  description = "Region in cloud"
}

variable "k8s_version" {
  type        = string
  default     = "1.22.11"
  description = "Kubernetes version"
}

variable "civo_token" {
  type        = string
  description = "API key for CIVO cloud"
}
