resource "aws_lambda_function" "router" {
  filename      = "${path.module}/../../deploy/router.zip"
  function_name = "router"
  role          = var.iam_for_router_arn
  handler       = "router.handler"

  source_code_hash = filebase64sha256("${path.module}/../../deploy/router.zip")

  runtime = var.lambda_runtime
}