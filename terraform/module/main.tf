module "lambda" {
    source = "./lambda"
    
    iam_for_router_arn = module.iam.iam_for_router_arn

    lambda_runtime = var.lambda_runtime
}

module "iam" {
    source = "./iam"
}