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

-- Checking how many Null Values are present
SELECT COUNT(*) AS 'No of Null Dates', 
	   COUNT(Assignment.Bajaj_Auto.`Close Price`) AS 'No of Null Close Price' 
from Assignment.Bajaj_Auto
WHERE Assignment.Bajaj_Auto.Date IS NULL OR 
      Assignment.Bajaj_Auto.`Close Price` IS NULL;

-- As it can be seen the Date is being considered as Text, so there is need to convert the Date Time
Select Date, STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date_As_Dateime' from Bajaj_Auto limit 5;

-- Create the New Table containing the date, close price, 20 Day MA and 50 Day MA.
CREATE TABLE `bajaj1`(
`Date` Date,
`Close Price` double,
`20 Day MA` double precision(10,2),
`50 Day MA` double precision(10,2)
);

-- Insert Data into the Table by fetching the Details from the Parent Table
INSERT into bajaj1(`Date`,`Close Price`,`20 Day MA`, `50 Day MA` )
WITH data_from_Bajaj_Auto as (
SELECT 
	STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date', 
    `Close Price`
FROM Bajaj_Auto)
SELECT *, 
	avg(`Close Price`) over ( order by year(Date), month(Date), Day(Date) rows 19 preceding ) AS '20 Day MA',
    avg(`Close Price`) over ( order by year(Date), month(Date), Day(Date) rows 49 preceding ) AS '50 Day MA'
 FROM data_from_Bajaj_Auto;
 
-- Select the top 25 entry 
SELECT * from bajaj1 limit 25;

-- 2. Eicher_Motors
DESC Eicher_Motors;

-- Checking how many Null Values are present
SELECT COUNT(*) AS 'No of Null Dates', 
	   COUNT(Assignment.Eicher_Motors.`Close Price`) AS 'No of Null Close Price' 
from Assignment.Eicher_Motors
WHERE Assignment.Eicher_Motors.Date IS NULL OR 
      Assignment.Eicher_Motors.`Close Price` IS NULL;

-- As it can be seen the Date is being considered as Text, so there is need to convert the Date Time
Select Date, STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date_As_Dateime' from Eicher_Motors limit 5;

-- Create the New Table containing the date, close price, 20 Day MA and 50 Day MA.
CREATE TABLE `eicher1`(
`Date` Date,
`Close Price` double,
`20 Day MA` double precision(10,2),
`50 Day MA` double precision(10,2)
);

-- Insert Data into the Table by fetching the Details from the Parent Table
INSERT into eicher1(`Date`,`Close Price`,`20 Day MA`, `50 Day MA` )
WITH data_from_Eicher_Motors as (
SELECT 
	STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date', 
    `Close Price`
FROM Eicher_Motors)
SELECT *, 
	avg(`Close Price`) over ( order by year(Date), month(Date), Day(Date) rows 19 preceding ) AS '20 Day MA',
    avg(`Close Price`) over ( order by year(Date), month(Date), Day(Date) rows 49 preceding ) AS '50 Day MA'
 FROM data_from_Eicher_Motors;

-- Select the top 25 entry 
SELECT * from eicher1 limit 25;

-- 3. Hero_Motocorp
DESC Hero_Motocorp;

-- Checking how many Null Values are present & it can be seen no zeroes are present
SELECT COUNT(*) AS 'No of Null Dates', 
	   COUNT(Assignment.Hero_Motocorp.`Close Price`) AS 'No of Null Close Price' 
from Assignment.Hero_Motocorp
WHERE Assignment.Hero_Motocorp.Date IS NULL OR 
      Assignment.Hero_Motocorp.`Close Price` IS NULL;
      
-- As it can be seen the Date is being considered as Text, so there is need to convert the Date Time
Select Date, STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date_As_Dateime' from Hero_Motocorp limit 5;

-- Create the New Table containing the date, close price, 20 Day MA and 50 Day MA.
CREATE TABLE `hero1`(
`Date` Date,
`Close Price` double,
`20 Day MA` double precision(10,2),
`50 Day MA` double precision(10,2)
);

