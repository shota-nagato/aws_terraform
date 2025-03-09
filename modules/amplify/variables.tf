variable "app_name" {
  description = "Name for an Amplify app."
  type        = string
}

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
  default     = "WEB"
}

variable "build_spec" {
  description = "Build specification (build spec) for the autocreated branch."
  type        = string
}

variable "environment_variables" {
  description = "Environment variables map for an Amplify app."
  type        = map(string)
}
