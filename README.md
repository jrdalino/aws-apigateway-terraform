# Terraform module to provision an AWS API Gateway

## Prerequisites
- TBD

## Example Usage

Include this repository as a module in your existing terraform code:
```
module "apigateway" {
  source = "git::https://luxproject.luxoft.com/stash/scm/ecdt/bp-terraform-aws-apigateway.git?ref=master"
}
```

Initialize, Review Plan and Apply
```
$ terraform init
$ terraform plan
$ terraform apply
```

## Inputs
- TBD

## Outputs
- TDB

## API Gateway Usage

Import the swagger template
```
$ aws apigateway import-rest-api \
--parameters endpointConfigurationTypes=REGIONAL \
--body file://~/environment/bp-terraform-aws-apigateway/api-swagger.json \
--fail-on-warnings
```

Deploy the API
```
$ aws apigateway create-deployment --rest-api-id REPLACE_ME_WITH_API_ID --stage-name prod
```