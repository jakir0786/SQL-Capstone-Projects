CREATE DATABASE
COACHX;

drop database 
COACHX;                















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































CREATE DATABASE
COACHX;

drop database 
COACHX;  

create table
Companies
(

id         INT,            --400 to -300--
name       varchar(20),    --256 (0 to 255)--
Address    varchar(20),    --if you want to write a long paragraph that can go over the lines--
email      varchar(20),     
phone      bigint          --above then 10 digits nos--
)
    
select * from companies

backup database COACHX
to disk = 'D:\COACHX.bak';  --yee query database kaa backup lene kee liye karte hai--

backup database COACHX 
to disk = 'D:\COACHX.bak'
with diffrential;   --yee query kuch changes kiya database mein tab use karna hai---

insert into
companies (id,name,address,email,phone)
values
(6,'google' ,'usa' ,'google@1234' ,'9284500338')


select * from companies

select 
name , address
from
companies

select * 
from 
companies
where name = 'tesla'

select 
name,address,phone
from
companies
where id = '3';

select * 
from companies
where name = 'tesla'
and address = 'usa'


alter table 
companies
add
department varchar(50),
jobrole VARCHAR(25),
salary int,
dateofjoining date;

update companies 
set department = 'data analytics'
where id = 1

update companies 
set dateofjoining = 1999-21-12
where name = 'google';

select getdate ()

update companies
set jobrole = 'python developer'
where id = 5

update companies 
set salary = 60000
where id = 6

update companies 
set dateofjoining ='17-10-2022'
where name = 'google'

select *
from
companies
where
salary = 60000

--ekk table kaa data dusrey table mein copy karne kee liye hai command--

select *
into companies1
from companies

select * from companies1

--AGAR SIRF BLANK COLUMNS COPY KARNA HAI TO YEE COMMAND HAI---

select column name1,column name2,............column names
into new_table_name
from old_table_name

drop table companies;

delete from companies 
where id = 1

truncate table
companies 

--Renaming the table name and column name---

EXEC sp_rename 'old_table_name' ,'new_table_name' --SYNTAX HAI--
 
 use COACHX;

EXEC sp_rename 'companies1' ,'company1'---yee table kaa naam change karne kee liye use kiya hai command--

select * from company1

EXEC sp_rename 'table_name.oldcolumnname' ,'newcoloumnname' --SYNTAX HAI--

exec sp_rename 'companies.dateofjoining' , 'DOB' ;

select * 
from companies ;

EXEC sp_rename 'company1.phone' ,'phonenumber' --yee column name change karne kee liye use kiya hai command--

-- agar table kaa format copy karna hoo to query kee sath  'where' kii condition lagani hogi joo condition false honi chahiye --

select *
into companies12
from companies
where 1=0

select * from companies12

--Sql constraints---

--CONSTRAINTS---                        Description
1) NOT NULL                             values cannot be Null in table
2) UNIQUE                               values cannot duplicate in the table
3) PRIMARY KEY                          used to uniquely identify a record in a table and row
4) FOREIGN KEY                          it establishes a references a row in another table 
                                         (pointing the primary key in another table)

5) CHECK                                  validates the condition for a new value
6) DEFAULT                                 set the default value in the table if value has not passed
7) create index                                used to speed up the read procesess



----- NOT NULL CONSTRAINTS------

USE COACHX

CREATE TABLE Colleges1
(
college_id int not null unique,
college_name varchar(50)not null unique,
college_dept varchar (60)not null,
college_library varchar(40)not null,
college_labs varchar(50)not null,
college_parking varchar(20)null,
)
select * from colleges1;


