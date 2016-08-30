using System;
using MvvmCross.Binding.BindingContext;
using MvvmCross.Binding.iOS.Views;
using MvvmCross.iOS.Views;
using UIKit;

namespace EmployeeManagementSystem.Touch
{
	
	public partial class AddEmployeeViewController : MvxViewController<AddEmployeeViewModel>
	{
		AddEmployeeViewModel _model;
		public AddEmployeeViewController() : base("AddEmployeeViewController", null)
		{
		}

		public override void ViewDidLoad()
		{

			base.ViewDidLoad();

			_model = this.ViewModel;
			 MvxImageViewLoader _imageViewLoader;
			_imageViewLoader = new MvxImageViewLoader(() => this.employeePhotoImageViewOutlet);

			var set = this.CreateBindingSet<AddEmployeeViewController,AddEmployeeViewModel>();
			set.Bind(this.employeeIDTextFieldOutlet).To(vm => vm.EmployeeID);
			set.Bind(this.FirstNameTextFieldOutlet).To(vm => vm.FirstName);
			set.Bind(this.LastNameTextFieldOutlet).To(vm => vm.LastName);
			set.Bind(this.saveDataButtonOutlet).To(vm => vm.SaveEmployeeData);
			set.Bind(_imageViewLoader).To(vm => vm.PhotoPath);

			set.Apply();
			this.addPhotoButtonOutlet.TouchUpInside += (sender, e) =>
			{
				ShowActionSheet(null,null);
			};
			// Perform any additional setup after loading the view, typically from a nib.
		}

		public override void DidReceiveMemoryWarning()
		{
			base.DidReceiveMemoryWarning();
			// Release any cached data, images, etc that aren't in use.
		}
		public void ShowActionSheet(object sender, EventArgs e)
		{
			var alert = UIAlertController.Create(null, null, UIAlertControllerStyle.ActionSheet);
				alert.AddAction(UIAlertAction.Create("Take Photo", UIAlertActionStyle.Default, delegate
				{
					_model.TakePicture.Execute(null);

				}));

				alert.AddAction(UIAlertAction.Create("Photo Library", UIAlertActionStyle.Default, delegate
				{
					_model.OpenGallery.Execute(null);
				}));

			alert.AddAction(UIAlertAction.Create("CANCEL", UIAlertActionStyle.Cancel, null));
			PresentViewController(alert, animated: true, completionHandler: null);
		}
	}
}


