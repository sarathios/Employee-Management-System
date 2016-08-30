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
	[Register ("AddEmployeeViewController")]
	partial class AddEmployeeViewController
	{
		[Outlet]
		UIKit.UIButton addPhotoButtonOutlet { get; set; }

		[Outlet]
		UIKit.UITextField employeeIDTextFieldOutlet { get; set; }

		[Outlet]
		UIKit.UIImageView employeePhotoImageViewOutlet { get; set; }

		[Outlet]
		UIKit.UITextField FirstNameTextFieldOutlet { get; set; }

		[Outlet]
		UIKit.UITextField LastNameTextFieldOutlet { get; set; }

		[Outlet]
		UIKit.UIButton saveDataButtonOutlet { get; set; }

		[Outlet]
		TPKeyboardAvoiding.TPKeyboardAvoidingScrollView scrollViewOutlet { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (scrollViewOutlet != null) {
				scrollViewOutlet.Dispose ();
				scrollViewOutlet = null;
			}

			if (addPhotoButtonOutlet != null) {
				addPhotoButtonOutlet.Dispose ();
				addPhotoButtonOutlet = null;
			}

			if (employeeIDTextFieldOutlet != null) {
				employeeIDTextFieldOutlet.Dispose ();
				employeeIDTextFieldOutlet = null;
			}

			if (employeePhotoImageViewOutlet != null) {
				employeePhotoImageViewOutlet.Dispose ();
				employeePhotoImageViewOutlet = null;
			}

			if (FirstNameTextFieldOutlet != null) {
				FirstNameTextFieldOutlet.Dispose ();
				FirstNameTextFieldOutlet = null;
			}

			if (LastNameTextFieldOutlet != null) {
				LastNameTextFieldOutlet.Dispose ();
				LastNameTextFieldOutlet = null;
			}

			if (saveDataButtonOutlet != null) {
				saveDataButtonOutlet.Dispose ();
				saveDataButtonOutlet = null;
			}
		}
	}
}
