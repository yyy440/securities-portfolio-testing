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
    default = "stock-price-ind-json-datalake"
}

variable "dataset_id" {
    description = "Name for GCS BigQuery Dataset."
    default = "stocks_portfolio_testing"
}

variable "ds_friendly_name" {
    description = "Friendly name for GCS BigQuery dataset."
    default = "Dataset for all project tables."
}

variable "ds_description" {
    description = "BigQuery dataset description."
    default = "BigQuery dataset holding all the tables for the project."
}

variable "table_expiration_ms" {
    description = "Time set in ms for BigQuery table deletion."
    default = 86400000 # 1 day
}