INSERT INTO online_retail (Invoice, StockCode, Description, Quantity, InvoiceDate, Price, Customer_ID, Country, ID)
SELECT 
    Invoice,
    StockCode,
    Description,
    Quantity,
    InvoiceDate,
    Price,
    Customer_ID,  -- Ensure this matches the column name in Online_Retail_2012
    Country,
    ID
FROM
    online_retail_2010

UNION ALL

SELECT 
    Invoice,
    StockCode,
    Description,
    Quantity,
    InvoiceDate,
    Price,
    Customer_ID,  -- Ensure this matches the column name in Online_Retail_2012
    Country,
    ID
FROM
    online_retail_2011

UNION ALL

SELECT 
    InvoiceNO as Invoice,
    StockCode,
    Description,
    Quantity,
    InvoiceDate,
    UnitPrice as Price,
    CustomerID as Customer_ID,  -- Ensure this matches the column name in Online_Retail_2012
    Country,
    ID
FROM
    Online_Retail_2012;
