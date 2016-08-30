using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using MvvmCross.Platform;
using MvvmCross.Platform.IoC;
using MvvmCross.Platform.Platform;
using MvvmCross.Platform.Plugins;
using SQLite.Net.Async;

namespace EmployeeManagementSystem
{
	public class App : MvvmCross.Core.ViewModels.MvxApplication
	{
		private readonly SQLiteAsyncConnection _asyncconnection;
		public App(SQLiteAsyncConnection asyncconnection)
		{
			_asyncconnection = asyncconnection;
			CreateTables();
		}

		public override void Initialize()
		{
			Mvx.ConstructAndRegisterSingleton<IDBConnection, DBConnection>();
			CreatableTypes()
				.EndingWith("Service")
				.AsInterfaces()
				.RegisterAsLazySingleton();
			RegisterAppStart<MainViewModel>();
		}

		public override void LoadPlugins(IMvxPluginManager pluginManager)
		{
			base.LoadPlugins(pluginManager);
		}
		public async Task CreateTables()
		{
			var tables = new List<Type>();
			tables.Add(typeof(EmployeeModel));
			await _asyncconnection.CreateTablesAsync(tables.ToArray()).ContinueWith((t) =>
			{
				Mvx.Trace(MvxTraceLevel.Diagnostic, "Tables created successfully");
			});

			
		}
	}
}

