--how to find employees information of who is making highest salary in the company ?

--get me highest salary
select max(SALARY) from EMPLOYEES;

--highest salary employee information
select *
from EMPLOYEES
where SALARY = 24000;


--subquery solution in one shot
select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES);

--finding second highest salary
--get highest salary first
select max(SALARY) from  EMPLOYEES;

--highest after 24k
select max(salary)
from EMPLOYEES
where salary < 24000;

--one shot combining two queries

select max(salary)
from EMPLOYEES
where salary < (select max(SALARY) from  EMPLOYEES);

--employee information of who is making second highest salary
select *
from EMPLOYEES
where salary = (select max(salary)
                from EMPLOYEES
                where salary < (select max(SALARY) from  EMPLOYEES));

------------
select * from employees;

select * from EMPLOYEES
order by SALARY desc;

select *
from EMPLOYEES
where rownum < 11;

--list the employees who is making top 10 salary

--get the first 10 people then order them high to low based on salary
select *
from employees
where rownum < 11
order by SALARY desc;

--order all employees based on salary high to low then display only first 10 result
select *
from (select * from EMPLOYEES
      order by SALARY desc)
where rownum < 11;
