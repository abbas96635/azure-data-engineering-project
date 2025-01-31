CREATE DATABASE SCOPED CREDENTIAL cred_abbas
WITH IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://azureprojectstracc.dfs.core.windows.net/silver',
    CREDENTIAL = cred_abbas
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://azureprojectstracc.dfs.core.windows.net/gold',
    CREDENTIAL = cred_abbas
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

--CREATE EXTERNAL TABLE EXTSALES

CREATE EXTERNAL TABLE golden.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)AS

SELECT * from golden.Sales_2015


SELECT * FROM golden.extsales