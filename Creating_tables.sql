{
    "metadata": {
        "kernelspec": {
            "name": "SQL",
            "display_name": "SQL",
            "language": "sql"
        },
        "language_info": {
            "name": "sql",
            "version": ""
        }
    },
    "nbformat_minor": 2,
    "nbformat": 4,
    "cells": [
        {
            "cell_type": "code",
            "source": [
                "-- Create the table with the necessary schema\n",
                "CREATE TABLE purchased_items (\n",
                "    Invoice VARCHAR(50),  -- Adjust the datatype and size as per your actual schema\n",
                "    StockCode VARCHAR(50), -- Adjust the datatype and size as per your actual schema\n",
                "    Quantity INT,\n",
                "    Price DECIMAL(18, 2),\n",
                "    Country VARCHAR(50),  -- Adjust the datatype and size as per your actual schema\n",
                "    Invoice_Purchase DECIMAL(18, 2),\n",
                "    Customer_ID INT,\n",
                "    InvoiceDate_Date DATE,\n",
                "    InvoiceDate_Time TIME\n",
                ");\n",
                "\n",
                "-- Insert the data into the table\n",
                "INSERT INTO purchased_items (Invoice, StockCode, Quantity, Price, Country, Invoice_Purchase, Customer_ID, InvoiceDate_Date, InvoiceDate_Time)\n",
                "SELECT \n",
                "    Invoice, \n",
                "    StockCode,\n",
                "    Quantity, \n",
                "    Price, \n",
                "    Country, \n",
                "    Price * Quantity AS Invoice_Purchase, \n",
                "    Customer_ID, \n",
                "    CAST(InvoiceDate AS DATE) AS InvoiceDate_Date,\n",
                "    CAST(InvoiceDate AS TIME) AS InvoiceDate_Time\n",
                "FROM \n",
                "    online_retail\n",
                "WHERE \n",
                "    Customer_ID IS NOT NULL \n",
                "    AND Quantity > 0 \n",
                "    AND StockCode IS NOT NULL;\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "612c4869-0eaf-4193-bd30-aa702999d904",
                "language": "sql",
                "tags": []
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(1203544 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:27.056"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 27
        },
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE Stock_Items (\n",
                "    StockCode VARCHAR(50),\n",
                "    Description VARCHAR (MAX)\n",
                ");\n",
                "INSERT INTO Stock_Items(StockCode, Description)\n",
                "select \n",
                "    DISTINCT StockCode, \n",
                "    Description\n",
                "from online_retail\n",
                "WHERE StockCode IS NOT NULL\n",
                "AND Quantity > 0"
            ],
            "metadata": {
                "azdata_cell_guid": "9296aeb9-6b1c-4734-85d2-8704bf737e8f",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(6661 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:06.124"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 30
        },
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE customer_info (\n",
                "    Customer_ID VARCHAR(50),\n",
                "    Number_of_purchases INT,\n",
                "    Country VARCHAR(100)\n",
                ");\n",
                "INSERT INTO customer_info (Customer_ID, Number_of_purchases, Country)\n",
                "SELECT \n",
                "    Customer_ID, \n",
                "    COUNT(DISTINCT Invoice) AS Number_of_purchases,\n",
                "    Country\n",
                "FROM \n",
                "    online_retail\n",
                "WHERE \n",
                "    StockCode IS NOT NULL\n",
                "    AND Quantity > 0\n",
                "GROUP BY \n",
                "    Customer_ID, Country;\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "70f15b53-1a39-448a-a41c-d069ea9b6803",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(5908 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:01.329"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 37
        },
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE invoice_summary (\n",
                "    Invoice VARCHAR(50),\n",
                "    Invoice_price DECIMAL(10, 2),\n",
                "    Quantity_Order INT,\n",
                "    Date DATE\n",
                ");\n",
                "\n",
                "INSERT INTO invoice_summary (Invoice, Invoice_price, Quantity_Order, Date)\n",
                "SELECT  \n",
                "    Invoice, \n",
                "    SUM(Invoice_Purchase) AS Invoice_price, \n",
                "    SUM(Quantity) AS Quantity_Order, \n",
                "    InvoiceDate_Date AS Date\n",
                "FROM \n",
                "    dbo.purchased_items\n",
                "GROUP BY \n",
                "    Invoice, \n",
                "    InvoiceDate_Date;\n",
                "\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "d3bd49d9-7859-4f27-b2fd-3a561b02c21a",
                "language": "sql",
                "tags": []
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(36975 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:02.236"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 45
        }
    ]
}