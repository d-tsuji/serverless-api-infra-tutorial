resource "aws_api_gateway_method" "example_api_get" {
  authorization = "NONE"
  http_method = "GET"
  resource_id = aws_api_gateway_resource.example_api.id
  rest_api_id = aws_api_gateway_rest_api.example_api.id
}

resource "aws_api_gateway_method" "example_api_post" {
  authorization = "NONE"
  http_method = "POST"
  resource_id = aws_api_gateway_resource.example_api.id
  rest_api_id = aws_api_gateway_rest_api.example_api.id
}
