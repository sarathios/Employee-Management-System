using System;
using MvvmCross.Platform;
using MvvmCross.Plugins.File;
using SQLite.Net;
using SQLite.Net.Async;
using SQLite.Net.Interop;

namespace EmployeeManagementSystem
{
	public class DBConnection : IDBConnection
	{
		public DBConnection(ISQLitePlatform platform)
		{
			platform.SQLiteApi.Shutdown();
			platform.SQLiteApi.Config(ConfigOption.Serialized);
			platform.SQLiteApi.Initialize();
		}

		public SQLiteConnection GetConnection(string dbfilename)
		{
			IMvxFileStore fileStore = Mvx.Resolve<IMvxFileStore>();
			string _nativePath = fileStore.NativePath(dbfilename);

			ISQLitePlatform platform = Mvx.Resolve<ISQLitePlatform>();
			return new SQLiteConnection(platform, _nativePath, SQLiteOpenFlags.ReadWrite | SQLiteOpenFlags.Create | SQLiteOpenFlags.FullMutex | SQLiteOpenFlags.SharedCache, true);
		}

		public SQLiteAsyncConnection GetAsyncConnection(string dbfilename)
		{
			IMvxFileStore fileStore = Mvx.Resolve<IMvxFileStore>();
			string _nativePath = fileStore.NativePath(dbfilename);
			ISQLitePlatform platform = Mvx.Resolve<ISQLitePlatform>();
			var connectionString = new SQLiteConnectionString(_nativePath, true, null, null, SQLiteOpenFlags.ReadWrite | SQLiteOpenFlags.Create | SQLiteOpenFlags.FullMutex | SQLiteOpenFlags.SharedCache);
			var connectionFactory = new Func<SQLiteConnectionWithLock>(() => new SQLiteConnectionWithLock(platform, connectionString));
			return new SQLiteAsyncConnection(connectionFactory);
		}
	}
}

