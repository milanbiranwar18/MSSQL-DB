create database PayrollService1

create table EmployeePayroll
(
ID int PRIMARY KEY identity,
Name varchar(70) not null,
Salary int not null,
StartDate date not null
)

 select * from EmployeePayroll

 insert into EmployeePayroll (name, salary, startdate) values
('Mukesh',10000.0,'2018-01-13');

insert into EmployeePayroll (Name, Salary, StartDate) values
('Bili',12000.0,'2016-08-26'),
('Terisa',25500.0,'2019-07-17'),
('Charlie',26000.0,'2022-05-30');

select salary from EmployeePayroll where name ='Bili'

select getdate()

select * from EmployeePayroll where startdate between'2018-01-01' and getdate();

alter table EmployeePayroll add gender char(1)

select * from EmployeePayroll

update EmployeePayroll set gender='M'
where name in ('Mukesh','charlie')

update EmployeePayroll set gender='F'
where name in ('Bili','Terisa')

use PayrollService1


select * from EmployeePayroll

select avg(salary) from EmployeePayroll where gender='M'

select sum(salary) from EmployeePayroll where gender='M'

select avg(salary) from EmployeePayroll where gender is null

select avg(salary) from EmployeePayroll where gender='F'

select min(salary) from EmployeePayroll where gender='M'

select max(salary) from EmployeePayroll where gender='M'

select sum(salary) from EmployeePayroll group by gender

select sum(salary),gender from EmployeePayroll group by gender



alter table EmployeePayroll add phone varchar(15), address varchar(100), department varchar(20) not null default 'CS'


select * from EmployeePayroll

alter table EmployeePayroll add constraint 
DefaultConstraint default 'India' for address

update EmployeePayroll set department='Sales' where name='Terisa'


alter table EmployeePayroll
add BasicPay varchar(20), Deductions varchar(20), TaxablePay varchar(20),IncomeTax varchar(20), NetPay varchar(20)

insert into EmployeePayroll values
('Terisa',25500.0,'2019-07-17','F', 2645865656, 'mumbai', 'Markating', 20000, 5500, 3500,2000,20000)

 drop table EmployeePayroll
