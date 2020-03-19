# General
variable "aws_region" {
  type        = string
  description = "Used AWS Region."    
}

variable "aws_account" {
  type        = string
  description = "Used AWS Account."    
}

# Cognito User Pool
variable "aws_cognito_user_pool_id" {
  type        = string
  description = "Cognito User Pool Id."    
}

# Network Load Balancer
variable "aws_lb_dns_name" {
  type        = string
  description = "Network Load Balancer URI."
}

# VPC Link
variable "aws_api_gateway_vpc_link_name" {
  type        = string
  description = "(Required) The name used to label and identify the VPC link."
}

variable "aws_api_gateway_vpc_link_description" {
  type        = string
  description = "(Optional) The description of the VPC link."
}

variable "aws_api_gateway_vpc_link_target_arns" {
  type        = string
  description = "(Required, ForceNew) The list of network load balancer arns in the VPC targeted by the VPC link. Currently AWS only supports 1 target."
}

# API Gateway
variable "aws_api_gateway_rest_api_name" {
  type        = string
  description = "(Required) The name of the REST API"
}

variable "aws_api_gateway_rest_api_description" {
  type        = string
  description = "(Optional) The description of the REST API"    
}