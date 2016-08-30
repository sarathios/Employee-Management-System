using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using SQLite.Net;

namespace EmployeeManagementSystem
{
	public interface IEmployeeService
	{
		
		int AddEmployee(EmployeeModel empModel);
		void DeleteEmployee(string empID);
		ObservableCollection<EmployeeModel> FetchEmployee();
	}
}

