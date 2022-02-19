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
 Alter table employee_payrol add Gender char;
 UPDATE employee_payrol SET Gender='F' where Id=3 or Id=4 or Id=1;
 select * from employee_payrol;
 select SUM(Salary) as Totalsalary FROM employee_payrol;
 select SUM(Salary) as Totalsalary, Gender FROM employee_payrol group by Gender;
 select SUM(Salary) as Femalesalary FROM employee_payrol where Gender='F';
 select AVG(Salary) as Avgsalry FROM employee_payrol;
 select MAX(Salary) as Maximumsalray FROM employee_payrol;
 select MAX(Salary) as Maximumsalary, Gender FROM employee_payrol group by Gender;
 select MIN(Salary) as Minimumsalray FROM employee_payrol;
 select MIN(Salary) as Minimumsalary, Gender FROM employee_payrol group by Gender;
 Alter table employee_payrol add PhoneNumber bigint;
 Alter table employee_payrol DROP COLUMN Address;
 Alter table employee_payrol add Addres varchar(250) not null default 'Vijayawada';
 Alter table employee_payrol add Department varchar(250) not null default 'Manager';
 update employee_payrol set PhoneNumber=9997778886;
 update employee_payrol set Department ='dpt' where Id in (1,2,3);
 update  employee_payrol set Addres='HYD'   where Id in (4,5);
 select * from employee_payrol;
 Alter table employee_payrol add Deduction bigint,Taxable bigint not null default(45000),IncomeTax bigint not null default(20000);
 update employee_payrol set Deduction=5000;
 Alter table employee_payrol add Netpay bigint;
 update employee_payrol set Netpay=Basepay-Deduction;

-------UC11----------
create table Companyname(
CompanyId int not null PRIMARY KEY,
ComapenyName varchar(200)
);
create table EmployeeInfo(
EmpId int not null PRIMARY KEY,
CompanyId int,
EmpName varchar(200),
EmpPhno bigint,
StartDate date
);
ALTER TABLE EmployeeInfo ADD CONSTRAINT FK_CompanyEmpInfo FOREIGN KEY (CompanyId) REFERENCES Companyname(CompanyId);

create table DepartmentInfo(
DepartId int not null PRIMARY KEY,
EmpId int,
DepertName varchar(200),
);
Alter table DepartmentInfo add constraint FK_EmpDeprtInfo foreign key(EmpId)references EmployeeInfo(EmpId);

create table payroll_Emp(
RFERId int not null PRIMARY KEY,
EmpId int,
Basicpay bigint not null,
Deduction bigint not null,
Tax  bigint not null,
Incometax bigint not null,
Netpay bigint not null
);
ALTER TABLE payroll_Emp ADD CONSTRAINT FK_PayrollEMp FOREIGN KEY(EmpId) REFERENCES EmployeeInfo(EmpId);
 
 Insert INTO Companyname(CompanyId,ComapenyName)
 values(71,'BL');

INSERT INTO EmployeeInfo(EmpId,CompanyId,EmpName,Empphno,StartDate)values(2013346,71,'priyaa',8887779966,'10-6-2020'),(108978,71,'vedha',9234566789,'11-4-2019'),(201837,71,'yesh',9876556890,'5-6-2018');

select * from EmployeeInfo

INSERT INTO  DepartmentInfo(DepartId,EmpId,DepertName)
values(8,2013346,'admin');
SELECT * FROM DepartmentInfo

INSERT INTO payroll_Emp(RFERId,EmpId,Basicpay,Deduction,Tax,Incometax,Netpay)values(13445,2013346,76544,2000,2000,1500,45000),(56789,2013346,50000,2000,2000,1500,450000);

SELECT * FROM payroll_Emp