-- Insert Data into the Table by fetching the Details from the Parent Table
INSERT into hero1(`Date`,`Close Price`,`20 Day MA`, `50 Day MA` )
WITH data_from_Hero_Motocorp as (
SELECT 
	STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date', 
    `Close Price`
FROM Hero_Motocorp)
SELECT *, 
	avg(`Close Price`) over ( order by year(Date), month(Date), Day(Date) rows 19 preceding ) AS '20 Day MA',
    avg(`Close Price`) over ( order by year(Date), month(Date), Day(Date) rows 49 preceding ) AS '50 Day MA'
 FROM data_from_Hero_Motocorp;

-- Select the top 25 entry 
SELECT * from hero1 limit 25;

-- 4. Infosys
DESC Infosys;

-- Checking how many Null Values are present & it can be seen no zeroes are present
SELECT COUNT(*) AS 'No of Null Dates', 
	   COUNT(Assignment.Infosys.`Close Price`) AS 'No of Null Close Price' 
from Assignment.Infosys
WHERE Assignment.Infosys.Date IS NULL OR 
      Assignment.Infosys.`Close Price` IS NULL;
      
-- As it can be seen the Date is being considered as Text, so there is need to convert the Date Time
Select Date, STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date_As_Dateime' from Infosys limit 5;

-- Create the New Table containing the date, close price, 20 Day MA and 50 Day MA.
CREATE TABLE `infosys1`(
`Date` Date,
`Close Price` double,
`20 Day MA` double precision(10,2),
`50 Day MA` double precision(10,2)
);

-- Insert Data into the Table by fetching the Details from the Parent Table
INSERT into infosys1(`Date`,`Close Price`,`20 Day MA`, `50 Day MA` )
WITH data_from_Infosys as (
SELECT 
	STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date', 
    `Close Price`
FROM Infosys)
SELECT *, 
	avg(`Close Price`) over ( order by year(Date), month(Date), Day(Date) rows 19 preceding ) AS '20 Day MA',
    avg(`Close Price`) over ( order by year(Date), month(Date), Day(Date) rows 49 preceding ) AS '50 Day MA'
 FROM data_from_Infosys;

-- Select the top 25 entry 
SELECT * from infosys1 limit 25;

-- 5. TCS
DESC TCS;

-- Checking how many Null Values are present & it can be seen no zeroes are present
SELECT COUNT(*) AS 'No of Null Dates', 
	   COUNT(Assignment.TCS.`Close Price`) AS 'No of Null Close Price' 
from Assignment.TCS
WHERE Assignment.TCS.Date IS NULL OR 
      Assignment.TCS.`Close Price` IS NULL;
-- As it can be seen the Date is being considered as Text, so there is need to convert the Date Time
Select Date, STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date_As_Dateime' from TCS limit 5;

-- Create the New Table containing the date, close price, 20 Day MA and 50 Day MA.
CREATE TABLE `tcs1`(
`Date` Date,
`Close Price` double,
`20 Day MA` double precision(10,2),
`50 Day MA` double precision(10,2)
);

-- Insert Data into the Table by fetching the Details from the Parent Table
INSERT into tcs1(`Date`,`Close Price`,`20 Day MA`, `50 Day MA` )
WITH data_from_TCS as (
SELECT 
	STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date', 
    `Close Price`
FROM TCS)
SELECT *, 
	avg(`Close Price`) over ( order by year(Date), month(Date), Day(Date) rows 19 preceding ) AS '20 Day MA',
    avg(`Close Price`) over ( order by year(Date), month(Date), Day(Date) rows 49 preceding ) AS '50 Day MA'
 FROM data_from_TCS;

-- Select the top 25 entry 
SELECT * from tcs1 limit 25;

-- 6. TVS_Motors
DESC TVS_Motors;

-- Checking how many Null Values are present & it can be seen no zeroes are present
SELECT COUNT(*) AS 'No of Null Dates', 
	   COUNT(Assignment.TVS_Motors.`Close Price`) AS 'No of Null Close Price' 
