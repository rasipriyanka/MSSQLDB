create database payroll_service;

create table employee_payrol(
 Id int Identity(1,1)PRIMARY KEY,
 Name varchar(250),
 Salary float,
 StartDate date,
 )
 use payroll_service;
 Insert into employee_payrol(Name,Salary,StartDate) values('rasi',30000,'02-10-2020');
 Insert into employee_payrol(Name,Salary,StartDate) values('priya',15000,'02-12-2020'),('priyanka',33000,'01-03-2021'),('mahesh',44000,'03-02-2021'),('yesh',6600,'05-04-2021');
 select * from employee_payrol;
 select Salary from employee_payrol where Name='priya' or Name='yesh';
 select * from employee_payrol where StartDate between cast('2021-01-03' as date) and getdate();
