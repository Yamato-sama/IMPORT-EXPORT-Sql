select distinct [CategoryName],sum([Quantity]) over( partition by [CategoryName])
from [dbo].[categories] as c
left join [dbo].[products] as p
on c.CategoryID = p.CategoryID
left join [order details] as od
on od.ProductID = p.ProductID
ORDER BY [CategoryName] DESC