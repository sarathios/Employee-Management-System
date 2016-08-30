using System;
using SQLite.Net.Attributes;

namespace EmployeeManagementSystem
{
	public class EmployeeModel
	{
		//[PrimaryKey]
		public string empID { get; set;}
		public string firstName { get; set;}
		public string lastName { get; set;}
		public string userPhoto { get; set; }



	}
}

