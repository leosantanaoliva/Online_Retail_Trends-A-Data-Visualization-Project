# Exploring Online Retail Trends: A Data Visualization Project

## Introduction:

In the evolving world of e-commerce, understanding consumer behavior is crucial for crafting strategies that drive growth and satisfaction. Our dataset provides a detailed view of transactions from an innovative UK-based online retailer. This narrative dives into the data to uncover trends, patterns, and insights that paint a picture of the shopping habits and preferences during this timeframe.

The data encapsulates transactions from a prominent online retail platform specializing in a diverse range of products. This non-store retailer has made its mark by providing a seamless shopping experience, and our analysis offers a snapshot of its performance and consumer interactions over nearly ten months.

Dataset Link here: https://archive.ics.uci.edu/dataset/352/online+retail



## Data flow Diagram
<img width="790" alt="Screen Shot 2024-08-06 at 11 32 22 PM" src="https://github.com/user-attachments/assets/907e74bd-ff26-47ba-a998-e1b6ba773c98">


Technologies Used:
 - SQL
 - MS SQL SERVER
 - Power BI


## Key Features:

### [Data Cleaning](https://github.com/leosantanaoliva/Online_Retail_Trends-A-Data-Visualization-Project/blob/main/Data_Cleanning.sql)

Ensuring data quality is the cornerstone of reliable analysis. The initial step involves a meticulous process of data cleaning. This includes identifying and rectifying issues such as:

- Null Values
- Wrong Typos
- Wrong Data Types


### Data Transformation
 #### [Merging the Data](https://github.com/leosantanaoliva/Online_Retail_Trends-A-Data-Visualization-Project/blob/main/Merging_Tables.sql)
 Combining data from different years into a single dataset to provide a comprehensive view of transactions across the entire period 
 #### [Creating the tables](https://github.com/leosantanaoliva/Online_Retail_Trends-A-Data-Visualization-Project/blob/main/Creating_tables.sql)
After merging the data, we organized it into structured tables suitable for analysis. Key tables include:

- Transactions Table: Contains detailed information about each transaction, including transaction ID, date, product ID, quantity, and price.
- Customers Table: Houses customer details such as customer ID, demographic information, and location.
- Products Table: Lists product information, including product ID, category, and price.
- Invoices Table: Contains information related to invoicing, including invoice ID, transaction ID, invoice date, billing details, and total amount.
  
### Data Visualization

### Page 1: Key Performance indicators
![kpi](https://github.com/user-attachments/assets/35aed8fd-f156-4826-a330-0408b8771d5e)

### Page 2: Product analysis
![product](https://github.com/user-attachments/assets/811a300e-db9e-4c61-b2fb-7efb9949b0e7)

### Page 3: Costumer analysis
![customer](https://github.com/user-attachments/assets/1309b8ef-a95c-421e-8223-82708c68439b)


Conclusion

Exploring Online Retail Trends" represents a valuable resource for retailers, analysts, and stakeholders seeking to understand the dynamics of the online retail landscape. By harnessing the power of data visualization, this project offers unparalleled insights into customer behavior, product performance, and market trends, paving the way for informed decision-making and strategic growth in the ever-evolving e-commerce industry


