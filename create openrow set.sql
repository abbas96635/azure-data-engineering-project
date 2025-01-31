SELECT * FROM
OPENROWSET(
    BULK 'https://azureprojectstracc.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) AS QUERY_1