from Assignment.TVS_Motors
WHERE Assignment.TVS_Motors.Date IS NULL OR 
      Assignment.TVS_Motors.`Close Price` IS NULL;

-- As it can be seen the Date is being considered as Text, so there is need to convert the Date Time
Select Date, STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date_As_Dateime' from TVS_Motors limit 5;

-- Create the New Table containing the date, close price, 20 Day MA and 50 Day MA.
CREATE TABLE `tvs1`(
	`Date` Date,
	`Close Price` double,
	`20 Day MA` double precision(10,2),
	`50 Day MA` double precision(10,2)
);

-- Insert Data into the Table by fetching the Details from the Parent Table
INSERT into tvs1(`Date`,`Close Price`,`20 Day MA`, `50 Day MA` )
WITH data_from_TVS_Motors as (
SELECT 
	STR_TO_DATE(Date, '%d-%M-%Y') AS 'Date', 
    `Close Price`
FROM TVS_Motors)
SELECT *, 
	avg(`Close Price`) over ( order by year(Date), month(Date), Day(Date) rows 19 preceding ) AS '20 Day MA',
    avg(`Close Price`) over ( order by year(Date), month(Date), Day(Date) rows 49 preceding ) AS '50 Day MA'
 FROM data_from_TVS_Motors;

-- Select the top 25 entry 
SELECT * from tvs1 limit 25;

-- So Six tables were created 
-- 1.bajaj1 , 2.eicher1 3.hero1 4.infosys1 5.tcs1 6.tv1 

-- Create a master table containing the date and close price of all the six stocks. (Column header for the price is the name of the stock)
-- The table header should appear as below:
-- |++Date++|++Bajaj++|++TCS++|++TVS++|++Infosys++|++Eicher++|++Hero++|

-- Creating the master table
CREATE TABLE `master_stock` (
    `Date` DATE,
    `Bajaj` DOUBLE,
    `TCS` DOUBLE,
    `TVS` DOUBLE,
    `Infosys` DOUBLE,
    `Eicher` DOUBLE,
    `Hero` DOUBLE
);

-- Insert the data in the table        
INSERT into master_stock(`Date`,`Bajaj`,`TCS`, `TVS`, `Infosys`, `Eicher`, `Hero` )
SELECT 
    b.date AS 'Date',
    b.`Close Price` AS 'Bajaj',
    tc.`Close Price` AS 'TCS',
    tv.`Close Price` AS 'TVS',
    i.`Close Price` AS 'Infosys',
    e.`Close Price` AS 'Eicher',
    h.`Close Price` AS 'Hero'
FROM
    bajaj1 AS b
        INNER JOIN
    tcs1 AS tc ON b.date = tc.date
        INNER JOIN
    tvs1 AS tv ON b.date = tv.date
        INNER JOIN
    infosys1 AS i ON b.date = i.date
        INNER JOIN
    eicher1 AS e ON b.date = e.date
        INNER JOIN
    hero1 AS h ON b.date = h.date;
    
-- Select the top 10 entries
SELECT * from master_stock LIMIT 10;

-- Use the table created in Part(1) to generate buy and sell signal. Store this in another table named 'bajaj2'. Perform this operation for all stocks.
-- |++Date++|++Close Price++|++Signal++|

-- Create Table bajaj2
drop table if exists `bajaj2`;

CREATE TABLE `bajaj2` (
    `Date` DATE,
    `Close Price` DOUBLE,
    `Signal` VARCHAR(5)
);

-- Insert the data in the table & determine the Signal
INSERT INTO bajaj2(`Date`,`Close Price`, `Signal`)
select 
		Date,
		`Close Price` ,
		case when first_value(is_short_grt) over w = nth_value(is_short_grt,2) over w then  'Hold'
				when NTH_VALUE(is_short_grt,2) over w = 1 then 'Buy'
				when NTH_VALUE(is_short_grt,2) over w = 0 then 'Sell'
                else 'Hold'
                end
		 AS "Signal"
	FROM
