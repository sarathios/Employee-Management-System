using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using MvvmCross.Core.ViewModels;
using MvvmCross.Plugins.Messenger;

namespace EmployeeManagementSystem
{
	public class MainViewModel:MvxViewModel
	{
		private readonly IMvxMessenger _messenger;
		private readonly IEmployeeService _empService;
		private readonly MvxSubscriptionToken  _syncompletedToken;
		public MainViewModel(IEmployeeService empService,IMvxMessenger messenger)
		{
			_empService = empService;
			_messenger = messenger;
			EmployeeList = _empService.FetchEmployee();
			_syncompletedToken = _messenger.Subscribe<SyncDataMessage>((message) => { UpdateEmployeeResultListOnSync(); });

		}
		public void UpdateEmployeeResultListOnSync()
		{
			EmployeeList = _empService.FetchEmployee();
		}

		private ObservableCollection<EmployeeModel> employeeList;
		public ObservableCollection<EmployeeModel> EmployeeList
		{
			get { return employeeList; }
			set
			{
				employeeList = value;
				RaisePropertyChanged("EmployeeList");
			}
		}
		public IMvxCommand AddEmployee
		{
			get
			{
				return new MvxCommand(() =>
				{
					ShowViewModel<AddEmployeeViewModel>();

				});
			}
		}
	}

}

