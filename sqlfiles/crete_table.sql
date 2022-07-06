/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/

create table ScrumTeam_(
  Emp_ID Integer PRIMARY KEY,
  FirstName varchar(30) not null,
  LastName varchar(30),
  JobTitle varchar(20)

);

select * from ScrumTeam_;


/*
INSERT INTO tableName (column1, column2,…)
VALUES (value1, value2 … );
*/

INSERT INTO ScrumTeam_ (emp_id,firstname,lastname,jobtitle)
VALUES (1,'Severus','Snape','Tester');

INSERT INTO ScrumTeam_ VALUES (2,'Harold','Finch','Developer');

INSERT INTO ScrumTeam_ VALUES (3,'Phoebe','Buffay','ScrumMaster');

INSERT INTO ScrumTeam_ VALUES (4,'Michael','Scofield','PO');


--how to update data
/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , …
WHERE condition;
*/

update ScrumTeam_
set JOBTITLE = 'Tester'
where EMP_ID = 4;

--Delete from table
/*
DELETE FROM table_name
WHERE condition;
*/

delete from ScrumTeam_
where EMP_ID = 3;

select * from ScrumTeam_;

--saving changes
commit;