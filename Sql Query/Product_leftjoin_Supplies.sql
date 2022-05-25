select productName,CompanyName,count(CompanyName) over(partition by CompanyName ) as Total_Product
from products as p 
left join supplies as s 
on p.SupplierID = s.SupplierID
order by Total_Product desc