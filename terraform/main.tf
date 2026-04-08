terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.26.0"
    }
  }
}

provider "google" {
  project     = var.projectid
  region      = var.region
}

resource "google_storage_bucket" "datalake-bucket" {
  name          = var.datalake_name
  location      = var.geo_location
  force_destroy = true


  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

resource "google_bigquery_dataset" "big-query-dataset" {
  dataset_id                  = var.dataset_id
  friendly_name               = var.ds_friendly_name
  description                 = var.ds_description
  location                    = var.geo_location
  default_table_expiration_ms = var.table_expiration_ms

  labels = {
    env = "default"
  }
}
