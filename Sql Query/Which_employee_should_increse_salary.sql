select DISTINCT CONCAT([LastName],' ',[FirstName]) as Fullname,count([OrderID]) over(partition by [FirstName]) as Total_Sale
from employees as e
inner join orders as o 
on e.EmployeeID = o.EmployeeID
order by Total_Sale desc