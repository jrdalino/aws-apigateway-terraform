# Terraform module to provision a VPC Link and AWS API Gateway

## Prerequisites
Provision an S3 bucket to store Terraform State and DynamoDB for state-lock
using https://github.com/jrdalino/aws-tfstate-backend-terraform

## Module Usage
Include this repository as a module in your existing terraform code:
```
module "apigateway" {
  source = "git::https://github.com/jrdalino/aws-apigateway-terraform.git?ref=master"
}
```

## Replace variables in terraform.tfvars

## Initialize, Review Plan and Apply
```
$ terraform init
$ terraform plan
$ terraform apply
```

## AWS CLI

- Import the swagger template
```
$ aws apigateway import-rest-api \
--parameters endpointConfigurationTypes=REGIONAL \
--body file://~/environment/aws-apigateway-terraform/api-swagger.json \
--fail-on-warnings
```

- Create Deployment
```
$ aws apigateway create-deployment \
--rest-api-id REPLACE_ME_WITH_API_ID \
--stage-name prod
```

- Invoke API
```
$ curl https://REPLACE_ME_WITH_API_ID.execute-api.REPLACE_ME_WITH_REGION.amazonaws.com/prod
```

## Inputs
| Name | Description |
|------|-------------|
| | |

## Outputs
| Name | Description |
|------|-------------|
| | |

## References
- https://docs.aws.amazon.com/console/apigateway/documentation-parts