insert into 
colleges1(college_id,college_name,college_dept,college_library,college_labs,college_parking)
values
(1,'poona college' ,'physics' ,'boys library' ,'physics labs' ,'two wheeler'),
 (2,'sinhgad college' ,'chemistry' ,'girls library' ,'chemistry labs' ,'four wheeler'),
 (3,'trinity college' ,'BBA' ,'boys library' ,'maths labs' ,'cycle'),
 (4,'chitainya college' ,'BCS' ,'girls library' ,'zology labs' ,'two wheeler'),
 (5,'FG college' ,'maths' ,'others library' ,'biology labs' ,'four wheeler'),
 (6,'modern college' ,'biology' ,'boys library' ,'physics labs' ,'cycle'),
 (7,'DY patil college' ,'physics' ,'girls library' ,'botany labs' ,'two wheeler'),
 (8,'christ college' ,'botany' ,'boys library' ,'physics labs' ,'two wheeler');

 UPDATE COLLEGES 
 SET college_dept = 'bcs'
 where college_id = 4

 CREATE TABLE Colleges2
(
college_id int not null primary key,
college_name varchar(50)not null unique,
college_dept varchar (60)not null,
college_library varchar(40)not null,
college_labs varchar(50)not null,
college_parking varchar(20)null,
)

select * from colleges2

insert into 
colleges2(college_id,college_name,college_dept,college_library,college_labs,college_parking)
values
(1,'poona college' ,'physics' ,'boys library' ,'physics labs' ,'two wheeler'),
 (2,'sinhgad college' ,'chemistry' ,'girls library' ,'chemistry labs' ,'four wheeler'),
 (3,'trinity college' ,'BBA' ,'boys library' ,'maths labs' ,'cycle'),
 (4,'chitainya college' ,'BCS' ,'girls library' ,'zology labs' ,'two wheeler'),
 (5,'FG college' ,'maths' ,'others library' ,'biology labs' ,'four wheeler'),
 (6,'modern college' ,'biology' ,'boys library' ,'physics labs' ,'cycle'),
 (7,'DY patil college' ,'physics' ,'girls library' ,'botany labs' ,'two wheeler'),
 (8,'christ college' ,'botany' ,'boys library' ,'physics labs' ,'two wheeler');

 --Primary key = not null + unique key---
 --Composite primary key :--  composite primary key is made from two or more column.

 create table userdata
 (
 user_id int,
 userdataid int,
 info varchar(201),
 primary key (user_id, userdataid)
 )

 select * from userdata 

 --- KEYS ARE OF TWO PARTS---
 1) CANDIDATES KEYS -- IT HAS ONLY ONE PRIMARY KEY 
 2) COMPOUND KEYS  -- IT HAS MULTIPLE PRIMARY KEYS
 
 --MULTIPLE CANDIDATES KEYS CAN EXITS IN A TABLE--
 1) PRIMARY KEY
 2) ALTERNATE KEY
 3) FOREIGN KEY 

 create table userdata1
 (
 user_id int PRIMARY KEY,
 userdataid int REFERENCES colleges2 (college_id),
 info varchar(201),
 )
  
  select * from userdata1;  


  --Default--

  create table student
  (
  student_id int primary key,
  student_name varchar(30),
  student_address varchar(30) default 'INDIA'
  )

  SELECT * FROM STUDENT;

  INSERT INTO
  STUDENT(student_id,student_name,student_address)
  values
  (1,'ahana','uae'),
  (2,'vibha','australia'),
  (3,'prasanjeet','usa'),
  (4,'jakir','india'),
  (5,'durgesh','singapore'),
  (6,'suresh','japan'),


  --Naming Rules-- (iska matlab hai kii har table alag alag create karna hai)
    create table           create table        create table 
	Employee();             _Employee();        employee();
	
("gggg") -- double quote use for identifyers and strings
('gggg') -- single quote characters kee liye use kartey hai 


Strings -- combination of characters 
           Ex-- "a,b,c" "1,2,3" "@,#,$,%," " . ,"


		  --- SQL JOINS----

SQL JOIN is used to join two tables based on common column and 
select records that have matching values in these columns.

If I didnt get that matching values then what values i get

ANS:--then i will get the null value


SYNTAX OF JOIN ---

select table1.column_name1, table1.column_name2. table2.column_1.........from table_1 join table_2
on table1.common_column_name = table2.common_column_name;


