data "terraform_remote_state" "this" {
  backend = "remote"

  config = {
    organization = "gr"
    workspaces = {
      name = "vnet-dev"
    }
  }
}

