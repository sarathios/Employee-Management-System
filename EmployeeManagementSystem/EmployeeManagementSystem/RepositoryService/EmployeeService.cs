using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using MvvmCross.Plugins.Messenger;
using SQLite.Net;

namespace EmployeeManagementSystem
{
	public class EmployeeService:IEmployeeService
	{
		private readonly SQLiteConnection _connection;
		private readonly IDBConnection _dbconnection;
		public EmployeeService(IDBConnection dbconnection)
		{
			_dbconnection = dbconnection;
			_connection = _dbconnection.GetConnection("EMPLOYEE.sql");
		}
		public int AddEmployee(EmployeeModel empModel)
		{
			return _connection.Insert(empModel);
		}
		public void DeleteEmployee(string empID)
		{
			throw new NotImplementedException();
		}
		public ObservableCollection<EmployeeModel> FetchEmployee()
		{
			var dbList = _connection.Table<EmployeeModel>().ToList();
			ObservableCollection<EmployeeModel> myCollection = new ObservableCollection<EmployeeModel>(dbList);
			return myCollection;

		}
	}
}

