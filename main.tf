data "template_file" "aws_api_swagger" {
  template = "${file("./api-swagger.json")}"

  #Pass the varible value if needed in swagger file
  vars = {
    aws_account = var.aws_account
    aws_region = var.aws_region
    aws_cognito_user_pool_id = var.aws_cognito_user_pool_id
    aws_lb_dns_name = var.aws_lb_dns_name 
    aws_api_gateway_vpc_link_id =  "${aws_api_gateway_vpc_link.vpclink.id}"
  }
}

# VPC Link
resource "aws_api_gateway_vpc_link" "vpclink" {
   name        = var.aws_api_gateway_vpc_link_name
   description = var.aws_api_gateway_vpc_link_description
   target_arns = ["${var.aws_api_gateway_vpc_link_target_arns}"]
 }

# API Gateway
resource "aws_api_gateway_rest_api" "api" {
  name        = var.aws_api_gateway_rest_api_name
  description = var.aws_api_gateway_rest_api_description
  body        = data.template_file.aws_api_swagger.rendered

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}