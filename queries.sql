-- create database of the name cars -- 
CREATE DATABASE cars;
 -- using the database to perform further operations --  
USE cars;
-- reading and displaying the entire database --
SELECT *  FROM mysql_project_1_data_set;
-- Total cars : To get a count of total records --
SELECT count(*) FROM mysql_project_1_data_set;
-- The manager asked the employee, how many cars will be available in 2023? --
SELECT count(*) FROM mysql_project_1_data_set WHERE year = 2023;
-- The manager asked the employee how many cars are available in 2020, 2021, 2022? --
-- this command gives us the sum total of all cars in 2020, 2021, 2022 together --
SELECT count(*) FROM mysql_project_1_data_set WHERE year IN (2020, 2021, 2022);
-- this command gives us the individual totals of the years 2020, 2021, 2022 respectively --
SELECT count(*) FROM mysql_project_1_data_set WHERE year IN (2020, 2021, 2022) GROUP BY year;
-- Client asked me to print the total of all cars by year. I don't see all the details -- 
SELECT count(*) FROM mysql_project_1_data_set GROUP BY year;
-- Client asked the car dealer how many diesel cars will there be in 2020? --
SELECT count(*) FROM mysql_project_1_data_set WHERE fuel = "Diesel" and year = 2020 GROUP BY fuel;
-- Client asked the car dealer how many petrol cars will there be in 2020? --
SELECT count(*) FROM mysql_project_1_data_set WHERE fuel = "Petrol" and year = 2020 GROUP BY fuel;
-- The manager told the employee to print all the fuel cars ( Petrol, Diesel and CNG ) come by all year. --
-- this command gives us the count of all the Petrol cars in their respective years. --
SELECT year, count(*) FROM mysql_project_1_data_set WHERE fuel = "Petrol" GROUP BY year;
-- this command gives us the count of all the Diesel cars in their respective years. --
SELECT year, count(*) FROM mysql_project_1_data_set WHERE fuel = "Diesel" GROUP BY year;
-- this command gives us the count of all the CNG cars in their respective years. --
SELECT year, count(*) FROM mysql_project_1_data_set WHERE fuel = "CNG" GROUP BY year;
-- this command gives us the fuel, count, year of all the cars. We renamed the count(*) (or named it in this case as count* is the default name given by the compiler) to fuelCount. --
SELECT year, fuel, COUNT(*) AS fuelCount FROM mysql_project_1_data_set WHERE fuel IN ('Petrol', 'Diesel', 'CNG') GROUP BY year, fuel;
-- Manager said there were more than 100 cars in a given year. Which year had more than 100 cars? --
SELECT year, count(*) FROM mysql_project_1_data_set GROUP BY year HAVING count(*) > 100;
-- Manager said there were less than 50 cars in a given year. Which year had less than 50 cars? --
SELECT year, count(*) FROM mysql_project_1_data_set GROUP BY year HAVING count(*) < 50;
-- The manager said to the employee that all cars' count details between 2015 and 2023 must be produced. --
SELECT count(*) FROM mysql_project_1_data_set WHERE year BETWEEN 2015 AND 2023;
-- The manager said to the employee that all cars' details between 2015 and 2023 must be produced. --
SELECT * FROM mysql_project_1_data_set WHERE year BETWEEN 2015 AND 2023;
