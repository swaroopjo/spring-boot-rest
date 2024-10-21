variable "project_id" {
  description = "The Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "The region for Google Cloud resources"
  default     = "us-central1"
}

variable "apigee_org_name" {
  description = "Name of the Apigee organization"
  type        = string
}

variable "apigee_org_id" {
  description = "Name of the Organization ID"
  type        = string
}

variable "apigee_env_name" {
  description = "Name of the Apigee environment"
  type        = string
  default     = "dev"
}

variable "api_proxy_name" {
  description = "Name of the API proxy"
  type        = string
}