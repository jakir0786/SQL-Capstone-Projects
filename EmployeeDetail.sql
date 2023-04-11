create database INFOSYS

 drop database INFOSYS;

 

create table employeedetail
(
employee_id int,
firstname varchar(20),
lastname varchar (20),
salary int,
joiningdate varchar(30),
department varchar(20),
gender varchar(20)
)

DROP TABLE EMPLOYEDETAIL;

select * 
from employeedetail; 

insert into 
employeedetail (employee_id, firstname, lastname, salary, joiningdate, department, gender)
values 
(6,'jak%ir', 'miya', '200000', '21/12/1996 12:00', 'IT', 'Male')
(2,'Nikita', 'Jain', '530000', '02/14/2013 11:16', 'HR', 'Female'),
(3,'Ashish', 'Kumar', '1000000', '02/15/2013 11:17', 'IT', 'Male'),
(4,'Nikhil', 'Sharma', '480000', '02/16/2013 11:18', 'HR', 'Male'),
(5,'Anish', 'Kadian', '500000', '02/17/2013 11:19', 'Payroll', 'Male')


                                                    QUERIES

SELECT * 
FROM EMPLOYEEDETAIL; 

SELECT FIRSTNAME
FROM EMPLOYEEDETAIL; 

SELECT UPPER(firstname)
AS "First Name" 
FROM EMPLOYEEDETAIL; 

select concat_WS('',firstname,lastname)
as "Name" from employeedetail; 

select * 
from employeedetail
where firstname = 'vikas'; 

select * 
from employeedetail 
where firstname like 'a%';

select * 
from employeedetail 
where firstname like '%h';

select * 
from employeedetail 
where firstname between 'a' and 'p' ;

select * 
from employeedetail 
where firstname NOT between 'a' and 'p' ;

SELECT *
FROM EMPLOYEEDETAIL 
WHERE GENDER LIKE '_LE';

SELECT * 
FROM EMPLOYEEDETAIL 
WHERE FIRSTNAME LIKE 'A____';

SELECT * 
FROM EMPLOYEEDETAIL
WHERE firstname LIKE '%/%%';

select Distinct 
department 
from employeedetail; 

select max(salary) 
from employeedetail;

select min(salary) 
from employeedetail;

select concat('',joiningdate)
as "12 feb 2013" from employeedetail; 

select concat('',joiningdate)
as "2013/02/15" from employeedetail; 


select getdate();

select convert(date,getutcdate())
as utc_date;


select firstname,
convert(date,getutcdate()) as currentdate,
joiningdate,
datediff(month,joiningdate,getutcdate()) as monthssincejoining
from employeedetail;

select * 
from employeedetail 




select concat('','firstname')
as 'hello';

select concat('hello', firstname)
as Hello_firstname
from employeedetail;

select concat('hello', firstname)
as Prefixed_firstname
from employeedetail;

select count(employee_id)
from employeedetail;


select top 1*
from employeedetail;

select *
from employeedetail
where firstname in ('vikas','ashish','nikhil'); 


select *
from employeedetail
where firstname not in ('vikas','ashish','nikhil'); 

select convert(varchar(8), getdate(),108);

select convert(varchar(8), month(),108);

Select first name from "EmployeeDetail" table after removing 
white spaces from right side

select concat('','firstname')
from employeedetail;

























 


















