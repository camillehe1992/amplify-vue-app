resource "aws_amplify_app" "this" {
  name         = "${var.environment}-${var.nickname}"
  repository   = var.repository
  access_token = var.access_token
  build_spec   = file("${path.module}/build.yaml")

  auto_branch_creation_config {
    enable_auto_build = true
    framework         = "Vue"
  }

  # The default rewrites and redirects added by the Amplify Console.
  custom_rule {
    source = "/<*>"
    status = "404"
    target = "/index.html"
  }

  tags = var.tags
}

resource "aws_amplify_branch" "this" {
  app_id      = aws_amplify_app.this.id
  branch_name = var.branch_name
  stage       = var.stage

  enable_auto_build           = var.enable_auto_build
  enable_pull_request_preview = var.enable_pull_request_preview

  tags = var.tags
}
