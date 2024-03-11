terraform {
  cloud {
    organization = "example-org-f6c6aa"

    workspaces {
      name = "coffee-com-devops"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  owner = "luweslen"
  token = var.GITHUB_TOKEN
}

resource "github_repository" "coffee-com-devops" {
  name          = "coffee-com-devops"
  description   = "Mentoria de DevOps conduzida por @gabrielsclimaco"
  has_downloads = true
  has_issues    = true
  has_projects  = true
  has_wiki      = true
}

resource "github_branch" "example" {
  branch     = "example"
  repository = github_repository.coffee-com-devops.name
}

resource "github_branch_protection" "coffee-com-devops" {
  repository_id  = github_repository.coffee-com-devops.node_id
  pattern        = github_branch.example.branch
  enforce_admins = true
}
