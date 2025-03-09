terraform {
  required_version = "~> 1.11.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.82.2"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

module "amplify" {
  source = "../../modules/amplify"

  app_name     = "tech-blog"
  repository   = var.repository
  access_token = var.access_token

  platform = "WEB_COMPUTE"

  build_spec = <<-EOT
    version: 1
    frontend:
      phases:
        preBuild:
          commands:
            - 'npm install -g pnpm'
            - 'pnpm install'
        build:
          commands:
            - 'env | grep -e MICROCMS >> .env'
            - 'pnpm run build'
      artifacts:
        baseDirectory: .next
        files:
          - '**/*'
      cache:
        paths:
          - '.next/cache/**/*'
          - 'node_modules/**/*'
  EOT

  environment_variables = {
    MICROCMS_SERVICE_DOMAIN = var.microcms_service_domain
    MICROCMS_API_KEY        = var.microcms_api_key
  }
}