select * from colleges2
SELECT * FROM STUDENT;


 select 
 student.student_id, student.student_name, colleges2.college_labs
 from
 student
 join
 colleges2 
 on 
 student.student_id = colleges2.college_id

 --TYPES OF JOINS---
 
 1) INNER JOIN
 2)LEFT JOIN
 3)RIGHT JOIN
 4)FULL OUTER JOIN
 5)SELF JOIN
 6)CROSS JOIN 
 7)NATURAL JOIN


 --INNER JOIN---                                        
 
 select 
 student.student_id,
 student.student_name,                                    
 colleges2.college_labs                                   
 from                                                        
 student                                                   
 inner join                                              
 colleges2                                                 
 on
 student.student_id = colleges2.college_id
 

 --join with aliases(A)----

 SYNTAX:----

 select 
 T1.column_name1,T1.column_name2,T2.column_name1
 from 
 table1 as T1
 join
 table2 as T2
 on
 T1.common_column_name = T2.common_column_name

 --Aliases with tables and Columns---

 SYNTAX:----

 select 
 T1.column_name as cn1,T1.column_name as cn2,T2.column_name as cn3
 from 
 table1 as T1
 join
 table2 as T2
 on
 T1.common_column_name = T2.common_column_name

--- inner join using aliases for Tables ---- 
  select
 s.student_id,
 s.student_name,                                    
 c.college_labs                                   
 from                                                        
 student as s                                                   
 inner join                                              
 colleges2 as c                                                 
 on
 s.student_id = c.college_id

 --- inner join using aliases for Tables and columns ---- 
  select
 s.student_id as sid,
 s.student_name as sn ,                                  
 c.college_labs  as clab                                 
 from                                                        
 student as s                                                   
 inner join                                              
 colleges2 as c                                                 
 on
 s.student_id = c.college_id
 
 LEFT JOIN = It joins two tables based on common column and selects the records that have matching values in these columns 
               and remaining rows from the left TABLE .   

 SYNTAX OF LEFT JOIN;
 select 
 T1.column_name1,T1.column_name2,T2.column_name3
 from 
 table1 
 LEFT JOIN
 table2
 on
 T1.common_column_name = T2.common_column_name

 
 select 
 student.student_id,
 student.student_name,
 student.student_address,
 colleges2.college_dept,
 colleges2.college_labs                                   
 from                                                        
 student                                                   
 left join                                              
 colleges2                                                 
 on
 student.student_id = colleges2.college_id

 --RIGHT JOIN----

  RIGHT JOIN =  It joins two tables based on common column and selects the records that have matching values in these columns 
                and remaining rows from the RIGHT TABLE . 

  select 
 student.student_id,
 student.student_name,
 student.student_address,
 colleges2.college_dept,
 colleges2.college_labs                                   
 from                                                        
 student                                                   
 RIGHT join                                              
 colleges2                                                 
 on
 student.student_id = colleges2.college_id

 --FULL OUTER JOIN =  It joins two tables based on common column and selects the records that have matching values in these
                      columns  and remaining rows from the BOTH THE TABLE . 
					    
 SELECT 
 student.student_id, student.student_name, student.student_address,
 colleges2.college_dept, colleges2.college_labs,colleges2.college_name
 from 
 student
 full outer join
 colleges2
 on student.student_id = colleges2.college_id

 --CROSS JOIN = It is used to combine each row of one table with each row of another table and it will return cartesian 
                 product of the sets of rows from the table we have joined.

--CARTESIAN JOIN = A = (A,B,C)
                   B = (1,2,3)
				   A*B = (A1,A2,A3,B1,B2,B3,C1,C2,C3)

SYNTAX OF CROSS JOIN--

SELECT COLUMN_NAME1,
       COLUMN_NAME2,
	   COLUMN_NAME3,
	   .
	   .
	   .
	   .
	   COLUMN_NAME N
  FROM TABLE_1
      CROSS JOIN TABLE_2

create table 
meals (mealname varchar (100))

create table 
drinks (drinkname varchar(100))

