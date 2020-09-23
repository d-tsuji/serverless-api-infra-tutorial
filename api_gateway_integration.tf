resource "aws_api_gateway_integration" "example_api_get" {
  rest_api_id             = aws_api_gateway_rest_api.example_api.id
  resource_id             = aws_api_gateway_method.example_api_get.resource_id
  http_method             = aws_api_gateway_method.example_api_get.http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.example_api.invoke_arn
}

resource "aws_api_gateway_integration" "example_api_post" {
  rest_api_id             = aws_api_gateway_rest_api.example_api.id
  resource_id             = aws_api_gateway_method.example_api_post.resource_id
  http_method             = aws_api_gateway_method.example_api_post.http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.example_api.invoke_arn
}
