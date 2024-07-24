# General Deployment Variables
variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "aws_profile" {
  type        = string
  default     = "default"
  description = "AWS profile which used for terraform infra deployment"
}

variable "environment" {
  type        = string
  description = "The environment of application"
}

variable "nickname" {
  type        = string
  description = "The nickname of application. Must be lowercase without special chars"
}

variable "tags" {
  type        = map(string)
  description = "The key value pairs we want to apply as tags to the resources contained in this module"
}

# Project Specific Variables
variable "repository" {
  type        = string
  description = "The repository for source code"
  default     = "https://github.com/camillehe1992/amplify-vue-app"
}

variable "access_token" {
  type        = string
  description = "Personal access token for a third-party source control system for an Amplify app"
  sensitive   = true
}
