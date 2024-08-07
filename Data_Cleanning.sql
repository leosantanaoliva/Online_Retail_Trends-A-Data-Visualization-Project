-- Get details about columns using INFORMATION_SCHEMA
SELECT 
    COLUMN_NAME, 
    DATA_TYPE, 
    CHARACTER_MAXIMUM_LENGTH, 
    IS_NULLABLE
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_NAME = 'online_retail';

-- Adjust column types (for SQL Server)
ALTER TABLE online_retail
ALTER COLUMN Invoice VARCHAR(50) NULL;

ALTER TABLE online_retail
ALTER COLUMN StockCode VARCHAR(20) NULL;

ALTER TABLE online_retail
ALTER COLUMN Description VARCHAR(MAX) NULL;

ALTER TABLE online_retail
ALTER COLUMN Quantity INT NULL;

ALTER TABLE online_retail
ALTER COLUMN InvoiceDate DATETIME NULL;

ALTER TABLE online_retail
ALTER COLUMN Price DECIMAL(18, 2) NULL;

ALTER TABLE online_retail
ALTER COLUMN Customer_ID INT NULL;

ALTER TABLE online_retail
ALTER COLUMN Country VARCHAR(50) NULL;

ALTER TABLE online_retail
ALTER COLUMN ID VARCHAR(50) NULL;

-- Create the purchased_items table
CREATE TABLE purchased_items (
    Invoice VARCHAR(50),
    StockCode VARCHAR(50),
    Quantity INT,
    Price DECIMAL(18, 2),
    Country VARCHAR(50),
    Invoice_Purchase DECIMAL(18, 2),
    Customer_ID INT,
    InvoiceDate_Date DATE,
    InvoiceDate_Time TIME
);

-- Insert the data into the purchased_items table
INSERT INTO purchased_items (Invoice, StockCode, Quantity, Price, Country, Invoice_Purchase, Customer_ID, InvoiceDate_Date, InvoiceDate_Time)
SELECT 
    Invoice, 
    StockCode,
    Quantity, 
    Price, 
    Country, 
    Price * Quantity AS Invoice_Purchase, 
    Customer_ID, 
    CAST(InvoiceDate AS DATE) AS InvoiceDate_Date,
    CAST(InvoiceDate AS TIME) AS InvoiceDate_Time
FROM 
    online_retail
WHERE 
    Customer_ID IS NOT NULL 
    AND Quantity > 0 
    AND StockCode IS NOT NULL;

-- Create the Stock_Items table
CREATE TABLE Stock_Items (
    StockCode VARCHAR(50),
    Description VARCHAR(MAX)
);

-- Insert the data into the Stock_Items table
INSERT INTO Stock_Items (StockCode, Description)
SELECT DISTINCT 
    StockCode, 
    Description
FROM 
    online_retail
WHERE 
    StockCode IS NOT NULL
    AND Quantity > 0;

-- Create the customer_info table
CREATE TABLE customer_info (
    Customer_ID VARCHAR(50),
    Number_of_purchases INT,
    Country VARCHAR(100)
);

-- Insert the data into the customer_info table
INSERT INTO customer_info (Customer_ID, Number_of_purchases, Country)
SELECT 
    Customer_ID, 
    COUNT(DISTINCT Invoice) AS Number_of_purchases,
    Country
FROM 
    online_retail
WHERE 
    StockCode IS NOT NULL
    AND Quantity > 0
GROUP BY 
    Customer_ID, Country;

-- Create the invoice_summary table
CREATE TABLE invoice_summary (
    Invoice VARCHAR(50),
    Invoice_price DECIMAL(10, 2),
    Quantity_Order INT,
    Date DATE
);

-- Insert the data into the invoice_summary table
INSERT INTO invoice_summary (Invoice, Invoice_price, Quantity_Order, Date)
SELECT  
    Invoice, 
    SUM(Invoice_Purchase) AS Invoice_price, 
    SUM(Quantity) AS Quantity_Order, 
    InvoiceDate_Date AS Date
FROM 
    purchased_items
GROUP BY 
    Invoice, 
    InvoiceDate_Date;
