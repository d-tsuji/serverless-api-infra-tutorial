resource "aws_lambda_permission" "example_apigateway_lambda" {
  action = "lambda:InvokeFunction"
  function_name = aws_lambda_function.example_api.arn
  principal = "apigateway.amazonaws.com"

  source_arn = "${aws_api_gateway_rest_api.example_api.execution_arn}/*/*/*"
}
