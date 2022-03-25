using BusinessLayer.Interface;
using CommonLayer.Model;
using RepositoryLayer.Interface;
using System;
using System.Collections.Generic;
using System.Text;

namespace BusinessLayer.Services
{
    public class EmployeePayrollBL : IEmployeePayrollBL
    {
        private readonly IEmployeePayrollRL employeePayrollRL;

        public EmployeePayrollBL(IEmployeePayrollRL employeePayrollRL)
        {
            this.employeePayrollRL = employeePayrollRL;
        }
        public void AddEmployee(EmployeeModel employeeModel)
        {
            try
            {
                this.employeePayrollRL.AddEmployee(employeeModel);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void UpdateEmployee(EmployeeModel employeeModel)
        {
            try
            {
                this.employeePayrollRL.UpdateEmployee(employeeModel);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public EmployeeModel GetEmployeeDataById(int? id)
        {
            try
            {
                return this.employeePayrollRL.GetEmployeeDataById(id);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<EmployeeModel> AllEmployeesList()
        {
            try
            {
                return this.employeePayrollRL.AllEmployeesList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void DeleteEmployee(EmployeeModel employeeModel)
        {
            try
            {
                this.employeePayrollRL.DeleteEmployee(employeeModel);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}