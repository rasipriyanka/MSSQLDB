create database payroll_service;


create table employee_payrol(
 Id int Identity(1,1)PRIMARY KEY,
 Name varchar(250),
 Salary float,
 StartDate date,
 )
 use payroll_service;
  select * from employee_payrol;
 Insert into employee_payrol(Name,Salary,StartDate) values('rasi',30000,'02-10-2020');
