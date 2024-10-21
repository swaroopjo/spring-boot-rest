
resource "apigee_organization" "my_org" {
  display_name = var.apigee_org_name
  project_id   = var.project_id
}

resource "apigee_environment" "my_env" {
  org_id = apigee_organization.my_org.id
  name         = var.apigee_env_name
}

resource "apigee_api_proxy" "my_api_proxy" {
  organization = apigee_organization.my_org.id
  name         = var.api_proxy_name

  api_proxy_configuration {
    proxy_file {
      file = "proxy/proxy.xml"  # Reference to your proxy.xml
    }

    target_file {
      file = "proxy/target.xml"  # Reference to your target.xml
    }

    # Include additional policy files as needed
    policy_file {
      file = "proxy/policies/log-request-response.xml"
    }
  }
}