-- Case Study: Stock Market Analysis
-- Create Schema
create schema Assignment;

-- Set Use of the current Schema
use Assignment;

-- After all the Tables are imported then the there is a need to check whether all the tables are imported or not
-- Check what all Tables are currently created
SELECT table_name FROM information_schema.tables WHERE table_schema='Assignment';

-- Lets check the description of Each Table

-- 1. Bajaj_Auto
DESC Bajaj_Auto;
-- As it can be seen the Date is being considered as Text, so there is need to convert the Date Time
Select Date, STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date_As_Dateime' from Bajaj_Auto limit 5;

-- Create the New Table containing the date, close price, 20 Day MA and 50 Day MA.
CREATE TABLE `bajaj1`(
`Date` Date,
`Close Price` double,
`20 Day MA` double,
`50 Day MA` double
);

-- 2. Eicher_Motors
DESC Eicher_Motors;
-- As it can be seen the Date is being considered as Text, so there is need to convert the Date Time
Select Date, STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date_As_Dateime' from Eicher_Motors limit 5;

-- Create the New Table containing the date, close price, 20 Day MA and 50 Day MA.
CREATE TABLE `eicher1`(
`Date` Date,
`Close Price` double,
`20 Day MA` double,
`50 Day MA` double
);

-- 3. Hero_Motocorp
DESC Hero_Motocorp;
-- As it can be seen the Date is being considered as Text, so there is need to convert the Date Time
Select Date, STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date_As_Dateime' from Hero_Motocorp limit 5;
-- Create the New Table containing the date, close price, 20 Day MA and 50 Day MA.
CREATE TABLE `hero1`(
`Date` Date,
`Close Price` double,
`20 Day MA` double,
`50 Day MA` double
);
-- 4. Hero_Motocorp
DESC Infosys;
-- As it can be seen the Date is being considered as Text, so there is need to convert the Date Time
Select Date, STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date_As_Dateime' from Infosys limit 5;
-- Create the New Table containing the date, close price, 20 Day MA and 50 Day MA.
CREATE TABLE `infosys1`(
`Date` Date,
`Close Price` double,
`20 Day MA` double,
`50 Day MA` double
);

-- 5. TCS
DESC TCS;
-- As it can be seen the Date is being considered as Text, so there is need to convert the Date Time
Select Date, STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date_As_Dateime' from TCS limit 5;
-- Create the New Table containing the date, close price, 20 Day MA and 50 Day MA.
CREATE TABLE `tcs1`(
`Date` Date,
`Close Price` double,
`20 Day MA` double,
`50 Day MA` double
);

-- 6. TVS_Motors
DESC TVS_Motors;
-- As it can be seen the Date is being considered as Text, so there is need to convert the Date Time
Select Date, STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date_As_Dateime' from TVS_Motors limit 5;
-- Create the New Table containing the date, close price, 20 Day MA and 50 Day MA.
CREATE TABLE `tvs1`(
`Date` Date,
`Close Price` double,
`20 Day MA` double,
`50 Day MA` double
);