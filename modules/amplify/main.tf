resource "aws_amplify_app" "tech-blog" {
  name         = var.app_name
  repository   = var.repository
  access_token = var.access_token

  platform = var.platform

  build_spec = var.build_spec

  environment_variables = var.environment_variables
}

resource "aws_amplify_branch" "main" {
  app_id      = aws_amplify_app.main.id
  branch_name = "main"

  stage     = "PRODUCTION"
}
