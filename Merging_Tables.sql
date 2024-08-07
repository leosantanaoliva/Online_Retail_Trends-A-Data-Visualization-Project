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
                "INSERT INTO online_retail (Invoice, StockCode, Description, Quantity, InvoiceDate, Price, Customer_ID, Country, ID)\n",
                "SELECT \n",
                "    Invoice,\n",
                "    StockCode,\n",
                "    Description,\n",
                "    Quantity,\n",
                "    InvoiceDate,\n",
                "    Price,\n",
                "    Customer_ID,  -- Ensure this matches the column name in Online_Retail_2012\n",
                "    Country,\n",
                "    ID\n",
                "FROM\n",
                "    online_retail_2010\n",
                "\n",
                "UNION ALL\n",
                "\n",
                "SELECT \n",
                "    Invoice,\n",
                "    StockCode,\n",
                "    Description,\n",
                "    Quantity,\n",
                "    InvoiceDate,\n",
                "    Price,\n",
                "    Customer_ID,  -- Ensure this matches the column name in Online_Retail_2012\n",
                "    Country,\n",
                "    ID\n",
                "FROM\n",
                "    online_retail_2011\n",
                "\n",
                "UNION ALL\n",
                "\n",
                "SELECT \n",
                "    InvoiceNO as Invoice,\n",
                "    StockCode,\n",
                "    Description,\n",
                "    Quantity,\n",
                "    InvoiceDate,\n",
                "    UnitPrice as Price,\n",
                "    CustomerID as Customer_ID,  -- Ensure this matches the column name in Online_Retail_2012\n",
                "    Country,\n",
                "    ID\n",
                "FROM\n",
                "    Online_Retail_2012;\n",
                "\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "c204742d-ab81-47f4-ab56-0e2228c43d3d",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(1609280 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:04:21.831"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 5
        }
    ]
}