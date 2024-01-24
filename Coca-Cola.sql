#Retrieve all columns for orders where the 
#Beverage Brand is 'Coca-Cola':
select * from powerq

where BeverageBrand = 'Coca-Cola';

#2 Retrieve the total revenue for each Beverage Brand.

select BeverageBrand,
sum(revenue) as TotalRevenue
from powerq
group by (BeverageBrand);

#3Retrieve the average price per unit 
#for each Beverage Brand.

select BeverageBrand,
avg(ppu) as avgPrice
from powerq
group by (BeverageBrand);

#4Retrieve the total revenue and units sold for 
#each Retailer in the West region.
select sum(UnitsSold) as total_units,
sum(Revenue) as total_rev,
Retailer
Region
from powerq
#where Region = 'West'
group by Retailer;

#Retrieve the total revenue and units sold 
#for each combination of Retailer and Beverage Brand.

select
retailer,
BeverageBrand,
sum(revenue) as total_rev,
sum(UnitsSold) as total_units
from powerq
group by retailer, BeverageBrand;

#Retrieve the Retailer with the highest total revenue.
SELECT Retailer, 
SUM(Revenue) AS TotalRevenue
FROM powerq
GROUP BY Retailer
ORDER BY TotalRevenue DESC
limit 1;

#Retrieve the average Days to Payment for orders with
# a Payment Date in March 2022.

select avg(dtp) as days_tp
from powerq
where dtp >='2022-03-01' and dtp < '2022-12-01'