insert into 
meals
values
('omlet'),
('fried egg'),
('biryani'),
('dal rice');
 
 insert into 
 drinks
 values
 ('orange juice'),
 ('mango juice'),
 ('kiwi juice'),
 ('pineapple juice');

 select * from meals;
 select * from drinks;

 select * from 
 meals 
 cross join
 drinks

 select * from meals,drinks

 --CONCAT OPERATOR---
 select concat_ws ('-' , mealname , drinkname)
 as menulist 
 from meals cross join
 drinks;

 --SELF JOIN---

  SELECT 
 student.student_id, student.student_name, student.student_address,
 colleges2.college_dept, colleges2.college_labs,colleges2.college_name
 from 
 student,
 colleges2
 WHERE student.student_id = colleges2.college_id

 --NATURAL JOIN = A NATURAL JOIN CAN BE A INNER JOIN,CAN BE A LEFT OUTER JOIN,CAN BE A RIGHT OUTER JOIN
                  OUT OF THESE THREE BY DEFAULT IT IS A INNER JOIN

  --SYNTAX--
  SELECT * 
  FROM TABLE_1
  NATURAL JOIN 
  TABLE_2


  SELECT STUDENT.STUDENT_ID, STUDENT.STUDENT_NAME, COLLEGES2.COLLEGE_LABS, COLLEGES2.COLLEGE_LIBRARY 
  FROM
  STUDENT
  RIGHT JOIN
  COLLEGES2
  ON STUDENT.STUDENT_ID = COLLEGES2.COLLEGE_ID

   --SYNTAX OF JOIN QUERIES ON MULTIPLE TABLES--

   SELECT TABLE1.COLUMN_NAME1,
          TABLE2.COLUMN_NAME2,
		  TABLE3.COLUMN_NAME3,
		  TABLE4.COLUMN_NAME4
		  .
		  .
		  FROM 
		  TABLE1
		  INNER JOIN
		  TABLE2
		  ON
		  TABLE1.COMMON_COLUMN_NAME = TABLE2.COMMON_COLUMN_NAME
		  INNER JOIN
		  TABLE3 
		  ON
		  TABLE1.COMMON_COLUMN_NAME = TABLE3.COMMON_COLUMN_NAME
		  INNER JOIN
		  TABLE4 
		  ON 
		  TABLE3.COMMON_COLUMN_NAME = TABLE4.COMMON_COLUMN_NAME;

  --JOINS ON MULTIPLE TABLES---

  create table products 
  (
  product_name varchar(50),
  price int 
  )

   create table products1 
  (
  product_name varchar(50),
  price int 
  )

   create table products2 
  (
  product_name varchar(50),
  price int 
  )

   create table products3 
  (
  product_name varchar(50),
  price int 
  )

  insert into products 
  (product_name,price)
  values
  ('desktop computer',800),
  ('laptop',1200),
  ('tablet',200),
  ('monitor',350),
  ('printer',150);

  insert into products1 
  (product_name,price)
  values
  ('desktop ',800),
  ('palm top',1200),
  ('tablet',200),
  ('floppy',350),
  ('printer',150);

  insert into products2 
  (product_name,price)
  values
  ('desktop computer',800),
  ('laptop',1200),
  ('phone',200),
  ('floppy disk',350),
  ('hardisk',150);

   insert into products3 
  (product_name,price)
  values
  ('desktop computer',800),
  ('laptop',1200),
  ('phone',200),
  ('floppy disk',350),
  ('hardisk',150);

  ---INNER JOIN QUERY ON MULTIPLE TABLES--- 

  select products.product_name,products1.price,products2.product_name,products3.price
  from products 
  inner join
  products1 
  on products.price = products1.price  (A = B ) 
  inner join 
  products2 
  on products.price = products2.price   (B = C )
  inner join 
 products3 
 on products.price = products3.price      (A = C )
 
 -----------------------------------------------------------------------------------------------------
 select * from products 
 select * from products1
 select * from products2 
 select * from products3 


 ----OPERATORS----

 --"AND" OPERATOR USE TO SELECTS DATA IF ALL CONDITIONS ARE TRUE. THEN ONLY IT WILL RETURN THE TABLE IF ANY ONE CONDITION 
         IS FALSE THEN IT WILL NOT RETURN ANY CONDITION.


