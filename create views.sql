--CREATE VIEW CALENDAR

CREATE VIEW golden.Calendar
AS
SELECT * FROM
OPENROWSET
(
    BULK 'https://azureprojectstracc.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
    ) AS QUERY_2;

--CREATE VIEW CUSTOMERS

CREATE VIEW golden.customers
AS
SELECT * FROM
OPENROWSET
(
    BULK 'https://azureprojectstracc.dfs.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
    ) AS QUERY_2;

--CREATE VIEW PRODUCT CATEGORIES

CREATE VIEW golden.Product_Categories
AS
SELECT * FROM
OPENROWSET
(
    BULK 'https://azureprojectstracc.dfs.core.windows.net/silver/AdventureWorks_ProductCategories/',
    FORMAT = 'PARQUET'
    ) AS QUERY_2;

--CREATE VIEW PRODUCTS

CREATE VIEW golden.Product
AS
SELECT * FROM
OPENROWSET
(
    BULK 'https://azureprojectstracc.dfs.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
    ) AS QUERY_2;

--CREATE VIEW RETURNS

CREATE VIEW golden.returns
AS
SELECT * FROM
OPENROWSET
(
    BULK 'https://azureprojectstracc.dfs.core.windows.net/silver/AdventureWorks_ProductReturns/',
    FORMAT = 'PARQUET'
    ) AS QUERY_2;


--CREATE VIEW SALES_2015

CREATE VIEW golden.Sales_2015
AS
SELECT * FROM
OPENROWSET
(
    BULK 'https://azureprojectstracc.dfs.core.windows.net/silver/AdventureWorks_ProductSales15/',
    FORMAT = 'PARQUET'
    ) AS QUERY_2;



--CREATE VIEW TERRITORIES

CREATE VIEW golden.Territories
AS
SELECT * FROM
OPENROWSET
(
    BULK 'https://azureprojectstracc.dfs.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
    ) AS QUERY_2;




