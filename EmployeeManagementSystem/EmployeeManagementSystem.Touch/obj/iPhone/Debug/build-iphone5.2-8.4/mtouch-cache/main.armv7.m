#include "xamarin/xamarin.h"

extern void *mono_aot_module_EmployeeManagementSystem_Touch_info;
extern void *mono_aot_module_Xamarin_iOS_info;
extern void *mono_aot_module_mscorlib_info;
extern void *mono_aot_module_System_info;
extern void *mono_aot_module_System_Core_info;
extern void *mono_aot_module_SQLite_Net_Async_info;
extern void *mono_aot_module_SQLite_Net_info;
extern void *mono_aot_module_EmployeeManagementSystem_info;
extern void *mono_aot_module_MvvmCross_Plugins_Messenger_info;
extern void *mono_aot_module_MvvmCross_Platform_info;
extern void *mono_aot_module_MvvmCross_Plugins_File_info;
extern void *mono_aot_module_MvvmCross_Core_info;
extern void *mono_aot_module_MvvmCross_Plugins_PictureChooser_info;
extern void *mono_aot_module_TPKeyboardAvoiding_info;
extern void *mono_aot_module_MvvmCross_Binding_iOS_info;
extern void *mono_aot_module_MvvmCross_Binding_info;
extern void *mono_aot_module_MvvmCross_Localization_info;
extern void *mono_aot_module_MvvmCross_Platform_iOS_info;
extern void *mono_aot_module_MvvmCross_iOS_info;
extern void *mono_aot_module_SQLite_Net_Platform_XamarinIOS_Unified_info;
extern void *mono_aot_module_MvvmCross_Plugins_File_iOS_info;
extern void *mono_aot_module_MvvmCross_Plugins_DownloadCache_info;
extern void *mono_aot_module_System_Collections_Immutable_info;
extern void *mono_aot_module_MvvmCross_Plugins_DownloadCache_iOS_info;
extern void *mono_aot_module_MvvmCross_Plugins_PictureChooser_iOS_info;

void xamarin_register_modules_impl ()
{
	mono_aot_register_module (mono_aot_module_EmployeeManagementSystem_Touch_info);
	mono_aot_register_module (mono_aot_module_Xamarin_iOS_info);
	mono_aot_register_module (mono_aot_module_mscorlib_info);
	mono_aot_register_module (mono_aot_module_System_info);
	mono_aot_register_module (mono_aot_module_System_Core_info);
	mono_aot_register_module (mono_aot_module_SQLite_Net_Async_info);
	mono_aot_register_module (mono_aot_module_SQLite_Net_info);
	mono_aot_register_module (mono_aot_module_EmployeeManagementSystem_info);
	mono_aot_register_module (mono_aot_module_MvvmCross_Plugins_Messenger_info);
	mono_aot_register_module (mono_aot_module_MvvmCross_Platform_info);
	mono_aot_register_module (mono_aot_module_MvvmCross_Plugins_File_info);
	mono_aot_register_module (mono_aot_module_MvvmCross_Core_info);
	mono_aot_register_module (mono_aot_module_MvvmCross_Plugins_PictureChooser_info);
	mono_aot_register_module (mono_aot_module_TPKeyboardAvoiding_info);
	mono_aot_register_module (mono_aot_module_MvvmCross_Binding_iOS_info);
	mono_aot_register_module (mono_aot_module_MvvmCross_Binding_info);
	mono_aot_register_module (mono_aot_module_MvvmCross_Localization_info);
	mono_aot_register_module (mono_aot_module_MvvmCross_Platform_iOS_info);
	mono_aot_register_module (mono_aot_module_MvvmCross_iOS_info);
	mono_aot_register_module (mono_aot_module_SQLite_Net_Platform_XamarinIOS_Unified_info);
	mono_aot_register_module (mono_aot_module_MvvmCross_Plugins_File_iOS_info);
	mono_aot_register_module (mono_aot_module_MvvmCross_Plugins_DownloadCache_info);
	mono_aot_register_module (mono_aot_module_System_Collections_Immutable_info);
	mono_aot_register_module (mono_aot_module_MvvmCross_Plugins_DownloadCache_iOS_info);
	mono_aot_register_module (mono_aot_module_MvvmCross_Plugins_PictureChooser_iOS_info);

}

void xamarin_register_assemblies_impl ()
{
	xamarin_open_and_register ("Xamarin.iOS.dll");
	xamarin_open_and_register ("TPKeyboardAvoiding.dll");
	xamarin_open_and_register ("MvvmCross.Binding.iOS.dll");
	xamarin_open_and_register ("MvvmCross.Platform.iOS.dll");
	xamarin_open_and_register ("MvvmCross.iOS.dll");

}

void xamarin_create_classes();
void xamarin_setup_impl ()
{
	xamarin_use_old_dynamic_registrar = FALSE;
	xamarin_create_classes();
	xamarin_gc_pump = FALSE;
	xamarin_init_mono_debug = TRUE;
	xamarin_compact_seq_points = FALSE;
	xamarin_executable_name = "EmployeeManagementSystem.Touch.exe";
	xamarin_use_new_assemblies = 1;
	mono_use_llvm = FALSE;
	xamarin_log_level = 2;
	xamarin_use_sgen = TRUE;
	xamarin_arch_name = "armv7";
	xamarin_debug_mode = TRUE;
	setenv ("MONO_GC_PARAMS", "nursery-size=512k", 1);
}

int main (int argc, char **argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	int rv = xamarin_main (argc, argv, false);
	[pool drain];
	return rv;
}
void xamarin_initialize_callbacks () __attribute__ ((constructor));
void xamarin_initialize_callbacks ()
{
	xamarin_setup = xamarin_setup_impl;
	xamarin_register_assemblies = xamarin_register_assemblies_impl;
	xamarin_register_modules = xamarin_register_modules_impl;
}
