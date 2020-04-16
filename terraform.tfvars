# General
aws_region  = "ap-southeast-2"
aws_account = "222337787619"

# Cognito User Pool
aws_cognito_user_pool_id = "ap-southeast-2_XGQmb0fKL"

# Network Load Balancer
aws_lb_dns_name = "ace9454ed9c0b48ff90cbe9f0228c188-93fd2f45a87a27cb.elb.ap-southeast-2.amazonaws.com"

# VPC Link
aws_api_gateway_vpc_link_name        = "myproject-vpclink"
aws_api_gateway_vpc_link_description = "vpc link for myproject-apigateway"
aws_api_gateway_vpc_link_target_arns = "arn:aws:elasticloadbalancing:ap-southeast-2:222337787619:loadbalancer/net/aa20c4cc017ee4a5ab285a5b03142235/43a7fbd50a0e3cc6" 

# API Gateway
aws_api_gateway_rest_api_name        = "myproject-apigateway"
aws_api_gateway_rest_api_description = "api gateway for myproject"