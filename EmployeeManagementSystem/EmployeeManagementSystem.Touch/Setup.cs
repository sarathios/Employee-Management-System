using MvvmCross.Core.ViewModels;
using MvvmCross.iOS.Platform;
using MvvmCross.iOS.Views.Presenters;
using MvvmCross.Platform;
using EmployeeManagementSystem;
using System;
using System.IO;
using SQLite.Net.Interop;
using SQLite.Net;
using SQLite.Net.Async;
using System.Net;
using SQLite.Net.Platform.XamarinIOS;
using ExternaAppPlugin;
using ExternalAppPluginLib.Touch;

namespace EmployeeManagementSystem.Touch
{
	public class Setup : MvxIosSetup
	{
		SQLiteAsyncConnection _asyncconnection = null;
		public Setup(MvxApplicationDelegate appDelegate, IMvxIosViewPresenter presenter)
			: base(appDelegate, presenter)
		{
		}

		protected override IMvxApplication CreateApp()
		{
			Mvx.ConstructAndRegisterSingleton<ISQLitePlatform, SQLitePlatformIOS>();
			var DBPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Personal), "EMPLOYEE.sql");
			var platform = Mvx.Resolve<ISQLitePlatform>();
			platform.SQLiteApi.Config(ConfigOption.Serialized);
			platform.SQLiteApi.Initialize();
			var connectionString = new SQLiteConnectionString(DBPath, true, null, null, SQLiteOpenFlags.ReadWrite | SQLiteOpenFlags.Create | SQLiteOpenFlags.FullMutex);
			var connectionFactory = new Func<SQLiteConnectionWithLock>(() => new SQLiteConnectionWithLock(platform, connectionString));
			_asyncconnection = new SQLiteAsyncConnection(connectionFactory);
			var _connection = new SQLiteConnection(platform, DBPath, SQLiteOpenFlags.ReadWrite | SQLiteOpenFlags.Create | SQLiteOpenFlags.FullMutex | SQLiteOpenFlags.SharedCache, true, null, null, null);
			return new App(_asyncconnection);

		}

		protected override void InitializeLastChance()
		{
			Mvx.RegisterSingleton<IMvxLaunchAppTask>(new MvxLaunchAppTask());
			base.InitializeLastChance();
		}
	}
}


