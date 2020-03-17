# VPC Link
#  output "aws_api_gateway_vpc_link_id" {
#   value       = "${aws_api_gateway_vpc_link.vpclink.id}"
#   description = "The identifier of the VpcLink."
# }

# API Gateway
output "aws_api_gateway_rest_api_id" {
  value       = "${aws_api_gateway_rest_api.api.id}"
  description = "The ID of the REST API."
}

output "aws_api_gateway_rest_api_root_resource_id" {
  value       = "${aws_api_gateway_rest_api.api.root_resource_id}"
  description = "The resource ID of the REST API's root."
}

output "aws_api_gateway_rest_api_created_date" {
  value       = "${aws_api_gateway_rest_api.api.created_date}"
  description = "The creation date of the REST API"
}

output "aws_api_gateway_rest_api_execution_arn" {
  value       = "${aws_api_gateway_rest_api.api.execution_arn}"
  description = "The execution ARN part to be used in lambda_permission's source_arn when allowing API Gateway to invoke a Lambda function, e.g. arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j, which can be concatenated with allowed stage, method and resource path."
}

output "aws_api_gateway_rest_api_arn" {
  value       = "${aws_api_gateway_rest_api.api.arn}"
  description = "Amazon Resource Name (ARN)."
}