resource "aws_iam_policy" "example_lambda" {
  name = "example-lambda"
  policy = data.aws_iam_policy_document.example_lambda.json
}
