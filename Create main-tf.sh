terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "price-lab"

    workspaces {
      name = "POC"
    }
  }
}
