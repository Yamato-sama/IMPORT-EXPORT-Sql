select distinct [ShipperID],[CompanyName],count([ShipperID]) over(partition by CompanyName) as Total_Shipping
from [dbo].[shippers] as s
inner join [dbo].[orders] as o
on s.[ShipperID] =o.[ShipVia]
order by Total_Shipping desc