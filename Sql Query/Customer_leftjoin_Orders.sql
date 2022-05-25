select ShipCountry,count(OrderID) as Total
FROM customers as c
right join orders as o
using(CustomerID)
group by ShipCountry