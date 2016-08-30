using System;
using Foundation;
using MvvmCross.Binding.BindingContext;
using MvvmCross.Binding.iOS.Views;
using MvvmCross.iOS.Views;
using UIKit;

namespace EmployeeManagementSystem.Touch
{
	public partial class MainViewController : MvxViewController<MainViewModel>
	{
		public MainViewController() : base("MainViewController", null)
		{
		}

		public override void ViewDidLoad()
		{
			base.ViewDidLoad();
			//this.View.BackgroundColor = UIColor.Blue;
			MainViewModel _model;
			_model = this.ViewModel;

			var source = new employeeTableViewDataSource(employeeTableView);
			var set = this.CreateBindingSet<MainViewController, MainViewModel>();
			set.Bind(source).To(vm => vm.EmployeeList);
			employeeTableView.Source = source;
			employeeTableView.ReloadData();
			set.Bind(this.addEmployee).To(vm => vm.AddEmployee);
			set.Apply();
			// Perform any additional setup after loading the view, typically from a nib.
		}

		public override void DidReceiveMemoryWarning()
		{
			base.DidReceiveMemoryWarning();
			// Release any cached data, images, etc that aren't in use.
		}
		public class employeeTableViewDataSource : MvxTableViewSource
		{
			public employeeTableViewDataSource(UITableView tableView)
				: base(tableView)
			{
				UseAnimations = true;
				AddAnimation = UITableViewRowAnimation.Top;
				RemoveAnimation = UITableViewRowAnimation.Middle;
				tableView.RegisterNibForCellReuse(UINib.FromName(employeeTableViewCell.CellIdentifier, NSBundle.MainBundle), employeeTableViewCell.CellIdentifier);
				tableView.ReloadData();
			}

			protected override UITableViewCell GetOrCreateCellFor(UITableView tableView, NSIndexPath indexPath, object item)
			{
				return (UITableViewCell)tableView.DequeueReusableCell(employeeTableViewCell.CellIdentifier, indexPath);
			}
		}
	}
}


