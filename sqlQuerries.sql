create database OLA;
use OLA;
CREATE TABLE ride_bookings (
    Date DATE,
    Time TIME,
    Booking_ID VARCHAR(20),
    Booking_Status VARCHAR(50),
    Customer_ID VARCHAR(20),
    Vehicle_Type VARCHAR(50),
    Pickup_Location VARCHAR(100),
    Drop_Location VARCHAR(100),
    V_TAT INT,  -- Vehicle Turnaround Time
    C_TAT INT,  -- Customer Turnaround Time
    Canceled_Rides_by_Customer VARCHAR(100),
    Canceled_Rides_by_Driver VARCHAR(100),
    Incomplete_Rides VARCHAR(10),
    Incomplete_Rides_Reason VARCHAR(100),
    Booking_Value INT,
    Payment_Method VARCHAR(20),
    Ride_Distance FLOAT,
    Driver_Ratings FLOAT,
    Customer_Rating FLOAT,
    Vehicle_Images VARCHAR(100)
);
desc ride_bookings;
select * from ride_bookings;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bookings.csv'
INTO TABLE ride_bookings
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

create view successful_booking as select * from ride_bookings where Booking_Status= "Success";

select count(*) from ride_bookings where booking_status="Canceled by Customer";

select vehicle_type, avg(Ride_Distance) from ride_bookings group by vehicle_Type;

select Customer_ID, count(Booking_Status) as total_ride from ride_bookings group by Customer_ID order by total_ride desc LIMIT 5;

select count(*) from ride_bookings where Canceled_Rides_by_Driver ="Personal & Car related issue";

select min(driver_ratings),max(driver_ratings) from ride_bookings where vehicle_type= "Prime sedan";

select * from ride_bookings where Payment_Method="UPI";

select Vehicle_type,avg(Customer_Rating) as avg_cust_rate from ride_bookings group by Vehicle_type;

select sum(Booking_Value) as total_booking_value from ride_bookings where Booking_Status="Success";

select Booking_ID,Incomplete_Rides_Reason
from ride_bookings where Incomplete_rides="yes";

select * from ride_bookings;


