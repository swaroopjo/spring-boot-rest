terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.5"
    }
    apigee = {
      source  = "hashicorp/apigee"
      version = "~> 0.1"  # Use the appropriate version
    }
  }

  required_version = ">= 0.12"
}
