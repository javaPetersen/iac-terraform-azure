variable "resource_group_name" {
	type = string
	default = "Example"
}
variable "resource_group_location" {
	type = string
	default = "West Europe"
}

variable "storage_account_name" {
	type = string
	default = "storageaccountname"
}

variable "resource_group_account_tier" {
	type = string
	default = "Standard"
}

variable "resource_group_account_replication_type" {
	type = string
	default = "GRS"
}

variable "resource_group_tags_env" {
	type = string
	default = "staging"
}

variable "service_plan_name" {
	type = string
	default = "service_name"
}

variable "service_plan_os_type" {
	type = string
	default = "Linux"
}

variable "service_plan_sku_name" {
	type = string
	default = "P1v2"
}

variable "linux_function_app_name" {
	type = string
	default = "linux-function-app"
}

variable "app_function_name" {
	type = string
	default = "example-function-app-function"
}

variable "app_function_config_json" {
	type = string
	default = jsonencode({
    "bindings" = [
      {
        "authLevel" = "function"
        "direction" = "in"
        "methods" = [
          "get",
          "post",
        ]
        "name" = "req"
        "type" = "httpTrigger"
      },
      {
        "direction" = "out"
        "name"      = "$return"
        "type"      = "http"
      },
    ]
  })
}
variable "app_function_test_data" {
	type = string
	default = jsonencode({
    "name" = "Azure"
  })
}



