resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = var.storage_account_account_tier
  account_replication_type = var.storage_account_account_replication_type

  tags = {
    environment = var.storage_account_tags_env
  }
}

resource "azurerm_service_plan" "srv_plan" {
  name                = var.service_plan_name
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  os_type             = var.service_plan_os_type
  sku_name            = var.service_plan_sku_name
}

resource "azurerm_linux_function_app" "linux-function-app" {
  name                = var.linux_function_app_name
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location

  storage_account_name       = azurerm_storage_account.storage_account.name
  storage_account_access_key = azurerm_storage_account.storage_account.primary_access_key
  service_plan_id            = azurerm_service_plan.srv_plan.id

  site_config {}
}

resource "azurerm_function_app_function" "app_function" {
  name            = var.app_function_name
  function_app_id = azurerm_linux_function_app.linux-function-app.id
  language        = var.app_function_language
  test_data       = var.app_function_test_data
  config_json     = var.app_function_config_json
}



