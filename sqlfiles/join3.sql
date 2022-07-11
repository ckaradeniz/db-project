--get me first_name,last_name and department name for all employees

select * from employees;

select * from departments;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where e.department_id is null;

--get me first_name,last_name and department_name,city for all employees
select first_name,last_name,department_name,CITY
from employees e join departments d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID
join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID;

--get me firstname,lastname and deparment name, city,country_name for all employees;
select first_name,last_name,department_name,CITY,COUNTRY_NAME
from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID
join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID
join COUNTRIES c
on c.COUNTRY_ID = l.COUNTRY_ID;