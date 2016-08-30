using System;
using System.IO;
using System.Windows.Input;
using MvvmCross.Core.ViewModels;
using MvvmCross.Platform;
using MvvmCross.Platform.Platform;
using MvvmCross.Plugins.File;
using MvvmCross.Plugins.Messenger;
using MvvmCross.Plugins.PictureChooser;

namespace EmployeeManagementSystem
{
	public class AddEmployeeViewModel:MvxViewModel 
	{
		private readonly IEmployeeService _empService;
		private readonly IMvxMessenger _messenger;
		private readonly IMvxFileStore _filesystem;

		public AddEmployeeViewModel(IEmployeeService empService, IMvxMessenger messenger,IMvxFileStore filesystem)
		{
			_filesystem = filesystem;
			_empService = empService;
			_messenger = messenger;
		}
		private string _empID = string.Empty;
		public string EmployeeID
		{
			get { return _empID; }
			set
			{
				_empID = value;
				RaisePropertyChanged("EmployeeID");
			}
		}
		private string _firstName = string.Empty;
		public string FirstName
		{
			get { return _firstName; }
			set
			{
				_firstName = value;
				RaisePropertyChanged("FirstName");
			}
		}
		private string _lastName = string.Empty;
		public string LastName
		{
			get { return _lastName; }
			set
			{
				_lastName = value;
				RaisePropertyChanged("LastName");
			}
		}
		private string _photoPath = string.Empty;
		public string PhotoPath
		{
			get { return _photoPath; }
			set
			{
				_photoPath = value;
				RaisePropertyChanged("PhotoPath");
			}
		}
		public IMvxCommand SaveEmployeeData
		{
			get
			{
				return new MvxCommand(() =>
				{

					var employeeData = new EmployeeModel();
					employeeData.empID = EmployeeID;
					employeeData.firstName = FirstName;
					employeeData.lastName = LastName;
					if (PhotoPath.Length > 0)
						employeeData.userPhoto = PhotoPath;
					else
						//employeeData.userPhoto = string.Empty;	
						employeeData.userPhoto = null;	

						//employeeData.userPhoto = _filesystem.NativePath(filename);
						var inserted = _empService.AddEmployee(employeeData);
					_messenger.Publish<SyncDataMessage>(new SyncDataMessage(this));
					Close(this);
					//OnValidationError(new ErrorMessageEventHandler() { ErrorMessage = "DataSaved" });

				});
			}
		}
		public class ErrorMessageEventHandler : EventArgs
		{
			public string ErrorMessage { get; set; }
			public bool IsSuccess { get; set; }
		}
		public event EventHandler ValidationError;

		public void OnValidationError(EventArgs e)
		{
			if (ValidationError != null)
			{
				ValidationError(this, e);
			}
		}
		private string _alertTitleMessage;
		public string AlertTitleMessage
		{
			get { return _alertTitleMessage; }
			set
			{
				_alertTitleMessage = value;
				RaisePropertyChanged("AlertTitleMessage");
			}
		}
		public ICommand TakePicture
		{
			get
			{
				return new MvxCommand(async () =>
				{
					try
					{
						
						var _pictureChooser = Mvx.Resolve<IMvxPictureChooserTask>();
						var result = await _pictureChooser.TakePictureAsync(300, 95);
						if (result != null)
						{
							ProcessPicture(result);
						}
					}
					catch (Exception ex1)
					{
						Mvx.Trace(MvxTraceLevel.Error, "While Capturing Image" + ex1.ToString());
					}
				});
			}
		}
		public ICommand OpenGallery
		{
			get
			{
				return new MvxCommand(async () =>
				{
					try
					{
						var _pictureChooser = Mvx.Resolve<IMvxPictureChooserTask>();
						var result = await _pictureChooser.ChoosePictureFromLibrary(300, 95);
						ProcessPicture(result);
					}
					catch (Exception exp)
					{
						Mvx.Trace(MvxTraceLevel.Error, "While Opening Gallery" + exp.ToString());
					}

				});
			}
		}
		public void ProcessPicture(Stream stream1)
		{
			if (stream1 != null)
			{
				try
				{
					var bytes = default(byte[]);
					using (var stream = stream1)
					{
						var memoryStream = new MemoryStream();
						stream.CopyTo(memoryStream);
						bytes = memoryStream.ToArray();
					}

					var filename = String.Format("{0}.jpg", Guid.NewGuid());
					//if (filename.Length > 0)
					//{
						_filesystem.WriteFile(_filesystem.NativePath(filename), bytes);
						PhotoPath = _filesystem.NativePath(filename);

					//}else{
					//	PhotoPath = null;
					//}

					//employeeData.userPhoto = filename;
				}
				catch (Exception exp)
				{
					Mvx.Trace(MvxTraceLevel.Error, "While Processing Image" + exp.ToString());
				}
			}
		}
	}
}

