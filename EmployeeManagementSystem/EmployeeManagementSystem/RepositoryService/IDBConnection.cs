using System;
using SQLite.Net;
using SQLite.Net.Async;

namespace EmployeeManagementSystem
{
	public interface IDBConnection
	{
		SQLiteConnection GetConnection(string dbfilename);
		SQLiteAsyncConnection GetAsyncConnection(string dbfilename);
	}
}

