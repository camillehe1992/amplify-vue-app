resource "aws_amplify_app" "this" {
  name                        = var.nickname
  repository                  = var.repository
  access_token                = var.access_token
  enable_branch_auto_deletion = true
  enable_branch_auto_build    = true
  build_spec                  = file("${path.module}/build.yaml")

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

resource "aws_amplify_branch" "develop" {
  app_id      = aws_amplify_app.this.id
  branch_name = "develop"
  stage       = "DEVELOPMENT"

  tags = var.tags
}

resource "aws_amplify_branch" "main" {
  app_id      = aws_amplify_app.this.id
  branch_name = "main"
  stage       = "PRODUCTION"

  tags = var.tags
}
