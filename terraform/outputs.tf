output "amplify_app_url" {
  value       = "https:${var.branch_name}.${aws_amplify_app.this.default_domain}"
  description = "Default domain for the Amplify app"
}
