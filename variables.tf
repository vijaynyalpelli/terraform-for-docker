variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region for resources"
}

variable "app_name" {
  type        = string
  description = "Name of the container app"
}

variable "image_name" {
  type        = string
  description = "Docker image to deploy"
}
