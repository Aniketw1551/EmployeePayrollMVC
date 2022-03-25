----Created EmployeePayrollMVC database----
create database EmployeePayrollMVC

----Using EmployeePayrollMVC database----
use EmployeePayrollMVC

-----------Create table-------------

create table Employee(
	EmployeeId int IDENTITY (1,1) primary key not null,        
    EmployeeName varchar(50) not null,        
    ProfileImage varchar(255) not null,
	Gender varchar(10) not null,        
    Department varchar(50) not null, 
	Salary int not null,
	StartDate datetime not null,
	Notes varchar(100) not null
);
select * from Employee

