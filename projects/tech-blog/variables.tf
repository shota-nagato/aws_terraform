variable "repository" {
  description = "Repository for an Amplify app."
  type        = string
}

variable "access_token" {
  description = "Personal access token for a third-party source control system for an Amplify app."
  type        = string
}

variable "platform" {
  description = "Platform or framework for an Amplify app. "
  type        = string
}

variable "build_spec" {
  description = "Build specification (build spec) for the autocreated branch."
  type        = string
}

variable "microcms_service_domain" {
  description = "The domain for the MicroCMS service"
  type        = string
}

variable "microcms_api_key" {
  description = "The API key for the MicroCMS service"
  type        = string
}
