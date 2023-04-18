terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = "PUT-YOUR-GITHUB-TOKEN-HERE"
}

resource "github_repository" "example"{
    name = "example"
    description = "my first terraform github repo"
    visibility = "public"
}