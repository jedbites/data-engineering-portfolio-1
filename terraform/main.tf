terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.5"
    }
  }
}

provider "google" {
  project = var.project
  region = var.region
  credentials = file(var.GCP_CREDS)
}

resource "google_storage_bucket" "data_lake_bucket" {
  name          = "${local.data_lake_bucket}"
  location      = var.region
  storage_class = var.storage_class

  uniform_bucket_level_access = true

  labels = {
    environment = "production"
    project     = var.project
  }

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 365
    }
  }

  force_destroy = true
}

resource "google_bigquery_dataset" "dataset" {
  dataset_id = var.BQ_DATASET
  location = var.region
  friendly_name = "S&P 500 Raw Data"
  description = "Dataset for storing raw S&P 500 stock data"
  project = var.project
}