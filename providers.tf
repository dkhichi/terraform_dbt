terraform {
  required_providers {
    dbt = {
      source  = "GtheSheep/dbt-cloud"
      version = "0.1.11"
    }
  }
}

provider "google" {
  project = "mlconsole-poc"
}

provider "dbt" {
  account_id = var.account_id
  token = "deff0dce4eedcbcf646d158798f199eec97d2d74"
  host_url   = "https://cloud.getdbt.com/api"
}
