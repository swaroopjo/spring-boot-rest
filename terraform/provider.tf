provider "google" {
  project = var.project_id
  region  = var.region
}

provider "apigee" {
  org = apigee_organization.my_org.display_name
}