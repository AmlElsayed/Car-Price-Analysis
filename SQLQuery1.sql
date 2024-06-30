CREATE DATABASE cars;
USE cars;
select COLUMN_NAME,DATA_TYPE from INFORMATION_SCHEMA.COLUMNS

--What are different car brands in the dataset?
SELECT DISTINCT Brand  FROM cars
--How many cars are there in the dataset?
select COUNT(Car_ID) from cars
--Which car has the highest mileage?
select TOP 1 Mileage,Brand,Model from cars 
ORDER BY Mileage DESC 
--What is the average Kilometres driven for each brand ?
select Brand,Avg(Kilometers_Driven)from cars
group by Brand

--Which fuel type is most common among the cars?
select Top 1 Fuel_Type ,count(*)as count from cars
group by Fuel_Type order by Fuel_Type DESC 
--What is the maximum power output of a car in the dataset?
select MAX(Power) from cars
--How many cars were manufactured each year?
select Year,count(Car_ID) from cars
group by Year
--What is average number of seats for each brand?
select Brand,AVG(Seats) as AVG_seats from cars
group by Brand

--Which car has the highest engine capacity?
select Top 1 Engine,Brand,Model from cars
order by Engine DESC

--What is the most common owner type among the car?
select Top 1 Owner_Type ,count(*) as count from cars
group by Owner_Type order by count DESC
--What is the range of prices for cars in the dataset?
select Min(Price) as Min_price,MAX(Price) as Max_price from cars
--How many unique car models are there in the dataset?
select count(distinct Model) num_models from cars
--What is the average mileage for each fuel type?
select Fuel_Type,Avg(Mileage)  AVG_mileage from cars
group by Fuel_Type
--what was the average Price of all cars per year?
select Year,AVG(Price) AVG_price from cars
group by Year

--1- What is average price for all cars?
select AVG(Price) Average_price from cars

--2- What is highest price for all cars?
select MAX(Price) Max_price from cars

--3- What is lowest price for all cars?
select min(Price) Max_price from cars

--4- How many kilemetres for mercedes?
select Model,Kilometers_Driven from cars
where Brand='Mercedes'

--5- what is brand for cars that use diesel?
select Brand from cars
where Fuel_Type='Diesel'

--6- what is transmission for bmw?
select Brand,Transmission from cars
where Brand='BMW'

--7- what are the top 6 most highest price cars ?
select Top 6 Price,Brand from cars
ORDER BY Price Desc

--8- what is engine for Civic Model?
select Brand,Model,Engine from cars
where Model='Civic'

--9-what is the brand of all cars per Owner_type?
select Owner_Type,count(Brand)as num_of_brands from cars
group by Owner_Type

--10- How many seats for BMW ?
select Brand,Model,Year,Seats from cars
where Brand='BMW'

--11-How many cars that is ford?
select count(Brand) num_of_brand from cars
where Brand ='Ford'

--12- what is mileage for Civic Model?
select Brand ,Model,Mileage from cars
where Model='Civic'



