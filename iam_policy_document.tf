data "aws_iam_policy_document" "example_api_policy" {
  statement {
    effect = "Allow"
    principals {
      type = "*"
      identifiers = [
        "*"]
    }
    actions = [
      "execute-api:Invoke"
    ]
    resources = [
      "arn:aws:execute-api:ap-northeast-1:*:*/*/*"
    ]
  }
}

data "aws_iam_policy_document" "example_lambda" {
  statement {
    effect = "Allow"
    actions = [
      "dynamodb:*"
    ]
    resources = [
      "*"]
  }
  statement {
    effect = "Allow"
    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents"
    ]
    resources = [
      "arn:aws:logs:*:*:*"]
  }
}
