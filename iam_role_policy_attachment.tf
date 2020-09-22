resource "aws_iam_role_policy_attachment" "example_api" {
  role = aws_iam_role.example_lambda.name
  policy_arn = aws_iam_policy.example_lambda.arn
}
