# General
aws_region  = "ap-southeast-2"
aws_account = "222337787619"

# Cognito
aws_cognito_user_pool_id = "ap-southeast-2_XGQmb0fKL"

# Network Load Balancer
aws_lb_dns_name = "abd7e0971659b403fb68a28870a663c9-3cdc46b987e98fd9.elb.ap-southeast-2.amazonaws.com"

# VPC Link
aws_api_gateway_vpc_link_name        = "myproject-vpclink"
aws_api_gateway_vpc_link_description = "vpc link for myproject-apigateway"
aws_api_gateway_vpc_link_target_arns = "arn:aws:elasticloadbalancing:ap-southeast-2:222337787619:loadbalancer/net/abd7e0971659b403fb68a28870a663c9/3cdc46b987e98fd9" 

# API Gateway
aws_api_gateway_rest_api_name        = "myproject-apigateway"
aws_api_gateway_rest_api_description = "api gateway for myproject"