environment = "dev"
project     = "mock2"
workload    = "app"
rg_location = "eastus"
tenant_id   = "0ae51e19-07c8-4e4b-bb6d-648ee58410f4"

tags = {
  environment = "DEV"
  project     = "MOCK2"
  deployment  = "terraform"
  managed_by  = "terraform-setup-wizard"
}

appserviceplan_config = {
  os  = "Linux"
  sku = "B1"
}

appservice_config = [
  {
    workload       = "api"
    os             = "Linux"
    always_on      = true
    stack          = "dotnet"
    dotnet_version = "v8.0"
    public_network_access_enabled = true
    ip_restriction_default_action = "Allow"
  }
]

