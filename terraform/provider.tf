provider "google" {
  project = var.project_id
  region  = var.region
}

provider "apigee" {
  org = google_apigee_organization.my_org.display_name
}