variable "project_id" {
    description = "Project ID from GCP."
    default = "securities-portfolio-testing"
}

variable "geo_location" {
    description = "For storage resource locations."
    default = "US"
}

variable "region" {
    description = "Specify region closest to your physical location to reduce latency."
    default = "us-east4"
}

variable "datalake_name" {
    description = "For GCS bucket acting as data lake. Must be globally unique."
    default = "stock-price-vol-datalake-bucket"
}