// WARNING
//
// This file has been generated automatically by Xamarin Studio to store outlets and
// actions made in the UI designer. If it is removed, they will be lost.
// Manual changes to this file may not be handled correctly.
//
using Foundation;
using System.CodeDom.Compiler;

namespace EmployeeManagementSystem.Touch
{
	[Register ("MainViewController")]
	partial class MainViewController
	{
		[Outlet]
		UIKit.UIButton addEmployee { get; set; }

		[Outlet]
		UIKit.UITableView employeeTableView { get; set; }

		[Outlet]
		UIKit.UIButton loadSkype { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (addEmployee != null) {
				addEmployee.Dispose ();
				addEmployee = null;
			}

			if (employeeTableView != null) {
				employeeTableView.Dispose ();
				employeeTableView = null;
			}

			if (loadSkype != null) {
				loadSkype.Dispose ();
				loadSkype = null;
			}
		}
	}
}