---'AND'----'OR'------'NOT'--- ARE CALLED AS LOGICAL OPERATORS.

"AND" LOGICAL OPERATOR

TABLE_A           TABLE_B          OUTPUT_TABLE 
TRUE               TRUE               TRUE  
TRUE               FALSE              FALSE
FALSE              TRUE               FALSE
FALSE              FALSE               FALSE

**'TRUE' means it will show the table.
** 'FALSE' means it will not show the table.


 SELECT 
 COLLEGE_NAME , COLLEGE_DEPT
 FROM 
 COLLEGES2 WHERE COLLEGE_NAME = 'MODERN COLLEGE' AND COLLEGE_DEPT = 'MATHS'  [YEE CONDITION FALSE HAI ISLIYE DATA SHOW NHI 
                                                                                 HUA]


 SELECT 
 COLLEGE_NAME , COLLEGE_DEPT
 FROM 
 COLLEGES2 WHERE COLLEGE_NAME = 'MODERN COLLEGE' AND COLLEGE_DEPT = 'BIOLOGY' [YEE CONDITION TRUE HAI ISLIYE YEE DATA SHOW HUA]



 SELECT 
 COLLEGE_NAME , COLLEGE_PARKING
 FROM 
 COLLEGES2 
 WHERE COLLEGE_NAME='DY PATIL COLLEGE' AND COLLEGE_PARKING='TWO WHEELER' 


 --"OR" OPERATOR IF ONLY ONE CONDITON WILL TRUE IT WILL RETURN THE TABLE 

"OR" LOGICAL TABLE

TABLE_A           TABLE_B          OUTPUT_TABLE 
TRUE               TRUE               TRUE  
TRUE               FALSE              TRUE
FALSE              TRUE               TRUE
FALSE              FALSE              FALSE

**'TRUE' means it will show the table.
** 'FALSE' means it will not show the table.


SELECT COLLEGE_NAME, COLLEGE_LABS
FROM COLLEGES2
WHERE COLLEGE_NAME= 'AHMEDNAGAR COLLEGE' OR COLLEGE_LABS= 'GAMES' [ AGAR DONO CONDITION FALSE HAI TOO DATA SHOW NHI KAREGA 
                                                                     AUR FALSE CONDITON WOO HOGI JOO DATA MEIN HAI HEE NHI ] 

SELECT COLLEGE_NAME, COLLEGE_LABS
FROM COLLEGES2
WHERE COLLEGE_NAME= 'DY PATIL COLLEGE' OR COLLEGE_LABS='BIOLOGY LABS' [AGAR EKK CONDITION BHI TRUE HAI TOO DATA SHOW KAREGA]

SELECT * FROM COLLEGES2

--'NOT' OPERATORS SELECT THE DATA IF THE GIVEN CONDITION IS FALSE THEN IT WILL RETURN TRUE ----

TABLE_A               OUTPUT_TABLE
TRUE                   FALSE
FALSE                   TRUE


**'TRUE' means it will show the table.
** 'FALSE' means it will not show the table.

SELECT COLLEGE_NAME,COLLEGE_LIBRARY 
FROM COLLEGES2
WHERE NOT COLLEGE_NAME='DY PATIL COLLEGE'['NOT' OPERATOR LAGAYA TOO JISS CHEEZ PEE LAGAYA HAI WOO CHEEZ SHOW NHI KAREGI]


SELECT COLLEGE_NAME,COLLEGE_LIBRARY 
FROM COLLEGES2
WHERE NOT COLLEGE_NAME='DY PATIL COLLEGE' and not college_name = 'poona college'

SELECT COLLEGE_NAME,COLLEGE_LIBRARY 
FROM COLLEGES2
WHERE NOT COLLEGE_NAME='DY PATIL COLLEGE' or not college_name = 'poona college'

X AND Y ;-- OPERAND 
+,-,% ;-- OPERATORS

** Operators are just symbols that are used to perform operations with values.
**Different types of operators;--
   1)Arithimetic Operators
   2)Comparison Operators
   3)Logical Operators


