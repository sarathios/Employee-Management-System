using System;

using Foundation;
using MvvmCross.Binding.BindingContext;
using MvvmCross.Binding.iOS.Views;
using UIKit;

namespace EmployeeManagementSystem.Touch
{
	public partial class employeeTableViewCell : MvxTableViewCell 
	{
		public static readonly NSString CellIdentifier = new NSString("employeeTableViewCell");
		public static readonly NSString Key = new NSString("employeeTableViewCell");
		public static readonly UINib Nib;
		private readonly MvxImageViewLoader _imageViewLoader;

		static employeeTableViewCell()
		{
			Nib = UINib.FromName("employeeTableViewCell", NSBundle.MainBundle);
		}

		protected employeeTableViewCell(IntPtr handle) : base(handle)
		{
			//_imageViewLoader = new MvxImageViewLoader(() => this.userImageOutlet);
			_imageViewLoader = new MvxImageViewLoader(() => this.userImageOutlet);

			this.DelayBind(() =>
			{
				//_imageViewLoader.Image = UIImage.FromFile("menuHeader.png");

				var set = this.CreateBindingSet<employeeTableViewCell, EmployeeModel>();
				set.Bind(this.empIDLabelOutlet).To(vm => vm.empID);
				set.Bind(this.firstNameLabelOutlet).To(vm => vm.firstName);
				set.Bind(this.lastNameLabelOutlet).To(vm => vm.lastName);
				set.Bind(this._imageViewLoader).To(vm => vm.userPhoto);
				//set.Bind(this._imageViewLoader).For(field => field.Image).To(vm => vm.userPhoto);

				set.Apply();
			});

			//userImageOutlet.Layer.CornerRadius = userImageOutlet.Frame.Size.Height / 2;
			//userImageOutlet.ClipsToBounds = true;
			// Note: this .ctor should not contain any initialization logic.
		}
	}
}
