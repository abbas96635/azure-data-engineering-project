# Azure ETL | Data-engineering project using ADF,Databricks,Synapse and Power BI

## Introduction
This project implements a data pipeline using Azure Data Factory (ADF), Databricks, Synapse, and Power BI for end-to-end data processing and visualization. ADF fetches CSV data from an online source and stores it in Azure Data Lake. Databricks processes and transforms the data, which is then stored as an external table in Synapse. Finally, Power BI connects to Synapse for interactive reporting and visualization.

![Project Workflow](SAVE_20250201_015008.jpg)

## Technology used
1. Data Ingestion
   - Azure Datafactory
2. Data Storage
   - Azure Data Lake Gen 2
3. Data Transformation
   - Azure Databricks
4. Data Serving
   - Azure Synapse
5. Data Visualization
   - Power BI

## Datasets used
The datasets used in this project contain structured CSV files sourced from an online repository. These datasets include relevant information for analysis, such as  calendar records, customer details, product details, sales data and Territories depending on the use case. The data is ingested into Azure Data Lake via ADF, transformed using Databricks, and then made available in Synapse for visualization in Power BI. Below is the link to the datasets:

Github: https://github.com/abbas96635/azure-data-engineering-project/tree/main

Original: https://www.kaggle.com/datasets/ukveteran/adventure-works