**Arithimetic Operators;--It is used to perform simple arithimetic operations such as (addition,subtraction,multiplication,
                           division and modulo)

**Comparison Operators ;---We can compare the two values using comparison operators in SQL.
                             (equal to, greater than, less than, less than equal to, greater than equal to, equal to equal to,
							   not equal to )

**Logical Operators ;--- By using logical operators it will return be either True or False.
                         (and,or,not,any and all,between,exists,in,like,is null)


select * from colleges2
   
create table
order1
(
order_id int primary key,
order_amount int,
order_name varchar(20)
)

 insert into 
 order1 
 (order_id,order_amount,order_name)
 values
 (1,10000,'lady handbags'),
 (2,20000,'phones'),
 (3,30000,'laptop'),
 (4,40000,'gaming'),
 (5,100000,'ryzex gaming setups'),
 (6,6000000,'ps5');

 select * from order1

 --OPERATORS--
--ADDITION--- (INCREMENT OPERATOR)

 select order_id,order_name,order_amount+500 as total_amount
 from order1;

 --SUBTRACTION-- (DECREMENT OPERATOR)

 SELECT ORDER_ID,ORDER_NAME,ORDER_AMOUNT-200AS TOTAL_AMOUNT
 FROM ORDER1 

 --MULTIPLICATION--(PRODUCT OPERATOR OR TIMES OPERATOR)

 SELECT ORDER_ID,ORDER_NAME,ORDER_AMOUNT*20 AS TOTAL_AMOUNT
 FROM ORDER1 

 --DIVISION---

 SELECT ORDER_ID,ORDER_NAME,ORDER_AMOUNT/224 AS TOTAL_AMOUNT
 FROM ORDER1

 --MODULO(REMAINDER) OPERATORS--

 5%10=0
 SELECT 7%100 AS RESULT;
 SELECT 5%10 AS RESULT;

 n%10 = N  ('n' modulo rule)

 select * from order1

 --Comparison Operators---

 --Equal to--

 select order_id,order_name,order_amount 
 from order1 
 where 
 order_amount = 40000;

--Less than--
 select order_id,order_name 
 from order1
 where order_amount < 40000;

 --greater than---
 select order_id,order_name,order_amount
 from order1 
 where order_amount > 40000;

 ---greater than equal to---
 select order_id,order_name,order_amount
 from order1 
 where order_amount >= 40000;

 ---less than equal too---
  select order_id,order_name 
 from order1
 where order_amount <= 40000;

 --not equal too-- (<>,!=)

 select order_id,order_name,order_amount
 from order1 
 where order_amount != 40000;

 select order_id,order_name,order_amount 
 from order1 
 where order_amount <> 100000

 ---Logical Operators---

 --SQL 'ANY' = sql 'any' operator compares a value of the first table with all values of the second tables and return the row 
               if there is a match with any value.

select * from colleges2 

select * from student 

select * 
from colleges2 
where college_id = any(
select student_id 
from students
)

--SQL 'ALL' OPERATOR =  sql 'ALL' operator compares a value of the first table with all values of the second tables and
                          return the row if there is a match with all value.

select * 
from order1 
where order_amount>all(

select price 
from products3
)

--'BETWEEN' OPERATOR = TO MATCH THE VALUE IN THE RANGE 


SELECT ORDER_ID,ORDER_AMOUNT,ORDER_NAME
FROM ORDER1
WHERE ORDER_AMOUNT BETWEEN 10000 AND 40000;

SELECT ORDER_ID,ORDER_AMOUNT,ORDER_NAME 
FROM ORDER1 
WHERE ORDER_AMOUNT NOT BETWEEN 10000 AND 40000;

SELECT ORDER_ID,ORDER_NAME 
FROM 
ORDER1 
WHERE ORDER_NAME BETWEEN 'L' AND 'R';

---EXISTS = IT EXECUTES THE OUTER SQL QUERY IF THE SUBQUERY IS NOT NULL (EMPTY-RESULT SET)

--SUBQUERY----
**YEE HAMESHA OUTER QUERY KAA HEE RESULT DIKHAYEGA.

