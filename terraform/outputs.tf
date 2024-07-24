output "amplify_app_develop_url" {
  value       = "https:develop.${aws_amplify_app.this.default_domain}"
  description = "The domain url for develop environment"
}

output "amplify_app_main_url" {
  value       = "https:main.${aws_amplify_app.this.default_domain}"
  description = "The domain url for prod environment"
}
