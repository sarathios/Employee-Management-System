using System;
using MvvmCross.Plugins.Messenger;

namespace EmployeeManagementSystem
{
	public class SyncDataMessage: MvxMessage 
	{
		public SyncDataMessage(object sender): base(sender)
		{
			
		}
	}
}

