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
    Canceled_Rides_by_Customer INT,
    Canceled_Rides_by_Driver INT,
    Incomplete_Rides VARCHAR(10),
    Incomplete_Rides_Reason VARCHAR(100),
    Booking_Value INT,
    Payment_Method VARCHAR(20),
    Ride_Distance FLOAT,
    Driver_Ratings FLOAT,
    Customer_Rating FLOAT,
    Vehicle_Images VARCHAR(100)
);
select * from ride_bookings;
