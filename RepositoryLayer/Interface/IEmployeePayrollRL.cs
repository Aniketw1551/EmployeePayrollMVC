using CommonLayer.Model;
using System;
using System.Collections.Generic;
using System.Text;

namespace RepositoryLayer.Interface
{
    public interface IEmployeePayrollRL
    {
        public void AddEmployee(EmployeeModel employeeModel);
        public void UpdateEmployee(EmployeeModel employeeModel);
        public EmployeeModel GetEmployeeDataById(int? id);
        public List<EmployeeModel> AllEmployeesList();
        public void DeleteEmployee(int? id);
    }
}