SELECT 
college_id,college_name,college_parking 
from 
colleges2    ----OUTER QUERY-----
where EXISTS (
select order_id   ----INNER QUERY----
from order1  
)

--LIKE OPERATOR = IT IS USED WITH 'WHERE' CLAUSE TO GET RESULT SET THAT MATCHES THE GIVEN STRING PATTERN.

SELECT *
FROM COLLEGES2 
where college_name like 'poona college' 

SELECT *
FROM COLLEGES2 
where college_id like '2' 

--'LIKE' WITH WILDCARDS---

SELECT *
FROM COLLEGES2 
WHERE COLLEGE_NAME LIKE 'F%'

SELECT * 
FROM STUDENT 
WHERE STUDENT_NAME LIKE 'J%'

SELECT * 
FROM COLLEGES2 
WHERE COLLEGE_NAME LIKE '%E'

SELECT * 
FROM COLLEGES2 
WHERE COLLEGE_DEPT LIKE '%A' 

SELECT * 
FROM STUDENT  
WHERE STUDENT_NAME LIKE 'P_' 

select college_name
from colleges2 
where college_name like '_g%'; 

select college_name
from colleges2 
where college_library like '%b_';

--BASICS FUNCTIONS AND STATEMENTS--

DISTINCT-- THIS STATEMENT WILL SELECT THE UNIQUE ROWS FROM A DATABASE TABLE. 

SELECT DISTINCT 
college_library  
FROM COLLEGES2 

SELECT COUNT (DISTINCT COLLEGE_LIBRARY) 
FROM COLLEGES2 

-----------------------------------------------------------------------------------------------
1) FUNCTIONS = COUNT,MAX,AVERAGE 
2) STATEMENTS = SELECT, DISTINCT, ORDER BY, GROUP BY, LIMIT, TOP, FETCH, ALL_OPERATORS 
3) CLAUSES = WHERE, HAVING, IN, EXISTS, SUBQUERY 
------------------------------------------------------------------------------------------------

SELECT COLLEGE_LIBRARY 
AS CLAB FROM COLLEGES2  ['AS' OPERATOR TEMPORARY BASES PEE COLUMN NAME CHANGE KARTA HAI NOT FOR PERMANENT BASES ]

--CONCAT-- ['CONCAT' OPERATOR DOO(2) COLUMNS KOO EKK SATH COMBINE KARTA HAI]
select 
concat(college_name , '(' , college_dept, ')') as C_N_dt 
from colleges2 

--TOP = IT GIVES THE FIXED NUMBER OF ROWS FROM THE DATABASES(TABLE). 'TOP' CLAUSE IS NOT USED IN ALL DBMS BECAUSE 
         DIFFERENT DBMS USE DIFFERENT KEYWORDS TO SELECT A FIXED NUMBER OF ROWS. 
		 

SELECT 
TOP 3* FROM COLLEGES2 

--FETCH-- 
SELECT * 
FROM COLLEGES2 
FETCH THREE ROWS;

--NOT NULL--

SELECT * 
FROM COLLEGES2 
WHERE COLLEGE_LABS IS NOT NULL 

SELECT college_name,college_library 
FROM COLLEGES2 
WHERE COLLEGE_LABS IS NULL

SELECT COUNT (*)
FROM COLLEGES2 
WHERE COLLEGE_DEPT is null 

--MAX--

SELECT MAX (ORDER_AMOUNT)
FROM ORDER1 

--MIN-- 
  
  SELECT MIN (ORDER_AMOUNT)
  FROM ORDER1 


  --AS = "AS" TABLE AND COLUMN KEE NAME KOO CHOTA KARNE KEE LIYE USE KARTEY HAI FOR TEMPORARY TIME (IT IS CALLED ALIASES)


  SELECT * 
  FROM INGREDIENTS 
  WHERE INGREDIENT_PRICE = (
  SELECT MAX (INGREDIENT_PRICE)
  FROM INGREDIENTS 


  select distinct 
  college_library 
  from colleges; 

select * 
from colleges; 















































 





 





















 


  








 




















		   





   







    

   


   





















































