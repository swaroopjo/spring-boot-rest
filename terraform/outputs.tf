output "apigee_org_id" {
  value = apigee_organization.my_org.id
}

output "apigee_env_id" {
  value = apigee_environment.my_env.name
}

output "api_proxy_id" {
  value = apigee_api_proxy.my_api_proxy.name
}