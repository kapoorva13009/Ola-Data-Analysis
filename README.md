# Ola-Data-Analysis

The OLA cab company is a leader in cab industries, Here I dive into the data of the OLA comapny and its impact on the lives of daily comuters and general users

## Project Overview

![project pipeline](https://github.com/kapoorva13009/Ola-Data-Analysis/blob/main/Ola%20Project%20Pipeline.png)

This project is focused on understanding the Ola dataset with the use of "ChatGPT, Excel, SQL and Power BI". Deriving critical business insights from the data to apply data-driven-decisions for future growth and building trust between the company and the customers, giving ways to multiple modes of development.

---

## Project Steps

### 1. Data Generation Using AI:
   - Used ChatGPT to generate synthetic dataset for Ola comapny
   - Used a well worded prompt to create a dataset for about 10,000 rows containg multiple columns (namely: date, time, location of pickup, location of drop off and etc.)
   - Downloaded the data in CSV format for further use.

### 2. Data Cleaning Using Spreadsheet tool:
   - Utilized Microsoft Excel for Data Cleaning.
   - Removed Duplicate rows, addressed the null value situations to fine tune the data for EDA(exploratory data analysis)
   - Here's an overview to the actual dataset:
   - ![csv overview](https://github.com/kapoorva13009/Ola-Data-Analysis/blob/main/overview.PNG)

### 3. Data Analysis Using SQL:
   - Used MySQL database for analyzing the dataset
   - Queried the dataset for gaining insights on improving customer services, on-time pickups and enhancing feedbacks.
   - Here's a sample from the analysis, for detailed analysis I have added the SQL file in the repository you can access the file through there or you can use this link to reach -> [SQL Analysis](https://github.com/kapoorva13009/Ola-Data-Analysis/blob/main/SqlAnalysis.sql).
   - 
           # Retriving all Completed bookings:
     
           CREATE VIEW Successful_bookings AS
               SELECT *
               FROM ola_booking_data
               WHERE `Booking Status` = "Completed";

           SELECT * FROM Successful_bookings;

### 4. Data Visualization Using Dashboards tool:
   - Leveraged Power BI desktop tool to create dynamic dashboards
   - Used various charts such as Line and Pie with the use of Slicers and Cards to make visualization efficient for business analysis.
   - Synergised the different pages of dashboard to function as one, in resulting data-driven business decisions with use of powerful visuals to calibrate those decisions.
   - Here is a snippet from the dashboard:
   - ![power bi view](https://github.com/kapoorva13009/Ola-Data-Analysis/blob/main/Overall%20Dashboard.PNG)

---

## Results and Insights
1. Port Jeremyberg is the best location to find an Ola cab fast.
2. Customers love to travel via Sedan cabs.
3. For long route and heavy amounts customers prefer paying via Netbanking
4. Credit Cards and UPI are the most used payment methods
5. The preffered cab for long routes in an SUV

---

## License

This project is licensed under the MIT License. 

---