(
select
		`Date`,
		`Close Price` ,
		if(`20 Day MA`>`50 Day MA`,'1','0') is_short_grt
	from bajaj1
) cross_tab
window w as (order by Date rows 1 preceding );
 
-- Select the top 5 entries
SELECT * FROM bajaj2 LIMIT 5;

-- Create Table eicher2
drop table if exists `eicher2`;

CREATE TABLE `eicher2` (
    `Date` DATE,
    `Close Price` DOUBLE,
    `Signal` VARCHAR(5)
);

-- Insert the data in the table & determine the Signal
INSERT INTO eicher2(`Date`,`Close Price`, `Signal`)
SELECT date,
`Close Price`,
( case 
	WHEN `20 Day MA` > `50 Day MA` then 'BUY'
    WHEN `20 Day MA` < `50 Day MA` then 'SELL'
    else 'HOLD'
  end) AS 'Signal'
FROM eicher1;

-- Select the top 5 entries
SELECT * FROM eicher2 LIMIT 5;

-- Create Table hero2
drop table if exists `hero2`;
CREATE TABLE `hero2` (
    `Date` DATE,
    `Close Price` DOUBLE,
    `Signal` VARCHAR(5)
);

-- Insert the data in the table & determine the Signal
INSERT INTO hero2(`Date`,`Close Price`, `Signal`)
SELECT date,
`Close Price`,
( case 
	WHEN `20 Day MA` > `50 Day MA` then 'BUY'
    WHEN `20 Day MA` < `50 Day MA` then 'SELL'
    else 'HOLD'
  end) AS 'Signal'
FROM hero1;

-- Select the top 5 entries
SELECT * FROM hero2 LIMIT 5;

-- Create Table infosys2
drop table if exists `infosys2`;
CREATE TABLE `infosys2` (
    `Date` DATE,
    `Close Price` DOUBLE,
    `Signal` VARCHAR(5)
);

-- Insert the data in the table & determine the Signal
INSERT INTO infosys2(`Date`,`Close Price`, `Signal`)
SELECT date,
`Close Price`,
( case 
	WHEN `20 Day MA` > `50 Day MA` then 'BUY'
    WHEN `20 Day MA` < `50 Day MA` then 'SELL'
    else 'HOLD'
  end) AS 'Signal'
FROM infosys1;

-- Select the top 5 entries
SELECT * FROM infosys2 LIMIT 5;

-- Create Table tcs2
drop table if exists `tcs2`;
CREATE TABLE `tcs2` (
    `Date` DATE,
    `Close Price` DOUBLE,
    `Signal` VARCHAR(5)
);

-- Insert the data in the table & determine the Signal
INSERT INTO tcs2(`Date`,`Close Price`, `Signal`)
SELECT date,
`Close Price`,
( case 
	WHEN `20 Day MA` > `50 Day MA` then 'BUY'
    WHEN `20 Day MA` < `50 Day MA` then 'SELL'
    else 'HOLD'
  end) AS 'Signal'
FROM tcs1;

-- Select the top 5 entries
SELECT * FROM tcs2 LIMIT 5;

-- Create Table tvs2
drop table if exists `tvs2`;
CREATE TABLE `tvs2` (
    `Date` DATE,
    `Close Price` DOUBLE,
    `Signal` VARCHAR(5)
);

-- Insert the data in the table & determine the Signal
INSERT INTO tvs2(`Date`,`Close Price`, `Signal`)
SELECT date,
`Close Price`,
( case 
	WHEN `20 Day MA` > `50 Day MA` then 'BUY'  -- Golden Cross
    WHEN `20 Day MA` < `50 Day MA` then 'SELL' -- Death Cross
    else 'HOLD'
  end) AS 'Signal'
FROM tvs1;

-- Select the top 5 entries
SELECT * FROM tvs2 LIMIT 5;

-- 4. Create a User defined function, that takes the date as input and returns the signal for that particular day (Buy/Sell/Hold) for the Bajaj stock.

-- delimiter $$
-- CREATE FUNCTION determine_signal( Inp_Date date )
-- returns varchar(5) deterministic