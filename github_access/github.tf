terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.14.0"
    }
  }
}

provider "github" {
  token = "xxxxxxxxxxxxxxxxxxxx"
}

resource "github_repository" "example" {
  name        = "terraform-repo"

  visibility = "private"

} 
