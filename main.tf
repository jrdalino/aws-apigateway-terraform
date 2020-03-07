data "template_file" "aws_api_swagger" {
  template = file(~/environment/bp-terraform-aws-apigateway/api-swagger.json)

  #Pass the varible value if needed in swagger file
  vars = {
   backend_uri     = var.backend_uri
   vpclink_id      = var.vpclink_id
  }
}

resource "aws_api_gateway_vpc_link" "vpclink" {
  name        = var.aws_api_gateway_vpc_link_name
  description = var.aws_api_gateway_vpc_link_description
  target_arns = var.aws_api_gateway_vpc_link_target_arns
}

resource "aws_api_gateway_rest_api" "api" {
  name        = var.aws_api_gateway_rest_api_name
  description = var.aws_api_gateway_rest_api_description
  body        = data.template_file.aws_api_swagger.rendered

  endpoint_configuration {
    types = ["REGIONAL"]
  }  
}