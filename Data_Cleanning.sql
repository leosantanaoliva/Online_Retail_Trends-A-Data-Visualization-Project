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
                "-- Get details about columns using INFORMATION_SCHEMA\n",
                "SELECT \n",
                "    COLUMN_NAME, \n",
                "    DATA_TYPE, \n",
                "    CHARACTER_MAXIMUM_LENGTH, \n",
                "    IS_NULLABLE\n",
                "FROM \n",
                "    INFORMATION_SCHEMA.COLUMNS\n",
                "WHERE \n",
                "    TABLE_NAME = 'online_retail';\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "f69e6364-c38b-4659-8f14-51ff41edf507",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "(9 rows affected)"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.162"
                    },
                    "metadata": {}
                },
                {
                    "output_type": "execute_result",
                    "metadata": {},
                    "execution_count": 1,
                    "data": {
                        "application/vnd.dataresource+json": {
                            "schema": {
                                "fields": [
                                    {
                                        "name": "COLUMN_NAME"
                                    },
                                    {
                                        "name": "DATA_TYPE"
                                    },
                                    {
                                        "name": "CHARACTER_MAXIMUM_LENGTH"
                                    },
                                    {
                                        "name": "IS_NULLABLE"
                                    }
                                ]
                            },
                            "data": [
                                {
                                    "COLUMN_NAME": "Invoice",
                                    "DATA_TYPE": "nvarchar",
                                    "CHARACTER_MAXIMUM_LENGTH": "50",
                                    "IS_NULLABLE": "YES"
                                },
                                {
                                    "COLUMN_NAME": "StockCode",
                                    "DATA_TYPE": "nvarchar",
                                    "CHARACTER_MAXIMUM_LENGTH": "50",
                                    "IS_NULLABLE": "YES"
                                },
                                {
                                    "COLUMN_NAME": "Description",
                                    "DATA_TYPE": "nvarchar",
                                    "CHARACTER_MAXIMUM_LENGTH": "50",
                                    "IS_NULLABLE": "YES"
                                },
                                {
                                    "COLUMN_NAME": "Quantity",
                                    "DATA_TYPE": "nvarchar",
                                    "CHARACTER_MAXIMUM_LENGTH": "50",
                                    "IS_NULLABLE": "YES"
                                },
                                {
                                    "COLUMN_NAME": "InvoiceDate",
                                    "DATA_TYPE": "nvarchar",
                                    "CHARACTER_MAXIMUM_LENGTH": "50",
                                    "IS_NULLABLE": "YES"
                                },
                                {
                                    "COLUMN_NAME": "Price",
                                    "DATA_TYPE": "float",
                                    "CHARACTER_MAXIMUM_LENGTH": "NULL",
                                    "IS_NULLABLE": "YES"
                                },
                                {
                                    "COLUMN_NAME": "Customer_ID",
                                    "DATA_TYPE": "float",
                                    "CHARACTER_MAXIMUM_LENGTH": "NULL",
                                    "IS_NULLABLE": "YES"
                                },
                                {
                                    "COLUMN_NAME": "Country",
                                    "DATA_TYPE": "nvarchar",
                                    "CHARACTER_MAXIMUM_LENGTH": "50",
                                    "IS_NULLABLE": "YES"
                                },
                                {
                                    "COLUMN_NAME": "ID",
                                    "DATA_TYPE": "nvarchar",
                                    "CHARACTER_MAXIMUM_LENGTH": "50",
                                    "IS_NULLABLE": "YES"
                                }
                            ]
                        },
                        "text/html": [
                            "<table>",
                            "<tr><th>COLUMN_NAME</th><th>DATA_TYPE</th><th>CHARACTER_MAXIMUM_LENGTH</th><th>IS_NULLABLE</th></tr>",
                            "<tr><td>Invoice</td><td>nvarchar</td><td>50</td><td>YES</td></tr>",
                            "<tr><td>StockCode</td><td>nvarchar</td><td>50</td><td>YES</td></tr>",
                            "<tr><td>Description</td><td>nvarchar</td><td>50</td><td>YES</td></tr>",
                            "<tr><td>Quantity</td><td>nvarchar</td><td>50</td><td>YES</td></tr>",
                            "<tr><td>InvoiceDate</td><td>nvarchar</td><td>50</td><td>YES</td></tr>",
                            "<tr><td>Price</td><td>float</td><td>NULL</td><td>YES</td></tr>",
                            "<tr><td>Customer_ID</td><td>float</td><td>NULL</td><td>YES</td></tr>",
                            "<tr><td>Country</td><td>nvarchar</td><td>50</td><td>YES</td></tr>",
                            "<tr><td>ID</td><td>nvarchar</td><td>50</td><td>YES</td></tr>",
                            "</table>"
                        ]
                    }
                }
            ],
            "execution_count": 1
        },
        {
            "cell_type": "code",
            "source": [
                "-- For SQL Server: Adjust column types\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN Invoice VARCHAR(50) NULL;\n",
                "\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN StockCode VARCHAR(20) NULL;\n",
                "\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN Description VARCHAR(MAX) NULL;\n",
                "\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN Quantity INT NULL;\n",
                "\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN InvoiceDate DATETIME NULL;\n",
                "\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN Price DECIMAL(18, 2) NULL;\n",
                "\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN Customer_ID INT NULL;\n",
                "\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN Country VARCHAR(50) NULL;\n",
                "\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN ID VARCHAR(50) NULL;"
            ],
            "metadata": {
                "azdata_cell_guid": "90c74acf-6709-404a-a908-6c44dfda16ab",
                "language": "sql",
                "tags": []
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully."
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:02:13.679"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 2
        },
        {
            "cell_type": "code",
            "source": [
                "-- Altering columns to be NOT NULL\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN Invoice VARCHAR(50) NOT NULL;\n",
                "\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN StockCode VARCHAR(20) NOT NULL;\n",
                "\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN Description VARCHAR(MAX) NOT NULL;\n",
                "\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN Quantity INT NOT NULL;\n",
                "\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN InvoiceDate DATETIME NOT NULL;\n",
                "\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN Price DECIMAL(18, 2) NOT NULL;\n",
                "\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN Customer_ID INT NOT NULL;\n",
                "\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN Country VARCHAR(50) NOT NULL;\n",
                "\n",
                "ALTER TABLE online_retail\n",
                "ALTER COLUMN ID VARCHAR(50) NOT NULL;\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "86ab4a51-0e18-49b0-96fe-c7fe97ebcbd8",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "error",
                    "evalue": "Msg 515, Level 16, State 2, Line 8\nCannot insert the value NULL into column 'Description', table 'online_retail.dbo.online_retail'; column does not allow nulls. UPDATE fails.",
                    "ename": "",
                    "traceback": []
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "The statement has been terminated."
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:24.976"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 5
        }
    ]
}