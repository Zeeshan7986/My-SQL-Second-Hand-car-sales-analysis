create database cardekho;
use cardekho;

#Read cars data

SELECT * FROM cardekho.`car dekho`;

#Total cars: To get a count of total records

select count(name)
FROM cardekho.`car dekho`;

#How many cars will be available in 2023

select*
FROM cardekho.`car dekho`
where year=2023;

#How many cars are available in year 2020,2021,2022

select*
FROM cardekho.`car dekho`
where year IN (2020,2021,2022)
order by year desc;

#Client asked to print the total number of cars by year.

select year, count(name)
from cardekho.`car dekho`
group by year
order by year desc;

#Number of Diesel car in 2020

select*
FROM cardekho.`car dekho`
where year = 2020 AND fuel="Diesel";

#Car detail between 2015 to 2023

select*
FROM cardekho.`car dekho`
where year between 2015 AND 2023
order by year DESC;

#Number of Petrol car in 2020

select*
FROM cardekho.`car dekho`
where year = 2020 AND fuel="Petrol";

#Grouping the fuel type by year

select year,fuel , count(name)
from cardekho.`car dekho`
group by year,fuel;

#Which year has more than 100 cars?

Select year, count(name)
from cardekho.`car dekho`
group by year 
having count(name)>100;

#Complete list of car count between 2015 to 2023

select count(name)
from cardekho.`car dekho`
where year between 2015 AND 2023;






