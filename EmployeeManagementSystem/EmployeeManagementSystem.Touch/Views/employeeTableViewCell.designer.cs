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
	[Register ("employeeTableViewCell")]
	partial class employeeTableViewCell
	{
		[Outlet]
		UIKit.UILabel empIDLabelOutlet { get; set; }

		[Outlet]
		UIKit.UILabel firstNameLabelOutlet { get; set; }

		[Outlet]
		UIKit.UILabel lastNameLabelOutlet { get; set; }

		[Outlet]
		UIKit.UIImageView userImageOutlet { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (empIDLabelOutlet != null) {
				empIDLabelOutlet.Dispose ();
				empIDLabelOutlet = null;
			}

			if (firstNameLabelOutlet != null) {
				firstNameLabelOutlet.Dispose ();
				firstNameLabelOutlet = null;
			}

			if (lastNameLabelOutlet != null) {
				lastNameLabelOutlet.Dispose ();
				lastNameLabelOutlet = null;
			}

			if (userImageOutlet != null) {
				userImageOutlet.Dispose ();
				userImageOutlet = null;
			}
		}
	}
}
