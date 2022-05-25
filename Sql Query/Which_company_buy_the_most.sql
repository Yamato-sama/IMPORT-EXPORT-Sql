select distinct c.[CustomerID],[CompanyName],sum([Quantity]) over(partition by [CompanyName]) as Quantity
from customers as c
inner join orders as o
on c.CustomerID = o.CustomerID
left join [order details] as od
on o.OrderID=od.OrderID
inner join products as p
on p.ProductID = od.ProductID
order by [Quantity] desc


       