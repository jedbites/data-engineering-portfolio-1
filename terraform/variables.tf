locals {
  data_lake_bucket = "standard-poor-500-stock-data"
}

variable "project" {
  description = "de-project-portfolio-1"
  default = "pelagic-media-461322-b2"
}

variable "region" {
  description = "Region for the gcp resources"
  default = "asia-northeast1"
}

variable "storage_class" {
    description = "Storage class for the data lake bucket"
    default     = "STANDARD"
}

variable "BQ_DATASET" {
    description = "BigQuery dataset that raw data will be loaded into"
    type = string
    default = "stocks_raw_data"
}

variable "GCP_CREDS" {
  description = "Path to the GCP credentials JSON file"
  default = "../keys/gcp_creds.json"
}