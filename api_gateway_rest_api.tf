resource "aws_api_gateway_rest_api" "example_api" {
  name = "example-api"
  description = "example serverless api"
  policy = data.aws_iam_policy_document.example_api_policy.json
}
