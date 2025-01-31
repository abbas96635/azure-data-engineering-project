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
The datasets used in this project contain structured CSV files sourced from an online repository. These datasets include relevant information for analysis, such as calendar records, customer details, product details, sales data and Territories depending on the use case. The data is ingested into Azure Data Lake via ADF, transformed using Databricks, and then made available in Synapse for visualization in Power BI. Below is the link to the datasets:

Github: https://github.com/abbas96635/azure-data-engineering-project/tree/main/Data

Original: https://www.kaggle.com/datasets/ukveteran/adventure-works

## Extraction
Azure Data Factory (ADF) allows you to dynamically fetch files from an HTTP source (REST API, public HTTP endpoint, etc.) and store them in Azure Data Lake Storage (ADLS). This is done using Lookup, ForEach, and Copy activities.

### How it works ?
1. Lookup Activity
   - The Lookup Activity retrieves a list of files from an HTTP source (API or metadata file).
   - If the HTTP response contains multiple files, set First Row Only = False to return all file names.
   - The response should be in JSON format.
   - Here is the link to the JSON file:

     https://github.com/abbas96635/azure-data-engineering-project/blob/9e0e729a64f5db315e88d3fc61ffb509582d53c5/parameter.json
     

2. ForEach Activity
   - The ForEach Activity loops through the file names from Lookup output.
   - Inside the loop, a Copy Activity is used to fetch and store each file.

3. Copy Activity
   - The Copy Activity is placed inside the ForEach loop.
   - The source dataset is an HTTP dataset (linked to an API).
   - The sink dataset is an Azure Data Lake Storage (ADLS) container.
   - The file name is passed dynamically using parameters.

Each of them are connected in sequencial manner in pipeline which are debuged after the success of previous activity.

## Transformation
The project uses PySpark for data transformation. After ADF ingests CSV data into Azure Data Lake, PySpark cleans, normalizes, and optimizes it. The processed data is then stored in Synapse as an external table for Power BI visualization. Below is the link to the python file:

[Transformation file](https://github.com/abbas96635/azure-data-engineering-project/blob/47d93d4465b872d686eaca6230438e35ed1a0c62/Transformation.ipynb)

## Create external table on view
In Azure Synapse, you can create an external table on a view to enable querying transformed data stored in an Azure Data Lake without physically moving it into Synapse. Azure Synapse does not natively support creating an external table directly on a view, but you can work around this by using CTAS (Create Table As Select) or by leveraging serverless SQL pools. Since Synapse does not allow direct external tables on views, the best practice is to materialize the view as an external table using CTAS. Below are the links to SQL queries to show how external table is created on views.

openrow set function: https://github.com/abbas96635/azure-data-engineering-project/blob/3703e62feff2581ec51e364eec926fbad8e1ff80/create%20openrow%20set.sql




















