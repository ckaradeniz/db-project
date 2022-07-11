select * from testers
union
select * from developers;

select names from testers
union
select names from developers;

select names from developers
minus
select names from testers;

--how to find duplicate names in employees table
select FIRST_NAME,count(*)
from employees
group by FIRST_NAME
having count(*) > 1;