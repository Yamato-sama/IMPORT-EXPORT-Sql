
select count(employeeID) as employeeID,Country
from employees
group by Country  
order by 2