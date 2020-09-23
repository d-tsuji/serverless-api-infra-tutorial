resource "aws_api_gateway_deployment" "example_api" {
  depends_on = [
    aws_api_gateway_integration.example_api_get,
    aws_api_gateway_integration.example_api_post,
  ]
  rest_api_id       = aws_api_gateway_rest_api.example_api.id
  stage_name        = "test"
  stage_description = "test stage"
}
