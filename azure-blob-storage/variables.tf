variable "resource_group_name" {
  type    = string
  default = "Example"
}
variable "resource_group_location" {
  type    = string
  default = "West Europe"
}

variable "storage_account_name" {
  type    = string
  default = "storageaccountnamewsbpp"
}

variable "storage_account_account_tier" {
  type    = string
  default = "Standard"
}

variable "storage_account_account_replication_type" {
  type    = string
  default = "GRS"
}

variable "storage_account_tags_env" {
  type    = string
  default = "staging"
}

variable "storage_container_name" {
  type    = string
  default = "vhds"
}

variable "storage_container_access_type" {
  type    = string
  default = "private"
}

variable "blob_storage_name" {
  type    = string
  default = "my-awesome-content.zip"
}

variable "blob_storage_type" {
  type    = string
  default = "Block"
}

variable "blob_storage_source" {
  type    = string
  default = "some-local-file.zip"
}
