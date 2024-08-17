# Exploring Online Retail Trends: A Data Visualization Project
## Executive Summary

The "Exploring Online Retail Trends" project is a comprehensive data analysis and visualization initiative aimed at understanding consumer behavior and transaction patterns for a UK-based online retailer. By leveraging SQL, MS SQL Server, and Power BI, the project involved cleaning, transforming, and analyzing nearly ten months of transaction data. The key outcomes include actionable insights into customer behavior, product performance, and market trends, enabling informed decision-making for business growth.

## Business Problem

In the highly competitive e-commerce landscape, businesses must continuously adapt to consumer preferences and market dynamics. The key challenge addressed by this project is to uncover critical trends and patterns in consumer behavior to support strategic decision-making. The insights derived from this analysis are intended to help the retailer optimize its product offerings, enhance customer satisfaction, and drive revenue growth.

## Methodology
### Data Flow Diagram
<img width="790" alt="Screen Shot 2024-08-06 at 11 32 22 PM" src="https://github.com/user-attachments/assets/907e74bd-ff26-47ba-a998-e1b6ba773c98">

### 1. **Data Collection**:
   - Source: Transactions from a UK-based online retailer.
   - Dataset Link: [Online Retail Dataset](https://archive.ics.uci.edu/dataset/352/online+retail)

### [2.Data Cleaning](https://github.com/leosantanaoliva/Online_Retail_Trends-A-Data-Visualization-Project/blob/main/Data_Cleanning.sql)

Ensuring data quality is the cornerstone of reliable analysis. The initial step involves a meticulous process of data cleaning. This includes identifying and rectifying issues such as:

- Null Values
- Wrong Typos
- Wrong Data Types

### 3.Data Transformation

 #### [Merging the Data](https://github.com/leosantanaoliva/Online_Retail_Trends-A-Data-Visualization-Project/blob/main/Merging_Tables.sql)
Combining data from different years into a single dataset to provide a comprehensive view of transactions across the entire period.

 #### [Creating the Tables](https://github.com/leosantanaoliva/Online_Retail_Trends-A-Data-Visualization-Project/blob/main/Creating_tables.sql)
After merging the data, we organized it into structured tables suitable for analysis. Key tables include:

- **Transactions Table**: Contains detailed information about each transaction, including transaction ID, date, product ID, quantity, and price.
- **Customers Table**: Houses customer details such as customer ID, demographic information, and location.
- **Products Table**: Lists product information, including product ID, category, and price.
- **Invoices Table**: Contains information related to invoicing, including invoice ID, transaction ID, invoice date, billing details, and total amount.

## Skills

This project utilized a variety of technical skills and tools to achieve the desired outcomes:

- **SQL**: Used for data querying, cleaning, and transforming datasets to prepare them for analysis.
- **MS SQL Server**: Managed and manipulated data within the database environment, including creating and merging tables.
- **Power BI**: Developed interactive dashboards and visualizations to present insights and trends effectively.

## Results
### Data Visualization

#### Page 1: Key Performance Indicators
![kpi](https://github.com/user-attachments/assets/35aed8fd-f156-4826-a330-0408b8771d5e)

#### Page 2: Product Analysis
![product](https://github.com/user-attachments/assets/811a300e-db9e-4c61-b2fb-7efb9949b0e7)

#### Page 3: Customer Analysis
![customer](https://github.com/user-attachments/assets/1309b8ef-a95c-421e-8223-82708c68439b)

### Conclusion

In summary, this project demonstrates the power of data visualization in transforming raw data into meaningful insights. The ability to view and interpret data through interactive dashboards empowers businesses to adapt quickly to market changes, enhance customer satisfaction, and ultimately drive revenue growth. The findings from this project serve as a valuable resource for the retailer, supporting their ongoing efforts to stay competitive in the dynamic e-commerce environment.


