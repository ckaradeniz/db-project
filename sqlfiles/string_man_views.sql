--how can we rename the column that we displayed
select first_name as given_name, last_name as surname
from EMPLOYEES;

--text functions,string mani.
--java first_name+" "+last_name
-- in sql concat is ||

select first_name ||' '|| last_name as full_name
from EMPLOYEES;



--Task;
--add @gmail.com and name new column to full_email
select email from employees;

select email ||'@gmail.com' as full_email
from EMPLOYEES;


--making all lowercase
select lower(email||'@gmail.com') as full_email
from EMPLOYEES;

--upper case
select upper(email||'@gmail.com') as full_email
from EMPLOYEES;

--length(value)
select first_name, length(first_name) as length_name
from EMPLOYEES
order by length_name desc;

--substr(colName,begIndex,NumberOfChar)
select substr(first_name,0,1) || '.' || substr(last_name,0,1) as initials
from EMPLOYEES;

select substr(first_name,0,1) || '.' || substr(last_name,0,1) as initials,
       FIRST_NAME||' '||LAST_NAME as full_name,lower(email||'gmail.com') as full_email
from EMPLOYEES;

--VIEW

CREATE VIEW Emaillist_jamal as select substr(first_name,0,1) || '.' || substr(last_name,0,1) as initials,
       FIRST_NAME||' '||LAST_NAME as full_name,lower(email||'gmail.com') as full_email
from EMPLOYEES;

select "full_name"
from Emaillist;

--to remove view
drop view EmailList_jamal
