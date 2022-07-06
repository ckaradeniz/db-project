select * from SCRUMTEAM_;

--adding new column
alter table SCRUMTEAM_ add salary Integer;

--update existing employees salary

update SCRUMTEAM_ set salary = 100000 where EMP_ID =1;

update SCRUMTEAM_ set salary = 90000 where EMP_ID = 2;

update SCRUMTEAM_ set salary = 120000 where EMP_ID = 4;

--rename the column
alter table SCRUMTEAM_ rename column salary to annual_salary;


---delete, drop column
alter table SCRUMTEAM_ drop column annual_salary;

--how to change table name?
alter table scrumteam_ rename to agileteam_;

select * from agileteam_;

--truncate, if we want to delete all data from the table, but still keep the table structure, we use truncate

truncate table agileteam_;

--if we want to delete the table and data together
drop table agileteam_;

select * from customer;

select * from address;