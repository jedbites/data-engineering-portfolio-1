# data-engineering-portfolio-1

Ingest data from Kaggle dataset to google cloud storage and bigquery, pre-process, data modelling through DBT, and visualize using Power BI. This will be orchestrated throught Kestra.

Technologies used:

- Python
- SQL
- Kestra
- DBT
- BigQuery
- Google Cloud Storage
- Terraform
- Power BI

## 1. Automated Creation of GCP Resource through Terraform

### a. Install Terraform, refer to the documentation how to install it according to your dev setup.

As for me, I am using a MacOS so I used the following command:
-- brew tap hashicorp/tap
-- brew install hashicorp/tap/terraform

### b. Create the variables.tf, see folder terraform > variables.tf for example.

### c. Create the main.tf file. (terraform > main.tf)

## 2. Data Download

### a. I created a python virtual environment using these command:

-- python3 -m venv .venv

### b. I installed the Kaggle CLI through python

-- pip3 install kaggle
Follow the documentation on how to put kaggle config files to your .kaggle file. This will enable you to use the
Kaggle CLI within your terminal.

### c. I installed the Apple Stock Data for this project.

--#!/bin/bash
kaggle datasets download sharmajicoder/apple-stock-data-from-2010-to-2024

### d. I have done some Exploratory Data Analysis and Cleaning of the data through Jupyter notebook, using pandas.

-- pip3 install jupyter notebook pandas
Refer to the jupyter notebook to see how I do it. (exploratory-data-analysis.ipynb)

## 3. Data Orchestration
