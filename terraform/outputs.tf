output "apigee_org_id" {
  value = google_apigee_organization.my_org.name
}

output "apigee_env_id" {
  value = google_apigee_environment.my_env.name
}

output "api_proxy_id" {
  value = google_apigee_api_proxy.my_api_proxy.name
}