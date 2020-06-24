module "servicebus-namespace" {
  source              = "../../modules/servicebus"
  resource_group_name = "WEU"
  location            = "westeurope"
  name                = "test-sbn-weu-local-primary"
}