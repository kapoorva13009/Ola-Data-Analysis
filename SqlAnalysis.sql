/*creating a database*/
CREATE DATABASE OLA;

/*using the created database*/
USE OLA;

/*inserting the table using the 'table data import wizard' by clicking right on the schema and using the same to import the table*/
/*Checking of the data is importd successfully*/
SELECT * FROM ola_booking_data;

/*Solving the follwing questions*/

#1. Retrive all successful bookings:
CREATE VIEW Successful_bookings AS
SELECT * FROM ola_booking_data
WHERE `Booking Status` = "Completed";

SELECT * FROM Successful_bookings;

#2. Find the average ride distance for each vehicle type:
CREATE VIEW Average_ride_distance_for_each_vehicle AS 
SELECT `Vehicle Type`, AVG(`Ride Distance`) as Avg_distance_travelled
FROM ola_booking_data
GROUP BY `Vehicle Type`;

SELECT * FROM Average_ride_distance_for_each_vehicle;

#3. Get the total number cancelled rides by customer:
CREATE VIEW Total_ride_cancelled_by_customer AS
SELECT COUNT(*) AS Rides_cancelled_by_Customer 
FROM ola_booking_data
WHERE `Cancelled Ride by Customer` = "Yes";

SELECT * FROM Total_ride_cancelled_by_customer;

#4. List the top 5 Vehicle TAT per Pickup location
CREATE VIEW Top_vehicle_tat AS
SELECT `Pickup Location`, AVG(`Vehicle Turn Around Time`) AS Avg_vehicle_tat
FROM ola_booking_data
GROUP BY `Pickup Location`
ORDER BY AVG(`Vehicle Turn Around Time`) ASC
LIMIT 5;

SELECT * FROM Top_vehicle_tat;

#5. Get the number of rides cancelled by drivers due to personal and car related issues:
CREATE VIEW Total_rides_cancelled_by_driver_on_personel_and_vehicle_issues AS
SELECT COUNT(`Reason of Cancellation By Driver`) AS Cancelled_by_driver
FROM ola_booking_data
WHERE `Reason of Cancellation By Driver` != "None" AND `Reason of Cancellation By Driver` != "Other";

SELECT * FROM Total_rides_cancelled_by_driver_on_personel_and_vehicle_issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
CREATE VIEW Max_min_rating_for_driver AS
SELECT MAX(`Driver rating`) AS Max_rating, MIN(`Driver rating`) AS Min_rating
FROM ola_booking_data
WHERE `Vehicle Type` = "Sedan";

SELECT * FROM Max_min_rating_for_driver;

#7. Retrive all rides where payment was made using UPI:
CREATE VIEW Payments_by_UPI AS
SELECT * FROM ola_booking_data
WHERE `Payment Method` = "UPI";

SELECT * FROM Paymets_by_UPI;

#8. Find the average customer rating per vehicle type:
CREATE VIEW Avg_costumer_rating_per_vehicle AS
SELECT `Vehicle Type`, AVG(`Customer rating`) AS Avg_customer_ratings
FROM ola_booking_data
GROUP BY `Vehicle Type`;

SELECT * FROM Avg_costumer_rating_per_vehicle;

#9. Calculate the total booking value of rides completed successfully:
CREATE VIEW Total_value_of_completed_rides AS
SELECT SUM(`Booking Amount`) AS Total_value
FROM ola_booking_data
WHERE `Booking Status` = "Completed";

SELECT * FROM Total_value_of_completed_rides;

#10. List all incomplete rides alog with reason:
CREATE VIEW Incomplete_ride_with_reason AS
SELECT `Booking ID`, `Reason for Incomplete Ride`
FROM ola_booking_data
WHERE `Booking Status` = "Incomplete";

SELECT * FROM Incomplete_ride_with_reason;