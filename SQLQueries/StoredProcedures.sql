---------------------Stored Procedures------------------

-------Add Employee stored procedure--------
alter procedure spAddEmployee
(
    @EmployeeName varchar(50),        
    @ProfileImage varchar(255),
	@Gender varchar(10),       
    @Department varchar(50), 
	@Salary int,
	@StartDate datetime ,
	@Notes varchar(100) 
)
as 
begin 
insert into Employee(EmployeeName,ProfileImage,Gender,Department,Salary,StartDate,Notes)
values(@EmployeeName,@ProfileImage,@Gender,@Department,@Salary,@StartDate,@Notes);
IF @@ROWCOUNT <> 0
  begin
   print 'New Employee record is added in database'
  end
 else
  begin
   print 'Error while adding the data. Please check the input data';
  end;
end
go


-------Update Employee stored procedure--------

alter procedure spUpdateEmployee
(
	@EmployeeId int,
    @EmployeeName varchar(50),        
    @ProfileImage varchar(255),
	@Gender varchar(10),       
    @Department varchar(50), 
	@Salary int,
	@StartDate datetime ,
	@Notes varchar(100) 
)
as 
begin
update Employee
set EmployeeName=@EmployeeName,
	ProfileImage=@ProfileImage,
	Gender=@Gender,
	Department=@Department,
	Salary=@Salary,
	StartDate=@StartDate,
	Notes=@Notes
	where EmployeeId=@EmployeeId;
IF @@ROWCOUNT <> 0
  begin
   print 'Record is updated for Employee with Id =' + ' ' + Cast(@EmployeeId as varchar(5))
  end
 else
  begin
   print 'No employee found with given id';
  end;
end
go

-------Delete Employee stored procedure--------

alter procedure spDeleteEmployee
(
	@EmployeeId int
)
as
begin 
delete from Employee where EmployeeId=@EmployeeId;
IF @@ROWCOUNT <> 0
  begin
   print 'Record of Employee with Id =' + ' '  + Cast(@EmployeeId as varchar(5))+ ' ' + 'is deleted'
  end
 else
  begin
   print 'No employee found with given id';
  end;
end
go

--------View All Employee stored procedure--------

alter procedure spGetAllEmployees
as
begin try
     select * from Employee
end try
begin catch
  select
    ERROR_NUMBER() as ErrorNumber,
    ERROR_STATE() as ErrorState,
    ERROR_PROCEDURE() as ErrorProcedure,
    ERROR_LINE() as ErrorLine,
    ERROR_MESSAGE() as ErrorMessage;
end catch