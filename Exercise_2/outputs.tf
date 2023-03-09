# TODO: Define the output variable for the lambda function.
output "lambda_function_name" {
  value = var.lambda_function_name
}
output "function_arn" {
  description = "The ARN of the Lambda function"
  value       = aws_lambda_function.py_lambda.arn
}
