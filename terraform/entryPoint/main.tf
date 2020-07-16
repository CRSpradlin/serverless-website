provider "aws" {
    region = var.region
}

module "environment" {
    source = "../module"
    
    lambda_runtime = var.lambda_runtime
}