#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wtypedef-redefinition"
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
#define DEBUG 1
#include <stdarg.h>
#include <xamarin/xamarin.h>
#include <objc/objc.h>
#include <objc/runtime.h>
#include <objc/message.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <QuartzCore/CAEmitterBehavior.h>
#import <CoreGraphics/CoreGraphics.h>


static void native_to_managed_trampoline_1 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static BOOL native_to_managed_trampoline_2 (id self, SEL _cmd, MonoMethod **managed_method_ptr, void * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	void * a0 = p0;
	arg_ptrs [0] = &a0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static void native_to_managed_trampoline_3 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static id native_to_managed_trampoline_4 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1, bool* call_super)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (xamarin_try_get_nsobject (self)) {
		*call_super = true;
		return self;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (managed_method));
	uint8_t flags = NSObjectFlagsNativeRef;
	xamarin_set_nsobject_handle (mthis, self);
	xamarin_set_nsobject_flags (mthis, flags);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);
	xamarin_create_managed_ref (self, mthis, true);

	return self;
}


static UIWindow * native_to_managed_trampoline_5 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UIWindow * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_6 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIWindow * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static BOOL native_to_managed_trampoline_7 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, NSDictionary * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static void native_to_managed_trampoline_8 (id self, SEL _cmd, MonoMethod **managed_method_ptr, BOOL p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	arg_ptrs [0] = &p0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static UIButton * native_to_managed_trampoline_9 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UIButton * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_10 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIButton * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static UITextField * native_to_managed_trampoline_11 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UITextField * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_12 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextField * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static UIImageView * native_to_managed_trampoline_13 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UIImageView * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_14 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIImageView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static id native_to_managed_trampoline_15 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	id res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_16 (id self, SEL _cmd, MonoMethod **managed_method_ptr, id p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static UILabel * native_to_managed_trampoline_17 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UILabel * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_18 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UILabel * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_19 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSIndexPath * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static UITableViewCell * native_to_managed_trampoline_20 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSIndexPath * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UITableViewCell * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_21 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, UITableViewCell * p1, NSIndexPath * p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;
	NSObject *nsobj2 = (NSObject *) p2;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	if (nsobj2) {
		MonoType *paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2);
		xamarin_verify_parameter (mobj2, _cmd, self, nsobj2, 2, mono_class_from_mono_type (paramtype2), managed_method);
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static NSInteger native_to_managed_trampoline_22 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	NSInteger res;
	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static NSInteger native_to_managed_trampoline_23 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSInteger p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	NSInteger res;
	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static UITableView * native_to_managed_trampoline_24 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UITableView * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_25 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_26 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIGestureRecognizer * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_27 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIImagePickerController * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_28 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIImagePickerController * p0, UIImage * p1, NSDictionary * p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;
	NSObject *nsobj2 = (NSObject *) p2;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	if (nsobj2) {
		MonoType *paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2);
		xamarin_verify_parameter (mobj2, _cmd, self, nsobj2, 2, mono_class_from_mono_type (paramtype2), managed_method);
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_29 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIImagePickerController * p0, NSDictionary * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_30 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITapGestureRecognizer * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_31 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISwipeGestureRecognizer * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static UIViewController * native_to_managed_trampoline_32 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPageViewController * p0, UIViewController * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UIViewController * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static NSInteger native_to_managed_trampoline_33 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPageViewController * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	NSInteger res;
	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static void native_to_managed_trampoline_34 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISearchBar * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_35 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISearchBar * p0, NSInteger p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static BOOL native_to_managed_trampoline_36 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISearchBar * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static BOOL native_to_managed_trampoline_37 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISearchBar * p0, NSRange p1, NSString * p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2 ? mono_string_new (mono_domain_get (), [p2 UTF8String]) : NULL;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static void native_to_managed_trampoline_38 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISearchBar * p0, NSString * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = p1 ? mono_string_new (mono_domain_get (), [p1 UTF8String]) : NULL;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static BOOL native_to_managed_trampoline_39 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextField * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static BOOL native_to_managed_trampoline_40 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextField * p0, NSRange p1, NSString * p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2 ? mono_string_new (mono_domain_get (), [p2 UTF8String]) : NULL;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static void native_to_managed_trampoline_41 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_42 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, BOOL p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static BOOL native_to_managed_trampoline_43 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static UIView * native_to_managed_trampoline_44 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UIView * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_45 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, CGPoint p1, CGPoint* p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_46 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, UIView * p1, CGFloat p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_47 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, UIView * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_48 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static BOOL native_to_managed_trampoline_49 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static BOOL native_to_managed_trampoline_50 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, NSRange p1, NSString * p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2 ? mono_string_new (mono_domain_get (), [p2 UTF8String]) : NULL;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static BOOL native_to_managed_trampoline_51 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, NSTextAttachment * p1, NSRange p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static BOOL native_to_managed_trampoline_52 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextView * p0, NSURL * p1, NSRange p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static void native_to_managed_trampoline_53 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSObject * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, NULL, arg_ptrs, NULL);

	return;
}


static NSInteger native_to_managed_trampoline_54 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPickerView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	NSInteger res;
	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static NSInteger native_to_managed_trampoline_55 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPickerView * p0, NSInteger p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	NSInteger res;
	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static NSString * native_to_managed_trampoline_56 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPickerView * p0, NSInteger p1, NSInteger p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = &p2;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	NSString * res;
	if (!retval) {
		res = NULL;
	} else {
		char *str = mono_string_to_utf8 ((MonoString *) retval);
		NSString *nsstr = [[NSString alloc] initWithUTF8String:str];
		[nsstr autorelease];
		mono_free (str);
		res = nsstr;
	}

	return res;
}


static void native_to_managed_trampoline_57 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIPickerView * p0, NSInteger p1, NSInteger p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = &p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_58 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionView * p0, NSIndexPath * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static UICollectionViewCell * native_to_managed_trampoline_59 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionView * p0, NSIndexPath * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UICollectionViewCell * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_60 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionView * p0, UICollectionViewCell * p1, NSIndexPath * p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;
	NSObject *nsobj2 = (NSObject *) p2;
	MonoObject *mobj2 = NULL;
	int32_t created2 = false;
	if (nsobj2) {
		MonoType *paramtype2 = xamarin_get_parameter_type (managed_method, 2);
		mobj2 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj2, false, paramtype2, &created2);
		xamarin_verify_parameter (mobj2, _cmd, self, nsobj2, 2, mono_class_from_mono_type (paramtype2), managed_method);
	}
	arg_ptrs [2] = mobj2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static NSInteger native_to_managed_trampoline_61 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	NSInteger res;
	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static void native_to_managed_trampoline_62 (id self, SEL _cmd, MonoMethod **managed_method_ptr, BOOL p0, BOOL p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	arg_ptrs [0] = &p0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static UICollectionViewLayoutAttributes * native_to_managed_trampoline_63 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionViewLayoutAttributes * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UICollectionViewLayoutAttributes * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static NSInteger native_to_managed_trampoline_64 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UICollectionView * p0, NSInteger p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	NSInteger res;
	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

	return res;
}



@interface UIKit_UIControlEventProxy : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) BridgeSelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation UIKit_UIControlEventProxy { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) BridgeSelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "UIKit.UIControlEventProxy, Xamarin.iOS", "Activated");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface __MonoMac_NSActionDispatcher : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __MonoMac_NSActionDispatcher { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "Foundation.NSActionDispatcher, Xamarin.iOS", "Apply");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface __MonoMac_NSAsyncActionDispatcher : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __MonoMac_NSAsyncActionDispatcher { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "Foundation.NSAsyncActionDispatcher, Xamarin.iOS", "Apply");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@protocol UIPickerViewModel<UIPickerViewDataSource, UIPickerViewDelegate>
@end

@protocol CALayerDelegate
@end

@protocol UICollectionViewSource<UICollectionViewDataSource, UICollectionViewDelegate>
@end

@interface MvvmCross_iOS_Platform_MvxApplicationDelegate : NSObject<UIApplicationDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) applicationWillEnterForeground:(UIApplication *)p0;
	-(void) applicationDidEnterBackground:(UIApplication *)p0;
	-(void) applicationWillTerminate:(UIApplication *)p0;
	-(void) applicationDidFinishLaunching:(UIApplication *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MvvmCross_iOS_Platform_MvxApplicationDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) applicationWillEnterForeground:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "MvvmCross.iOS.Platform.MvxApplicationDelegate, MvvmCross.iOS", "WillEnterForeground");
	}

	-(void) applicationDidEnterBackground:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "MvvmCross.iOS.Platform.MvxApplicationDelegate, MvvmCross.iOS", "DidEnterBackground");
	}

	-(void) applicationWillTerminate:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "MvvmCross.iOS.Platform.MvxApplicationDelegate, MvvmCross.iOS", "WillTerminate");
	}

	-(void) applicationDidFinishLaunching:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "MvvmCross.iOS.Platform.MvxApplicationDelegate, MvvmCross.iOS", "FinishedLaunching");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MvvmCross.iOS.Platform.MvxApplicationDelegate, MvvmCross.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface AppDelegate : MvvmCross_iOS_Platform_MvxApplicationDelegate<UIApplicationDelegate> {
}
	-(UIWindow *) window;
	-(void) setWindow:(UIWindow *)p0;
	-(BOOL) application:(UIApplication *)p0 didFinishLaunchingWithOptions:(NSDictionary *)p1;
	-(void) applicationWillResignActive:(UIApplication *)p0;
	-(void) applicationDidEnterBackground:(UIApplication *)p0;
	-(void) applicationWillEnterForeground:(UIApplication *)p0;
	-(void) applicationDidBecomeActive:(UIApplication *)p0;
	-(void) applicationWillTerminate:(UIApplication *)p0;
	-(id) init;
@end
@implementation AppDelegate { } 

	-(UIWindow *) window
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.AppDelegate, EmployeeManagementSystem.Touch", "get_Window");
	}

	-(void) setWindow:(UIWindow *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIWindow, Xamarin.iOS", "EmployeeManagementSystem.Touch.AppDelegate, EmployeeManagementSystem.Touch", "set_Window");
	}

	-(BOOL) application:(UIApplication *)p0 didFinishLaunchingWithOptions:(NSDictionary *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_7 (self, _cmd, &managed_method, p0, p1, "UIKit.UIApplication, Xamarin.iOS", "Foundation.NSDictionary, Xamarin.iOS", "EmployeeManagementSystem.Touch.AppDelegate, EmployeeManagementSystem.Touch", "FinishedLaunching");
	}

	-(void) applicationWillResignActive:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "EmployeeManagementSystem.Touch.AppDelegate, EmployeeManagementSystem.Touch", "OnResignActivation");
	}

	-(void) applicationDidEnterBackground:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "EmployeeManagementSystem.Touch.AppDelegate, EmployeeManagementSystem.Touch", "DidEnterBackground");
	}

	-(void) applicationWillEnterForeground:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "EmployeeManagementSystem.Touch.AppDelegate, EmployeeManagementSystem.Touch", "WillEnterForeground");
	}

	-(void) applicationDidBecomeActive:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "EmployeeManagementSystem.Touch.AppDelegate, EmployeeManagementSystem.Touch", "OnActivated");
	}

	-(void) applicationWillTerminate:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "EmployeeManagementSystem.Touch.AppDelegate, EmployeeManagementSystem.Touch", "WillTerminate");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.AppDelegate, EmployeeManagementSystem.Touch", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [MvvmCross_iOS_Platform_MvxApplicationDelegate class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface ViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewDidLoad;
	-(void) didReceiveMemoryWarning;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation ViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.ViewController, EmployeeManagementSystem.Touch", "ViewDidLoad");
	}

	-(void) didReceiveMemoryWarning
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.ViewController, EmployeeManagementSystem.Touch", "DidReceiveMemoryWarning");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface MvvmCross_Platform_iOS_Views_MvxEventSourceViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewWillDisappear:(BOOL)p0;
	-(void) viewDidAppear:(BOOL)p0;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) viewDidDisappear:(BOOL)p0;
	-(void) viewDidLoad;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MvvmCross_Platform_iOS_Views_MvxEventSourceViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) viewWillDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourceViewController, MvvmCross.Platform.iOS", "ViewWillDisappear");
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourceViewController, MvvmCross.Platform.iOS", "ViewDidAppear");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourceViewController, MvvmCross.Platform.iOS", "ViewWillAppear");
	}

	-(void) viewDidDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourceViewController, MvvmCross.Platform.iOS", "ViewDidDisappear");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "MvvmCross.Platform.iOS.Views.MvxEventSourceViewController, MvvmCross.Platform.iOS", "ViewDidLoad");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MvvmCross.Platform.iOS.Views.MvxEventSourceViewController, MvvmCross.Platform.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface MvvmCross_iOS_Views_MvxViewController : MvvmCross_Platform_iOS_Views_MvxEventSourceViewController {
}
	-(id) init;
@end
@implementation MvvmCross_iOS_Views_MvxViewController { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MvvmCross.iOS.Views.MvxViewController, MvvmCross.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [MvvmCross_Platform_iOS_Views_MvxEventSourceViewController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface MvvmCross_iOS_Views_MvxViewController_1 : MvvmCross_iOS_Views_MvxViewController {
}
	-(id) init;
@end
@implementation MvvmCross_iOS_Views_MvxViewController_1 { } 
	-(id) init
	{
		xamarin_throw_product_exception (4126, "Cannot construct an instance of the type 'MvvmCross.iOS.Views.MvxViewController`1' from Objective-C because the type is generic.");

		return self;
	}
@end

@interface AddEmployeeViewController : MvvmCross_iOS_Views_MvxViewController_1 {
}
	@property (nonatomic, assign) UIButton * addPhotoButtonOutlet;
	@property (nonatomic, assign) UITextField * employeeIDTextFieldOutlet;
	@property (nonatomic, assign) UIImageView * employeePhotoImageViewOutlet;
	@property (nonatomic, assign) UITextField * FirstNameTextFieldOutlet;
	@property (nonatomic, assign) UITextField * LastNameTextFieldOutlet;
	@property (nonatomic, assign) UIButton * saveDataButtonOutlet;
	@property (nonatomic, assign) id scrollViewOutlet;
	-(UIButton *) addPhotoButtonOutlet;
	-(void) setAddPhotoButtonOutlet:(UIButton *)p0;
	-(UITextField *) employeeIDTextFieldOutlet;
	-(void) setEmployeeIDTextFieldOutlet:(UITextField *)p0;
	-(UIImageView *) employeePhotoImageViewOutlet;
	-(void) setEmployeePhotoImageViewOutlet:(UIImageView *)p0;
	-(UITextField *) FirstNameTextFieldOutlet;
	-(void) setFirstNameTextFieldOutlet:(UITextField *)p0;
	-(UITextField *) LastNameTextFieldOutlet;
	-(void) setLastNameTextFieldOutlet:(UITextField *)p0;
	-(UIButton *) saveDataButtonOutlet;
	-(void) setSaveDataButtonOutlet:(UIButton *)p0;
	-(id) scrollViewOutlet;
	-(void) setScrollViewOutlet:(id)p0;
	-(void) viewDidLoad;
	-(void) didReceiveMemoryWarning;
	-(id) init;
@end
@implementation AddEmployeeViewController { } 

	-(UIButton *) addPhotoButtonOutlet
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_9 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", "get_addPhotoButtonOutlet");
	}

	-(void) setAddPhotoButtonOutlet:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_10 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", "set_addPhotoButtonOutlet");
	}

	-(UITextField *) employeeIDTextFieldOutlet
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_11 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", "get_employeeIDTextFieldOutlet");
	}

	-(void) setEmployeeIDTextFieldOutlet:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", "set_employeeIDTextFieldOutlet");
	}

	-(UIImageView *) employeePhotoImageViewOutlet
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", "get_employeePhotoImageViewOutlet");
	}

	-(void) setEmployeePhotoImageViewOutlet:(UIImageView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, "UIKit.UIImageView, Xamarin.iOS", "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", "set_employeePhotoImageViewOutlet");
	}

	-(UITextField *) FirstNameTextFieldOutlet
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_11 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", "get_FirstNameTextFieldOutlet");
	}

	-(void) setFirstNameTextFieldOutlet:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", "set_FirstNameTextFieldOutlet");
	}

	-(UITextField *) LastNameTextFieldOutlet
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_11 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", "get_LastNameTextFieldOutlet");
	}

	-(void) setLastNameTextFieldOutlet:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", "set_LastNameTextFieldOutlet");
	}

	-(UIButton *) saveDataButtonOutlet
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_9 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", "get_saveDataButtonOutlet");
	}

	-(void) setSaveDataButtonOutlet:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_10 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", "set_saveDataButtonOutlet");
	}

	-(id) scrollViewOutlet
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_15 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", "get_scrollViewOutlet");
	}

	-(void) setScrollViewOutlet:(id)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, p0, "TPKeyboardAvoiding.TPKeyboardAvoidingScrollView, TPKeyboardAvoiding", "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", "set_scrollViewOutlet");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", "ViewDidLoad");
	}

	-(void) didReceiveMemoryWarning
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", "DidReceiveMemoryWarning");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [MvvmCross_iOS_Views_MvxViewController_1 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface MvvmCross_Binding_iOS_Views_MvxTableViewCell : UITableViewCell {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MvvmCross_Binding_iOS_Views_MvxTableViewCell { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MvvmCross.Binding.iOS.Views.MvxTableViewCell, MvvmCross.Binding.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UITableViewCell class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface employeeTableViewCell : MvvmCross_Binding_iOS_Views_MvxTableViewCell {
}
	@property (nonatomic, assign) UILabel * empIDLabelOutlet;
	@property (nonatomic, assign) UILabel * firstNameLabelOutlet;
	@property (nonatomic, assign) UILabel * lastNameLabelOutlet;
	@property (nonatomic, assign) UIImageView * userImageOutlet;
	-(UILabel *) empIDLabelOutlet;
	-(void) setEmpIDLabelOutlet:(UILabel *)p0;
	-(UILabel *) firstNameLabelOutlet;
	-(void) setFirstNameLabelOutlet:(UILabel *)p0;
	-(UILabel *) lastNameLabelOutlet;
	-(void) setLastNameLabelOutlet:(UILabel *)p0;
	-(UIImageView *) userImageOutlet;
	-(void) setUserImageOutlet:(UIImageView *)p0;
@end
@implementation employeeTableViewCell { } 

	-(UILabel *) empIDLabelOutlet
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_17 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.employeeTableViewCell, EmployeeManagementSystem.Touch", "get_empIDLabelOutlet");
	}

	-(void) setEmpIDLabelOutlet:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_18 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "EmployeeManagementSystem.Touch.employeeTableViewCell, EmployeeManagementSystem.Touch", "set_empIDLabelOutlet");
	}

	-(UILabel *) firstNameLabelOutlet
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_17 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.employeeTableViewCell, EmployeeManagementSystem.Touch", "get_firstNameLabelOutlet");
	}

	-(void) setFirstNameLabelOutlet:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_18 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "EmployeeManagementSystem.Touch.employeeTableViewCell, EmployeeManagementSystem.Touch", "set_firstNameLabelOutlet");
	}

	-(UILabel *) lastNameLabelOutlet
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_17 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.employeeTableViewCell, EmployeeManagementSystem.Touch", "get_lastNameLabelOutlet");
	}

	-(void) setLastNameLabelOutlet:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_18 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "EmployeeManagementSystem.Touch.employeeTableViewCell, EmployeeManagementSystem.Touch", "set_lastNameLabelOutlet");
	}

	-(UIImageView *) userImageOutlet
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.employeeTableViewCell, EmployeeManagementSystem.Touch", "get_userImageOutlet");
	}

	-(void) setUserImageOutlet:(UIImageView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, "UIKit.UIImageView, Xamarin.iOS", "EmployeeManagementSystem.Touch.employeeTableViewCell, EmployeeManagementSystem.Touch", "set_userImageOutlet");
	}
@end

@interface MvvmCross_Binding_iOS_Views_MvxBaseTableViewSource : NSObject<UIScrollViewDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) tableView:(UITableView *)p0 accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)p1;
	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1;
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1;
	-(void) tableView:(UITableView *)p0 didEndDisplayingCell:(UITableViewCell *)p1 forRowAtIndexPath:(NSIndexPath *)p2;
	-(NSInteger) numberOfSectionsInTableView:(UITableView *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation MvvmCross_Binding_iOS_Views_MvxBaseTableViewSource { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) tableView:(UITableView *)p0 accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_19 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "MvvmCross.Binding.iOS.Views.MvxBaseTableViewSource, MvvmCross.Binding.iOS", "AccessoryButtonTapped");
	}

	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_19 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "MvvmCross.Binding.iOS.Views.MvxBaseTableViewSource, MvvmCross.Binding.iOS", "RowSelected");
	}

	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "MvvmCross.Binding.iOS.Views.MvxBaseTableViewSource, MvvmCross.Binding.iOS", "GetCell");
	}

	-(void) tableView:(UITableView *)p0 didEndDisplayingCell:(UITableViewCell *)p1 forRowAtIndexPath:(NSIndexPath *)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_21 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UITableView, Xamarin.iOS", "UIKit.UITableViewCell, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "MvvmCross.Binding.iOS.Views.MvxBaseTableViewSource, MvvmCross.Binding.iOS", "CellDisplayingEnded");
	}

	-(NSInteger) numberOfSectionsInTableView:(UITableView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_22 (self, _cmd, &managed_method, p0, "UIKit.UITableView, Xamarin.iOS", "MvvmCross.Binding.iOS.Views.MvxBaseTableViewSource, MvvmCross.Binding.iOS", "NumberOfSections");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface MvvmCross_Binding_iOS_Views_MvxTableViewSource : MvvmCross_Binding_iOS_Views_MvxBaseTableViewSource<UIScrollViewDelegate> {
}
	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1;
@end
@implementation MvvmCross_Binding_iOS_Views_MvxTableViewSource { } 

	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "System.nint, Xamarin.iOS", "MvvmCross.Binding.iOS.Views.MvxTableViewSource, MvvmCross.Binding.iOS", "RowsInSection");
	}
@end

@interface EmployeeManagementSystem_Touch_MainViewController_employeeTableViewDataSource : MvvmCross_Binding_iOS_Views_MvxTableViewSource<UIScrollViewDelegate> {
}
@end
@implementation EmployeeManagementSystem_Touch_MainViewController_employeeTableViewDataSource { } 
@end

@interface MainViewController : MvvmCross_iOS_Views_MvxViewController_1 {
}
	@property (nonatomic, assign) UIButton * addEmployee;
	@property (nonatomic, assign) UITableView * employeeTableView;
	-(UIButton *) addEmployee;
	-(void) setAddEmployee:(UIButton *)p0;
	-(UITableView *) employeeTableView;
	-(void) setEmployeeTableView:(UITableView *)p0;
	-(void) viewDidLoad;
	-(void) didReceiveMemoryWarning;
	-(id) init;
@end
@implementation MainViewController { } 

	-(UIButton *) addEmployee
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_9 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.MainViewController, EmployeeManagementSystem.Touch", "get_addEmployee");
	}

	-(void) setAddEmployee:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_10 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "EmployeeManagementSystem.Touch.MainViewController, EmployeeManagementSystem.Touch", "set_addEmployee");
	}

	-(UITableView *) employeeTableView
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_24 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.MainViewController, EmployeeManagementSystem.Touch", "get_employeeTableView");
	}

	-(void) setEmployeeTableView:(UITableView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_25 (self, _cmd, &managed_method, p0, "UIKit.UITableView, Xamarin.iOS", "EmployeeManagementSystem.Touch.MainViewController, EmployeeManagementSystem.Touch", "set_employeeTableView");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.MainViewController, EmployeeManagementSystem.Touch", "ViewDidLoad");
	}

	-(void) didReceiveMemoryWarning
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.MainViewController, EmployeeManagementSystem.Touch", "DidReceiveMemoryWarning");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "EmployeeManagementSystem.Touch.MainViewController, EmployeeManagementSystem.Touch", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [MvvmCross_iOS_Views_MvxViewController_1 class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __UIGestureRecognizerToken : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation __UIGestureRecognizerToken { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "UIKit.UIGestureRecognizer+Token, Xamarin.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __UIGestureRecognizerParameterlessToken : __UIGestureRecognizerToken {
}
	-(void) target;
@end
@implementation __UIGestureRecognizerParameterlessToken { } 

	-(void) target
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "UIKit.UIGestureRecognizer+ParameterlessDispatch, Xamarin.iOS", "Activated");
	}
@end

@interface __UIGestureRecognizerParametrizedToken : __UIGestureRecognizerToken {
}
	-(void) target:(UIGestureRecognizer *)p0;
@end
@implementation __UIGestureRecognizerParametrizedToken { } 

	-(void) target:(UIGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_26 (self, _cmd, &managed_method, p0, "UIKit.UIGestureRecognizer, Xamarin.iOS", "UIKit.UIGestureRecognizer+ParametrizedDispatch, Xamarin.iOS", "Activated");
	}
@end

@interface UIKit_UIView_UIViewAppearance : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation UIKit_UIView_UIViewAppearance { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface UIKit_UIScrollView_UIScrollViewAppearance : UIKit_UIView_UIViewAppearance {
}
@end
@implementation UIKit_UIScrollView_UIScrollViewAppearance { } 
@end

@interface UIKit_UICollectionView_UICollectionViewAppearance : UIKit_UIScrollView_UIScrollViewAppearance {
}
@end
@implementation UIKit_UICollectionView_UICollectionViewAppearance { } 
@end

@interface UIKit_UIImagePickerController__UIImagePickerControllerDelegate : NSObject<UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) imagePickerControllerDidCancel:(UIImagePickerController *)p0;
	-(void) imagePickerController:(UIImagePickerController *)p0 didFinishPickingImage:(UIImage *)p1 editingInfo:(NSDictionary *)p2;
	-(void) imagePickerController:(UIImagePickerController *)p0 didFinishPickingMediaWithInfo:(NSDictionary *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation UIKit_UIImagePickerController__UIImagePickerControllerDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) imagePickerControllerDidCancel:(UIImagePickerController *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_27 (self, _cmd, &managed_method, p0, "UIKit.UIImagePickerController, Xamarin.iOS", "UIKit.UIImagePickerController+_UIImagePickerControllerDelegate, Xamarin.iOS", "Canceled");
	}

	-(void) imagePickerController:(UIImagePickerController *)p0 didFinishPickingImage:(UIImage *)p1 editingInfo:(NSDictionary *)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_28 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UIImagePickerController, Xamarin.iOS", "UIKit.UIImage, Xamarin.iOS", "Foundation.NSDictionary, Xamarin.iOS", "UIKit.UIImagePickerController+_UIImagePickerControllerDelegate, Xamarin.iOS", "FinishedPickingImage");
	}

	-(void) imagePickerController:(UIImagePickerController *)p0 didFinishPickingMediaWithInfo:(NSDictionary *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_29 (self, _cmd, &managed_method, p0, p1, "UIKit.UIImagePickerController, Xamarin.iOS", "Foundation.NSDictionary, Xamarin.iOS", "UIKit.UIImagePickerController+_UIImagePickerControllerDelegate, Xamarin.iOS", "FinishedPickingMedia");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "UIKit.UIImagePickerController+_UIImagePickerControllerDelegate, Xamarin.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __UITapGestureRecognizer : __UIGestureRecognizerToken {
}
	-(void) target:(UITapGestureRecognizer *)p0;
@end
@implementation __UITapGestureRecognizer { } 

	-(void) target:(UITapGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_30 (self, _cmd, &managed_method, p0, "UIKit.UITapGestureRecognizer, Xamarin.iOS", "UIKit.UITapGestureRecognizer+Callback, Xamarin.iOS", "Activated");
	}
@end

@interface __UISwipeGestureRecognizer : __UIGestureRecognizerToken {
}
	-(void) target:(UISwipeGestureRecognizer *)p0;
@end
@implementation __UISwipeGestureRecognizer { } 

	-(void) target:(UISwipeGestureRecognizer *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_31 (self, _cmd, &managed_method, p0, "UIKit.UISwipeGestureRecognizer, Xamarin.iOS", "UIKit.UISwipeGestureRecognizer+Callback, Xamarin.iOS", "Activated");
	}
@end

@interface UIKit_UIPageViewController__UIPageViewControllerDataSource : NSObject<UIPageViewControllerDataSource> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIViewController *) pageViewController:(UIPageViewController *)p0 viewControllerAfterViewController:(UIViewController *)p1;
	-(NSInteger) presentationCountForPageViewController:(UIPageViewController *)p0;
	-(NSInteger) presentationIndexForPageViewController:(UIPageViewController *)p0;
	-(UIViewController *) pageViewController:(UIPageViewController *)p0 viewControllerBeforeViewController:(UIViewController *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation UIKit_UIPageViewController__UIPageViewControllerDataSource { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIViewController *) pageViewController:(UIPageViewController *)p0 viewControllerAfterViewController:(UIViewController *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_32 (self, _cmd, &managed_method, p0, p1, "UIKit.UIPageViewController, Xamarin.iOS", "UIKit.UIViewController, Xamarin.iOS", "UIKit.UIPageViewController+_UIPageViewControllerDataSource, Xamarin.iOS", "GetNextViewController");
	}

	-(NSInteger) presentationCountForPageViewController:(UIPageViewController *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "UIKit.UIPageViewController, Xamarin.iOS", "UIKit.UIPageViewController+_UIPageViewControllerDataSource, Xamarin.iOS", "GetPresentationCount");
	}

	-(NSInteger) presentationIndexForPageViewController:(UIPageViewController *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "UIKit.UIPageViewController, Xamarin.iOS", "UIKit.UIPageViewController+_UIPageViewControllerDataSource, Xamarin.iOS", "GetPresentationIndex");
	}

	-(UIViewController *) pageViewController:(UIPageViewController *)p0 viewControllerBeforeViewController:(UIViewController *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_32 (self, _cmd, &managed_method, p0, p1, "UIKit.UIPageViewController, Xamarin.iOS", "UIKit.UIViewController, Xamarin.iOS", "UIKit.UIPageViewController+_UIPageViewControllerDataSource, Xamarin.iOS", "GetPreviousViewController");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "UIKit.UIPageViewController+_UIPageViewControllerDataSource, Xamarin.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UISearchBar__UISearchBarDelegate : NSObject<UISearchBarDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) searchBarBookmarkButtonClicked:(UISearchBar *)p0;
	-(void) searchBarCancelButtonClicked:(UISearchBar *)p0;
	-(void) searchBarResultsListButtonClicked:(UISearchBar *)p0;
	-(void) searchBarTextDidBeginEditing:(UISearchBar *)p0;
	-(void) searchBarTextDidEndEditing:(UISearchBar *)p0;
	-(void) searchBarSearchButtonClicked:(UISearchBar *)p0;
	-(void) searchBar:(UISearchBar *)p0 selectedScopeButtonIndexDidChange:(NSInteger)p1;
	-(BOOL) searchBarShouldBeginEditing:(UISearchBar *)p0;
	-(BOOL) searchBar:(UISearchBar *)p0 shouldChangeTextInRange:(NSRange)p1 replacementText:(NSString *)p2;
	-(BOOL) searchBarShouldEndEditing:(UISearchBar *)p0;
	-(void) searchBar:(UISearchBar *)p0 textDidChange:(NSString *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation UIKit_UISearchBar__UISearchBarDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) searchBarBookmarkButtonClicked:(UISearchBar *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_34 (self, _cmd, &managed_method, p0, "UIKit.UISearchBar, Xamarin.iOS", "UIKit.UISearchBar+_UISearchBarDelegate, Xamarin.iOS", "BookmarkButtonClicked");
	}

	-(void) searchBarCancelButtonClicked:(UISearchBar *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_34 (self, _cmd, &managed_method, p0, "UIKit.UISearchBar, Xamarin.iOS", "UIKit.UISearchBar+_UISearchBarDelegate, Xamarin.iOS", "CancelButtonClicked");
	}

	-(void) searchBarResultsListButtonClicked:(UISearchBar *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_34 (self, _cmd, &managed_method, p0, "UIKit.UISearchBar, Xamarin.iOS", "UIKit.UISearchBar+_UISearchBarDelegate, Xamarin.iOS", "ListButtonClicked");
	}

	-(void) searchBarTextDidBeginEditing:(UISearchBar *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_34 (self, _cmd, &managed_method, p0, "UIKit.UISearchBar, Xamarin.iOS", "UIKit.UISearchBar+_UISearchBarDelegate, Xamarin.iOS", "OnEditingStarted");
	}

	-(void) searchBarTextDidEndEditing:(UISearchBar *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_34 (self, _cmd, &managed_method, p0, "UIKit.UISearchBar, Xamarin.iOS", "UIKit.UISearchBar+_UISearchBarDelegate, Xamarin.iOS", "OnEditingStopped");
	}

	-(void) searchBarSearchButtonClicked:(UISearchBar *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_34 (self, _cmd, &managed_method, p0, "UIKit.UISearchBar, Xamarin.iOS", "UIKit.UISearchBar+_UISearchBarDelegate, Xamarin.iOS", "SearchButtonClicked");
	}

	-(void) searchBar:(UISearchBar *)p0 selectedScopeButtonIndexDidChange:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_35 (self, _cmd, &managed_method, p0, p1, "UIKit.UISearchBar, Xamarin.iOS", "System.nint, Xamarin.iOS", "UIKit.UISearchBar+_UISearchBarDelegate, Xamarin.iOS", "SelectedScopeButtonIndexChanged");
	}

	-(BOOL) searchBarShouldBeginEditing:(UISearchBar *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_36 (self, _cmd, &managed_method, p0, "UIKit.UISearchBar, Xamarin.iOS", "UIKit.UISearchBar+_UISearchBarDelegate, Xamarin.iOS", "ShouldBeginEditing");
	}

	-(BOOL) searchBar:(UISearchBar *)p0 shouldChangeTextInRange:(NSRange)p1 replacementText:(NSString *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_37 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UISearchBar, Xamarin.iOS", "Foundation.NSRange, Xamarin.iOS", "System.String, mscorlib", "UIKit.UISearchBar+_UISearchBarDelegate, Xamarin.iOS", "ShouldChangeTextInRange");
	}

	-(BOOL) searchBarShouldEndEditing:(UISearchBar *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_36 (self, _cmd, &managed_method, p0, "UIKit.UISearchBar, Xamarin.iOS", "UIKit.UISearchBar+_UISearchBarDelegate, Xamarin.iOS", "ShouldEndEditing");
	}

	-(void) searchBar:(UISearchBar *)p0 textDidChange:(NSString *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_38 (self, _cmd, &managed_method, p0, p1, "UIKit.UISearchBar, Xamarin.iOS", "System.String, mscorlib", "UIKit.UISearchBar+_UISearchBarDelegate, Xamarin.iOS", "TextChanged");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "UIKit.UISearchBar+_UISearchBarDelegate, Xamarin.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UITableView_UITableViewAppearance : UIKit_UIScrollView_UIScrollViewAppearance {
}
@end
@implementation UIKit_UITableView_UITableViewAppearance { } 
@end

@interface UIKit_UITextField__UITextFieldDelegate : NSObject<UITextFieldDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) textFieldDidEndEditing:(UITextField *)p0;
	-(void) textFieldDidBeginEditing:(UITextField *)p0;
	-(BOOL) textFieldShouldBeginEditing:(UITextField *)p0;
	-(BOOL) textField:(UITextField *)p0 shouldChangeCharactersInRange:(NSRange)p1 replacementString:(NSString *)p2;
	-(BOOL) textFieldShouldClear:(UITextField *)p0;
	-(BOOL) textFieldShouldEndEditing:(UITextField *)p0;
	-(BOOL) textFieldShouldReturn:(UITextField *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation UIKit_UITextField__UITextFieldDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) textFieldDidEndEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "EditingEnded");
	}

	-(void) textFieldDidBeginEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "EditingStarted");
	}

	-(BOOL) textFieldShouldBeginEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_39 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldBeginEditing");
	}

	-(BOOL) textField:(UITextField *)p0 shouldChangeCharactersInRange:(NSRange)p1 replacementString:(NSString *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_40 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UITextField, Xamarin.iOS", "Foundation.NSRange, Xamarin.iOS", "System.String, mscorlib", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldChangeCharacters");
	}

	-(BOOL) textFieldShouldClear:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_39 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldClear");
	}

	-(BOOL) textFieldShouldEndEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_39 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldEndEditing");
	}

	-(BOOL) textFieldShouldReturn:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_39 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldReturn");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UIScrollView__UIScrollViewDelegate : NSObject<UIScrollViewDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) scrollViewDidEndDecelerating:(UIScrollView *)p0;
	-(void) scrollViewWillBeginDecelerating:(UIScrollView *)p0;
	-(void) scrollViewDidZoom:(UIScrollView *)p0;
	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1;
	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0;
	-(void) scrollViewDidEndScrollingAnimation:(UIScrollView *)p0;
	-(void) scrollViewDidScroll:(UIScrollView *)p0;
	-(void) scrollViewDidScrollToTop:(UIScrollView *)p0;
	-(BOOL) scrollViewShouldScrollToTop:(UIScrollView *)p0;
	-(UIView *) viewForZoomingInScrollView:(UIScrollView *)p0;
	-(void) scrollViewWillEndDragging:(UIScrollView *)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2;
	-(void) scrollViewDidEndZooming:(UIScrollView *)p0 withView:(UIView *)p1 atScale:(CGFloat)p2;
	-(void) scrollViewWillBeginZooming:(UIScrollView *)p0 withView:(UIView *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation UIKit_UIScrollView__UIScrollViewDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) scrollViewDidEndDecelerating:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_41 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "DecelerationEnded");
	}

	-(void) scrollViewWillBeginDecelerating:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_41 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "DecelerationStarted");
	}

	-(void) scrollViewDidZoom:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_41 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "DidZoom");
	}

	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_42 (self, _cmd, &managed_method, p0, p1, "UIKit.UIScrollView, Xamarin.iOS", "System.Boolean, mscorlib", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "DraggingEnded");
	}

	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_41 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "DraggingStarted");
	}

	-(void) scrollViewDidEndScrollingAnimation:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_41 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ScrollAnimationEnded");
	}

	-(void) scrollViewDidScroll:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_41 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "Scrolled");
	}

	-(void) scrollViewDidScrollToTop:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_41 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ScrolledToTop");
	}

	-(BOOL) scrollViewShouldScrollToTop:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_43 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ShouldScrollToTop");
	}

	-(UIView *) viewForZoomingInScrollView:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_44 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ViewForZoomingInScrollView");
	}

	-(void) scrollViewWillEndDragging:(UIScrollView *)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_45 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UIScrollView, Xamarin.iOS", "CoreGraphics.CGPoint, Xamarin.iOS", "CoreGraphics.CGPoint&, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "WillEndDragging");
	}

	-(void) scrollViewDidEndZooming:(UIScrollView *)p0 withView:(UIView *)p1 atScale:(CGFloat)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_46 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIView, Xamarin.iOS", "System.nfloat, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ZoomingEnded");
	}

	-(void) scrollViewWillBeginZooming:(UIScrollView *)p0 withView:(UIView *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_47 (self, _cmd, &managed_method, p0, p1, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ZoomingStarted");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UITextView__UITextViewDelegate : UIKit_UIScrollView__UIScrollViewDelegate<UITextViewDelegate, UIScrollViewDelegate> {
}
	-(void) textViewDidChange:(UITextView *)p0;
	-(void) textViewDidEndEditing:(UITextView *)p0;
	-(void) textViewDidBeginEditing:(UITextView *)p0;
	-(void) textViewDidChangeSelection:(UITextView *)p0;
	-(BOOL) textViewShouldBeginEditing:(UITextView *)p0;
	-(BOOL) textView:(UITextView *)p0 shouldChangeTextInRange:(NSRange)p1 replacementText:(NSString *)p2;
	-(BOOL) textViewShouldEndEditing:(UITextView *)p0;
	-(BOOL) textView:(UITextView *)p0 shouldInteractWithTextAttachment:(NSTextAttachment *)p1 inRange:(NSRange)p2;
	-(BOOL) textView:(UITextView *)p0 shouldInteractWithURL:(NSURL *)p1 inRange:(NSRange)p2;
	-(id) init;
@end
@implementation UIKit_UITextView__UITextViewDelegate { } 

	-(void) textViewDidChange:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_48 (self, _cmd, &managed_method, p0, "UIKit.UITextView, Xamarin.iOS", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "Changed");
	}

	-(void) textViewDidEndEditing:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_48 (self, _cmd, &managed_method, p0, "UIKit.UITextView, Xamarin.iOS", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "EditingEnded");
	}

	-(void) textViewDidBeginEditing:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_48 (self, _cmd, &managed_method, p0, "UIKit.UITextView, Xamarin.iOS", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "EditingStarted");
	}

	-(void) textViewDidChangeSelection:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_48 (self, _cmd, &managed_method, p0, "UIKit.UITextView, Xamarin.iOS", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "SelectionChanged");
	}

	-(BOOL) textViewShouldBeginEditing:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_49 (self, _cmd, &managed_method, p0, "UIKit.UITextView, Xamarin.iOS", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "ShouldBeginEditing");
	}

	-(BOOL) textView:(UITextView *)p0 shouldChangeTextInRange:(NSRange)p1 replacementText:(NSString *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_50 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UITextView, Xamarin.iOS", "Foundation.NSRange, Xamarin.iOS", "System.String, mscorlib", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "ShouldChangeText");
	}

	-(BOOL) textViewShouldEndEditing:(UITextView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_49 (self, _cmd, &managed_method, p0, "UIKit.UITextView, Xamarin.iOS", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "ShouldEndEditing");
	}

	-(BOOL) textView:(UITextView *)p0 shouldInteractWithTextAttachment:(NSTextAttachment *)p1 inRange:(NSRange)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_51 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UITextView, Xamarin.iOS", "UIKit.NSTextAttachment, Xamarin.iOS", "Foundation.NSRange, Xamarin.iOS", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "ShouldInteractWithTextAttachment");
	}

	-(BOOL) textView:(UITextView *)p0 shouldInteractWithURL:(NSURL *)p1 inRange:(NSRange)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_52 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UITextView, Xamarin.iOS", "Foundation.NSUrl, Xamarin.iOS", "Foundation.NSRange, Xamarin.iOS", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", "ShouldInteractWithUrl");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIKit_UIScrollView__UIScrollViewDelegate class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __NSObject_Disposer : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	+(void) drain:(NSObject *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation __NSObject_Disposer { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	+(void) drain:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_53 (self, _cmd, &managed_method, p0, "Foundation.NSObject, Xamarin.iOS", "Foundation.NSObject+NSObject_Disposer, Xamarin.iOS", "Drain");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "Foundation.NSObject+NSObject_Disposer, Xamarin.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface TPKeyboardAvoiding_TPKeyboardAvoidingCollectionView_TPKeyboardAvoidingCollectionViewAppearance : UIKit_UICollectionView_UICollectionViewAppearance {
}
@end
@implementation TPKeyboardAvoiding_TPKeyboardAvoidingCollectionView_TPKeyboardAvoidingCollectionViewAppearance { } 
@end

@interface TPKeyboardAvoidingCollectionView : UICollectionView {
}
	-(BOOL) focusNextTextField;
	-(void) scrollToActiveTextField;
	-(id) init;
	-(id) initWithCoder:(NSCoder *)p0;
@end

@interface TPKeyboardAvoiding_TPKeyboardAvoidingScrollView_TPKeyboardAvoidingScrollViewAppearance : UIKit_UIScrollView_UIScrollViewAppearance {
}
@end
@implementation TPKeyboardAvoiding_TPKeyboardAvoidingScrollView_TPKeyboardAvoidingScrollViewAppearance { } 
@end

@interface TPKeyboardAvoidingScrollView : UIScrollView {
}
	-(void) contentSizeToFit;
	-(BOOL) focusNextTextField;
	-(void) scrollToActiveTextField;
	-(id) init;
	-(id) initWithCoder:(NSCoder *)p0;
@end

@interface TPKeyboardAvoiding_TPKeyboardAvoidingTableView_TPKeyboardAvoidingTableViewAppearance : UIKit_UITableView_UITableViewAppearance {
}
@end
@implementation TPKeyboardAvoiding_TPKeyboardAvoidingTableView_TPKeyboardAvoidingTableViewAppearance { } 
@end

@interface TPKeyboardAvoidingTableView : UITableView {
}
	-(BOOL) focusNextTextField;
	-(void) scrollToActiveTextField;
	-(id) init;
	-(id) initWithCoder:(NSCoder *)p0;
@end

@interface MvvmCross_Binding_iOS_Views_MvxCollectionReusableView : UICollectionReusableView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MvvmCross_Binding_iOS_Views_MvxCollectionReusableView { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MvvmCross.Binding.iOS.Views.MvxCollectionReusableView, MvvmCross.Binding.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UICollectionReusableView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface MvxImageView : UIImageView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation MvxImageView { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface MvvmCross_Binding_iOS_Views_MvxPickerViewModel : NSObject<UIPickerViewModel> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)p0;
	-(NSInteger) pickerView:(UIPickerView *)p0 numberOfRowsInComponent:(NSInteger)p1;
	-(NSString *) pickerView:(UIPickerView *)p0 titleForRow:(NSInteger)p1 forComponent:(NSInteger)p2;
	-(void) pickerView:(UIPickerView *)p0 didSelectRow:(NSInteger)p1 inComponent:(NSInteger)p2;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation MvvmCross_Binding_iOS_Views_MvxPickerViewModel { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_54 (self, _cmd, &managed_method, p0, "UIKit.UIPickerView, Xamarin.iOS", "MvvmCross.Binding.iOS.Views.MvxPickerViewModel, MvvmCross.Binding.iOS", "GetComponentCount");
	}

	-(NSInteger) pickerView:(UIPickerView *)p0 numberOfRowsInComponent:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_55 (self, _cmd, &managed_method, p0, p1, "UIKit.UIPickerView, Xamarin.iOS", "System.nint, Xamarin.iOS", "MvvmCross.Binding.iOS.Views.MvxPickerViewModel, MvvmCross.Binding.iOS", "GetRowsInComponent");
	}

	-(NSString *) pickerView:(UIPickerView *)p0 titleForRow:(NSInteger)p1 forComponent:(NSInteger)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_56 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UIPickerView, Xamarin.iOS", "System.nint, Xamarin.iOS", "System.nint, Xamarin.iOS", "MvvmCross.Binding.iOS.Views.MvxPickerViewModel, MvvmCross.Binding.iOS", "GetTitle");
	}

	-(void) pickerView:(UIPickerView *)p0 didSelectRow:(NSInteger)p1 inComponent:(NSInteger)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_57 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UIPickerView, Xamarin.iOS", "System.nint, Xamarin.iOS", "System.nint, Xamarin.iOS", "MvvmCross.Binding.iOS.Views.MvxPickerViewModel, MvvmCross.Binding.iOS", "Selected");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface MvvmCross_Binding_iOS_Views_MvxBaseCollectionViewSource : NSObject<UICollectionViewSource> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) collectionView:(UICollectionView *)p0 didSelectItemAtIndexPath:(NSIndexPath *)p1;
	-(UICollectionViewCell *) collectionView:(UICollectionView *)p0 cellForItemAtIndexPath:(NSIndexPath *)p1;
	-(void) collectionView:(UICollectionView *)p0 didEndDisplayingCell:(UICollectionViewCell *)p1 forItemAtIndexPath:(NSIndexPath *)p2;
	-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation MvvmCross_Binding_iOS_Views_MvxBaseCollectionViewSource { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) collectionView:(UICollectionView *)p0 didSelectItemAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_58 (self, _cmd, &managed_method, p0, p1, "UIKit.UICollectionView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "MvvmCross.Binding.iOS.Views.MvxBaseCollectionViewSource, MvvmCross.Binding.iOS", "ItemSelected");
	}

	-(UICollectionViewCell *) collectionView:(UICollectionView *)p0 cellForItemAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_59 (self, _cmd, &managed_method, p0, p1, "UIKit.UICollectionView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "MvvmCross.Binding.iOS.Views.MvxBaseCollectionViewSource, MvvmCross.Binding.iOS", "GetCell");
	}

	-(void) collectionView:(UICollectionView *)p0 didEndDisplayingCell:(UICollectionViewCell *)p1 forItemAtIndexPath:(NSIndexPath *)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_60 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UICollectionView, Xamarin.iOS", "UIKit.UICollectionViewCell, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "MvvmCross.Binding.iOS.Views.MvxBaseCollectionViewSource, MvvmCross.Binding.iOS", "CellDisplayingEnded");
	}

	-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_61 (self, _cmd, &managed_method, p0, "UIKit.UICollectionView, Xamarin.iOS", "MvvmCross.Binding.iOS.Views.MvxBaseCollectionViewSource, MvvmCross.Binding.iOS", "NumberOfSections");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface MvvmCross_Binding_iOS_Views_MvxStandardTableViewCell : MvvmCross_Binding_iOS_Views_MvxTableViewCell {
}
	-(void) setSelected:(BOOL)p0 animated:(BOOL)p1;
@end
@implementation MvvmCross_Binding_iOS_Views_MvxStandardTableViewCell { } 

	-(void) setSelected:(BOOL)p0 animated:(BOOL)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_62 (self, _cmd, &managed_method, p0, p1, "System.Boolean, mscorlib", "System.Boolean, mscorlib", "MvvmCross.Binding.iOS.Views.MvxStandardTableViewCell, MvvmCross.Binding.iOS", "SetSelected");
	}
@end

@interface MvvmCross_Binding_iOS_Views_MvxCollectionViewCell : UICollectionViewCell {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UICollectionViewLayoutAttributes *) preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation MvvmCross_Binding_iOS_Views_MvxCollectionViewCell { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UICollectionViewLayoutAttributes *) preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_63 (self, _cmd, &managed_method, p0, "UIKit.UICollectionViewLayoutAttributes, Xamarin.iOS", "MvvmCross.Binding.iOS.Views.MvxCollectionViewCell, MvvmCross.Binding.iOS", "PreferredLayoutAttributesFittingAttributes");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface MvvmCross_Binding_iOS_Views_MvxSimpleTableViewSource : MvvmCross_Binding_iOS_Views_MvxTableViewSource<UIScrollViewDelegate> {
}
@end
@implementation MvvmCross_Binding_iOS_Views_MvxSimpleTableViewSource { } 
@end

@interface MvvmCross_Binding_iOS_Views_MvxStandardTableViewSource : MvvmCross_Binding_iOS_Views_MvxTableViewSource<UIScrollViewDelegate> {
}
@end
@implementation MvvmCross_Binding_iOS_Views_MvxStandardTableViewSource { } 
@end

@interface MvvmCross_Binding_iOS_Views_MvxView : UIView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MvvmCross_Binding_iOS_Views_MvxView { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MvvmCross.Binding.iOS.Views.MvxView, MvvmCross.Binding.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIView class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface MvvmCross_Binding_iOS_Views_MvxCollectionViewSource : MvvmCross_Binding_iOS_Views_MvxBaseCollectionViewSource<UICollectionViewSource> {
}
	-(NSInteger) collectionView:(UICollectionView *)p0 numberOfItemsInSection:(NSInteger)p1;
@end
@implementation MvvmCross_Binding_iOS_Views_MvxCollectionViewSource { } 

	-(NSInteger) collectionView:(UICollectionView *)p0 numberOfItemsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_64 (self, _cmd, &managed_method, p0, p1, "UIKit.UICollectionView, Xamarin.iOS", "System.nint, Xamarin.iOS", "MvvmCross.Binding.iOS.Views.MvxCollectionViewSource, MvvmCross.Binding.iOS", "GetItemsCount");
	}
@end

@interface MvvmCross_Binding_iOS_Views_MvxCollectionViewSourceAnimated : MvvmCross_Binding_iOS_Views_MvxCollectionViewSource<UICollectionViewSource> {
}
	-(NSInteger) collectionView:(UICollectionView *)p0 numberOfItemsInSection:(NSInteger)p1;
@end
@implementation MvvmCross_Binding_iOS_Views_MvxCollectionViewSourceAnimated { } 

	-(NSInteger) collectionView:(UICollectionView *)p0 numberOfItemsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_64 (self, _cmd, &managed_method, p0, p1, "UIKit.UICollectionView, Xamarin.iOS", "System.nint, Xamarin.iOS", "MvvmCross.Binding.iOS.Views.MvxCollectionViewSourceAnimated, MvvmCross.Binding.iOS", "GetItemsCount");
	}
@end

@interface MvvmCross_Binding_iOS_Views_MvxActionBasedTableViewSource : MvvmCross_Binding_iOS_Views_MvxStandardTableViewSource<UIScrollViewDelegate> {
}
@end
@implementation MvvmCross_Binding_iOS_Views_MvxActionBasedTableViewSource { } 
@end

@interface MvvmCross_Platform_iOS_Views_MvxEventSourceCollectionViewController : UICollectionViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewWillDisappear:(BOOL)p0;
	-(void) viewDidAppear:(BOOL)p0;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) viewDidDisappear:(BOOL)p0;
	-(void) viewDidLoad;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation MvvmCross_Platform_iOS_Views_MvxEventSourceCollectionViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) viewWillDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourceCollectionViewController, MvvmCross.Platform.iOS", "ViewWillDisappear");
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourceCollectionViewController, MvvmCross.Platform.iOS", "ViewDidAppear");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourceCollectionViewController, MvvmCross.Platform.iOS", "ViewWillAppear");
	}

	-(void) viewDidDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourceCollectionViewController, MvvmCross.Platform.iOS", "ViewDidDisappear");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "MvvmCross.Platform.iOS.Views.MvxEventSourceCollectionViewController, MvvmCross.Platform.iOS", "ViewDidLoad");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface MvvmCross_Platform_iOS_Views_MvxEventSourceTabBarController : UITabBarController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewWillDisappear:(BOOL)p0;
	-(void) viewDidAppear:(BOOL)p0;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) viewDidDisappear:(BOOL)p0;
	-(void) viewDidLoad;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MvvmCross_Platform_iOS_Views_MvxEventSourceTabBarController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) viewWillDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourceTabBarController, MvvmCross.Platform.iOS", "ViewWillDisappear");
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourceTabBarController, MvvmCross.Platform.iOS", "ViewDidAppear");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourceTabBarController, MvvmCross.Platform.iOS", "ViewWillAppear");
	}

	-(void) viewDidDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourceTabBarController, MvvmCross.Platform.iOS", "ViewDidDisappear");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "MvvmCross.Platform.iOS.Views.MvxEventSourceTabBarController, MvvmCross.Platform.iOS", "ViewDidLoad");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MvvmCross.Platform.iOS.Views.MvxEventSourceTabBarController, MvvmCross.Platform.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UITabBarController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface MvvmCross_Platform_iOS_Views_MvxEventSourceTableViewController : UITableViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewWillDisappear:(BOOL)p0;
	-(void) viewDidAppear:(BOOL)p0;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) viewDidDisappear:(BOOL)p0;
	-(void) viewDidLoad;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation MvvmCross_Platform_iOS_Views_MvxEventSourceTableViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) viewWillDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourceTableViewController, MvvmCross.Platform.iOS", "ViewWillDisappear");
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourceTableViewController, MvvmCross.Platform.iOS", "ViewDidAppear");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourceTableViewController, MvvmCross.Platform.iOS", "ViewWillAppear");
	}

	-(void) viewDidDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourceTableViewController, MvvmCross.Platform.iOS", "ViewDidDisappear");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "MvvmCross.Platform.iOS.Views.MvxEventSourceTableViewController, MvvmCross.Platform.iOS", "ViewDidLoad");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface MvvmCross_Platform_iOS_Views_MvxEventSourcePageViewController : UIPageViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewDidLoad;
	-(void) viewWillAppear:(BOOL)p0;
	-(void) viewDidAppear:(BOOL)p0;
	-(void) viewDidDisappear:(BOOL)p0;
	-(void) viewWillDisappear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation MvvmCross_Platform_iOS_Views_MvxEventSourcePageViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "MvvmCross.Platform.iOS.Views.MvxEventSourcePageViewController, MvvmCross.Platform.iOS", "ViewDidLoad");
	}

	-(void) viewWillAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourcePageViewController, MvvmCross.Platform.iOS", "ViewWillAppear");
	}

	-(void) viewDidAppear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourcePageViewController, MvvmCross.Platform.iOS", "ViewDidAppear");
	}

	-(void) viewDidDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourcePageViewController, MvvmCross.Platform.iOS", "ViewDidDisappear");
	}

	-(void) viewWillDisappear:(BOOL)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_8 (self, _cmd, &managed_method, p0, "System.Boolean, mscorlib", "MvvmCross.Platform.iOS.Views.MvxEventSourcePageViewController, MvvmCross.Platform.iOS", "ViewWillDisappear");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface MvvmCross_iOS_Views_MvxTabBarViewController : MvvmCross_Platform_iOS_Views_MvxEventSourceTabBarController {
}
	-(id) init;
@end
@implementation MvvmCross_iOS_Views_MvxTabBarViewController { } 

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MvvmCross.iOS.Views.MvxTabBarViewController, MvvmCross.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [MvvmCross_Platform_iOS_Views_MvxEventSourceTabBarController class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface MvvmCross_iOS_Views_MvxTabBarViewController_1 : MvvmCross_iOS_Views_MvxTabBarViewController {
}
	-(id) init;
@end
@implementation MvvmCross_iOS_Views_MvxTabBarViewController_1 { } 
	-(id) init
	{
		xamarin_throw_product_exception (4126, "Cannot construct an instance of the type 'MvvmCross.iOS.Views.MvxTabBarViewController`1' from Objective-C because the type is generic.");

		return self;
	}
@end

@interface MvvmCross_iOS_Views_MvxTableViewController : MvvmCross_Platform_iOS_Views_MvxEventSourceTableViewController {
}
@end
@implementation MvvmCross_iOS_Views_MvxTableViewController { } 
@end

@interface MvvmCross_iOS_Views_MvxTableViewController_1 : MvvmCross_iOS_Views_MvxTableViewController {
}
@end
@implementation MvvmCross_iOS_Views_MvxTableViewController_1 { } 
@end

@interface MvvmCross_iOS_Views_MvxCollectionViewController : MvvmCross_Platform_iOS_Views_MvxEventSourceCollectionViewController {
}
@end
@implementation MvvmCross_iOS_Views_MvxCollectionViewController { } 
@end

@interface MvvmCross_iOS_Views_MvxCollectionViewController_1 : MvvmCross_iOS_Views_MvxCollectionViewController {
}
@end
@implementation MvvmCross_iOS_Views_MvxCollectionViewController_1 { } 
@end

@interface MvvmCross_iOS_Views_MvxPageViewController : MvvmCross_Platform_iOS_Views_MvxEventSourcePageViewController {
}
	-(void) viewDidLoad;
@end
@implementation MvvmCross_iOS_Views_MvxPageViewController { } 

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "MvvmCross.iOS.Views.MvxPageViewController, MvvmCross.iOS", "ViewDidLoad");
	}
@end

@interface MvvmCross_iOS_Views_MvxPageViewController_1 : MvvmCross_iOS_Views_MvxPageViewController {
}
@end
@implementation MvvmCross_iOS_Views_MvxPageViewController_1 { } 
@end

@interface MvvmCross_iOS_Views_MvxUIRefreshControl : UIRefreshControl {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation MvvmCross_iOS_Views_MvxUIRefreshControl { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_4 (self, _cmd, &managed_method, "MvvmCross.iOS.Views.MvxUIRefreshControl, MvvmCross.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [UIRefreshControl class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

	static MTClassMap __xamarin_class_map [] = {
		{"NSObject", "Foundation.NSObject, Xamarin.iOS", NULL },
		{"UIResponder", "UIKit.UIResponder, Xamarin.iOS", NULL },
		{"UIViewController", "UIKit.UIViewController, Xamarin.iOS", NULL },
		{"UIView", "UIKit.UIView, Xamarin.iOS", NULL },
		{"UITableViewCell", "UIKit.UITableViewCell, Xamarin.iOS", NULL },
		{"NSIndexPath", "Foundation.NSIndexPath, Xamarin.iOS", NULL },
		{"UIFocusAnimationCoordinator", "UIKit.UIFocusAnimationCoordinator, Xamarin.iOS", NULL },
		{"UIFocusUpdateContext", "UIKit.UIFocusUpdateContext, Xamarin.iOS", NULL },
		{"UIImage", "UIKit.UIImage, Xamarin.iOS", NULL },
		{"UIApplication", "UIKit.UIApplication, Xamarin.iOS", NULL },
		{"UIBarItem", "UIKit.UIBarItem, Xamarin.iOS", NULL },
		{"UIBarButtonItem", "UIKit.UIBarButtonItem, Xamarin.iOS", NULL },
		{"UIBezierPath", "UIKit.UIBezierPath, Xamarin.iOS", NULL },
		{"UIControl", "UIKit.UIControl, Xamarin.iOS", NULL },
		{"UIButton", "UIKit.UIButton, Xamarin.iOS", NULL },
		{"UICollectionViewLayout", "UIKit.UICollectionViewLayout, Xamarin.iOS", NULL },
		{"UICollectionViewLayoutAttributes", "UIKit.UICollectionViewLayoutAttributes, Xamarin.iOS", NULL },
		{"NSArray", "Foundation.NSArray, Xamarin.iOS", NULL },
		{"UICollectionViewTransitionLayout", "UIKit.UICollectionViewTransitionLayout, Xamarin.iOS", NULL },
		{"UIImageView", "UIKit.UIImageView, Xamarin.iOS", NULL },
		{"NSAttributedString", "Foundation.NSAttributedString, Xamarin.iOS", NULL },
		{"UIColor", "UIKit.UIColor, Xamarin.iOS", NULL },
		{"UIKit_UIControlEventProxy", "UIKit.UIControlEventProxy, Xamarin.iOS", NULL },
		{"NSBundle", "Foundation.NSBundle, Xamarin.iOS", NULL },
		{"UIDevice", "UIKit.UIDevice, Xamarin.iOS", NULL },
		{"NSCalendar", "Foundation.NSCalendar, Xamarin.iOS", NULL },
		{"NSCoder", "Foundation.NSCoder, Xamarin.iOS", NULL },
		{"NSDate", "Foundation.NSDate, Xamarin.iOS", NULL },
		{"UINavigationController", "UIKit.UINavigationController, Xamarin.iOS", NULL },
		{"UIPickerView", "UIKit.UIPickerView, Xamarin.iOS", NULL },
		{"UIScreen", "UIKit.UIScreen, Xamarin.iOS", NULL },
		{"UISegmentedControl", "UIKit.UISegmentedControl, Xamarin.iOS", NULL },
		{"NSNull", "Foundation.NSNull, Xamarin.iOS", NULL },
		{"NSValue", "Foundation.NSValue, Xamarin.iOS", NULL },
		{"NSNumber", "Foundation.NSNumber, Xamarin.iOS", NULL },
		{"NSRunLoop", "Foundation.NSRunLoop, Xamarin.iOS", NULL },
		{"UILabel", "UIKit.UILabel, Xamarin.iOS", NULL },
		{"UILocalNotification", "UIKit.UILocalNotification, Xamarin.iOS", NULL },
		{"NSString", "Foundation.NSString, Xamarin.iOS", NULL },
		{"NSURL", "Foundation.NSUrl, Xamarin.iOS", NULL },
		{"UINib", "UIKit.UINib, Xamarin.iOS", NULL },
		{"CALayer", "CoreAnimation.CALayer, Xamarin.iOS", NULL },
		{"__MonoMac_NSActionDispatcher", "Foundation.NSActionDispatcher, Xamarin.iOS", NULL },
		{"__MonoMac_NSAsyncActionDispatcher", "Foundation.NSAsyncActionDispatcher, Xamarin.iOS", NULL },
		{"NSAutoreleasePool", "Foundation.NSAutoreleasePool, Xamarin.iOS", NULL },
		{"NSError", "Foundation.NSError, Xamarin.iOS", NULL },
		{"UIPress", "UIKit.UIPress, Xamarin.iOS", NULL },
		{"UIProgressView", "UIKit.UIProgressView, Xamarin.iOS", NULL },
		{"UIRefreshControl", "UIKit.UIRefreshControl, Xamarin.iOS", NULL },
		{"NSUserActivity", "Foundation.NSUserActivity, Xamarin.iOS", NULL },
		{"UISlider", "UIKit.UISlider, Xamarin.iOS", NULL },
		{"UIStepper", "UIKit.UIStepper, Xamarin.iOS", NULL },
		{"UIStoryboard", "UIKit.UIStoryboard, Xamarin.iOS", NULL },
		{"UISwitch", "UIKit.UISwitch, Xamarin.iOS", NULL },
		{"UITabBar", "UIKit.UITabBar, Xamarin.iOS", NULL },
		{"UITabBarController", "UIKit.UITabBarController, Xamarin.iOS", NULL },
		{"UITabBarItem", "UIKit.UITabBarItem, Xamarin.iOS", NULL },
		{"UITableViewController", "UIKit.UITableViewController, Xamarin.iOS", NULL },
		{"UITableViewFocusUpdateContext", "UIKit.UITableViewFocusUpdateContext, Xamarin.iOS", NULL },
		{"UITableViewRowAction", "UIKit.UITableViewRowAction, Xamarin.iOS", NULL },
		{"NSDateComponents", "Foundation.NSDateComponents, Xamarin.iOS", NULL },
		{"NSException", "Foundation.NSException, Xamarin.iOS", NULL },
		{"NSTextAttachment", "UIKit.NSTextAttachment, Xamarin.iOS", NULL },
		{"NSTextContainer", "UIKit.NSTextContainer, Xamarin.iOS", NULL },
		{"UITextPosition", "UIKit.UITextPosition, Xamarin.iOS", NULL },
		{"UITextRange", "UIKit.UITextRange, Xamarin.iOS", NULL },
		{"UITextSelectionRect", "UIKit.UITextSelectionRect, Xamarin.iOS", NULL },
		{"UIAlertAction", "UIKit.UIAlertAction, Xamarin.iOS", NULL },
		{"UIAlertController", "UIKit.UIAlertController, Xamarin.iOS", NULL },
		{"UITouch", "UIKit.UITouch, Xamarin.iOS", NULL },
		{"UITraitCollection", "UIKit.UITraitCollection, Xamarin.iOS", NULL },
		{"UIActivityIndicatorView", "UIKit.UIActivityIndicatorView, Xamarin.iOS", NULL },
		{"UICollectionViewFocusUpdateContext", "UIKit.UICollectionViewFocusUpdateContext, Xamarin.iOS", NULL },
		{"UIUserNotificationSettings", "UIKit.UIUserNotificationSettings, Xamarin.iOS", NULL },
		{"UIDatePicker", "UIKit.UIDatePicker, Xamarin.iOS", NULL },
		{"UICollectionReusableView", "UIKit.UICollectionReusableView, Xamarin.iOS", NULL },
		{"UICollectionViewCell", "UIKit.UICollectionViewCell, Xamarin.iOS", NULL },
		{"UICollectionViewController", "UIKit.UICollectionViewController, Xamarin.iOS", NULL },
		{"UIWindow", "UIKit.UIWindow, Xamarin.iOS", NULL },
		{"UIApplicationShortcutItem", "UIKit.UIApplicationShortcutItem, Xamarin.iOS", NULL },
		{"UIGestureRecognizer", "UIKit.UIGestureRecognizer, Xamarin.iOS", NULL },
		{"UIScrollView", "UIKit.UIScrollView, Xamarin.iOS", NULL },
		{"UICollectionView", "UIKit.UICollectionView, Xamarin.iOS", NULL },
		{"UIImagePickerController", "UIKit.UIImagePickerController, Xamarin.iOS", NULL },
		{"NSDictionary", "Foundation.NSDictionary, Xamarin.iOS", NULL },
		{"NSMutableDictionary", "Foundation.NSMutableDictionary, Xamarin.iOS", NULL },
		{"NSData", "Foundation.NSData, Xamarin.iOS", NULL },
		{"UITapGestureRecognizer", "UIKit.UITapGestureRecognizer, Xamarin.iOS", NULL },
		{"UISwipeGestureRecognizer", "UIKit.UISwipeGestureRecognizer, Xamarin.iOS", NULL },
		{"UIPageViewController", "UIKit.UIPageViewController, Xamarin.iOS", NULL },
		{"UISearchBar", "UIKit.UISearchBar, Xamarin.iOS", NULL },
		{"UITableView", "UIKit.UITableView, Xamarin.iOS", NULL },
		{"UITextField", "UIKit.UITextField, Xamarin.iOS", NULL },
		{"UITextView", "UIKit.UITextView, Xamarin.iOS", NULL },
		{"MvvmCross_iOS_Platform_MvxApplicationDelegate", "MvvmCross.iOS.Platform.MvxApplicationDelegate, MvvmCross.iOS", NULL },
		{"AppDelegate", "EmployeeManagementSystem.Touch.AppDelegate, EmployeeManagementSystem.Touch", NULL },
		{"ViewController", "EmployeeManagementSystem.Touch.ViewController, EmployeeManagementSystem.Touch", NULL },
		{"MvvmCross_Platform_iOS_Views_MvxEventSourceViewController", "MvvmCross.Platform.iOS.Views.MvxEventSourceViewController, MvvmCross.Platform.iOS", NULL },
		{"MvvmCross_iOS_Views_MvxViewController", "MvvmCross.iOS.Views.MvxViewController, MvvmCross.iOS", NULL },
		{"MvvmCross_iOS_Views_MvxViewController_1", "MvvmCross.iOS.Views.MvxViewController`1, MvvmCross.iOS", NULL },
		{"AddEmployeeViewController", "EmployeeManagementSystem.Touch.AddEmployeeViewController, EmployeeManagementSystem.Touch", NULL },
		{"MvvmCross_Binding_iOS_Views_MvxTableViewCell", "MvvmCross.Binding.iOS.Views.MvxTableViewCell, MvvmCross.Binding.iOS", NULL },
		{"employeeTableViewCell", "EmployeeManagementSystem.Touch.employeeTableViewCell, EmployeeManagementSystem.Touch", NULL },
		{"MvvmCross_Binding_iOS_Views_MvxBaseTableViewSource", "MvvmCross.Binding.iOS.Views.MvxBaseTableViewSource, MvvmCross.Binding.iOS", NULL },
		{"MvvmCross_Binding_iOS_Views_MvxTableViewSource", "MvvmCross.Binding.iOS.Views.MvxTableViewSource, MvvmCross.Binding.iOS", NULL },
		{"EmployeeManagementSystem_Touch_MainViewController_employeeTableViewDataSource", "EmployeeManagementSystem.Touch.MainViewController+employeeTableViewDataSource, EmployeeManagementSystem.Touch", NULL },
		{"MainViewController", "EmployeeManagementSystem.Touch.MainViewController, EmployeeManagementSystem.Touch", NULL },
		{"__UIGestureRecognizerToken", "UIKit.UIGestureRecognizer+Token, Xamarin.iOS", NULL },
		{"__UIGestureRecognizerParameterlessToken", "UIKit.UIGestureRecognizer+ParameterlessDispatch, Xamarin.iOS", NULL },
		{"__UIGestureRecognizerParametrizedToken", "UIKit.UIGestureRecognizer+ParametrizedDispatch, Xamarin.iOS", NULL },
		{"UIKit_UIView_UIViewAppearance", "UIKit.UIView+UIViewAppearance, Xamarin.iOS", NULL },
		{"UIKit_UIScrollView_UIScrollViewAppearance", "UIKit.UIScrollView+UIScrollViewAppearance, Xamarin.iOS", NULL },
		{"UIKit_UICollectionView_UICollectionViewAppearance", "UIKit.UICollectionView+UICollectionViewAppearance, Xamarin.iOS", NULL },
		{"UIKit_UIImagePickerController__UIImagePickerControllerDelegate", "UIKit.UIImagePickerController+_UIImagePickerControllerDelegate, Xamarin.iOS", NULL },
		{"__UITapGestureRecognizer", "UIKit.UITapGestureRecognizer+Callback, Xamarin.iOS", NULL },
		{"__UISwipeGestureRecognizer", "UIKit.UISwipeGestureRecognizer+Callback, Xamarin.iOS", NULL },
		{"UIKit_UIPageViewController__UIPageViewControllerDataSource", "UIKit.UIPageViewController+_UIPageViewControllerDataSource, Xamarin.iOS", NULL },
		{"UIKit_UISearchBar__UISearchBarDelegate", "UIKit.UISearchBar+_UISearchBarDelegate, Xamarin.iOS", NULL },
		{"UIKit_UITableView_UITableViewAppearance", "UIKit.UITableView+UITableViewAppearance, Xamarin.iOS", NULL },
		{"UIKit_UITextField__UITextFieldDelegate", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", NULL },
		{"UIKit_UIScrollView__UIScrollViewDelegate", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", NULL },
		{"UIKit_UITextView__UITextViewDelegate", "UIKit.UITextView+_UITextViewDelegate, Xamarin.iOS", NULL },
		{"__NSObject_Disposer", "Foundation.NSObject+NSObject_Disposer, Xamarin.iOS", NULL },
		{"TPKeyboardAvoiding_TPKeyboardAvoidingCollectionView_TPKeyboardAvoidingCollectionViewAppearance", "TPKeyboardAvoiding.TPKeyboardAvoidingCollectionView+TPKeyboardAvoidingCollectionViewAppearance, TPKeyboardAvoiding", NULL },
		{"TPKeyboardAvoidingCollectionView", "TPKeyboardAvoiding.TPKeyboardAvoidingCollectionView, TPKeyboardAvoiding", NULL },
		{"TPKeyboardAvoiding_TPKeyboardAvoidingScrollView_TPKeyboardAvoidingScrollViewAppearance", "TPKeyboardAvoiding.TPKeyboardAvoidingScrollView+TPKeyboardAvoidingScrollViewAppearance, TPKeyboardAvoiding", NULL },
		{"TPKeyboardAvoidingScrollView", "TPKeyboardAvoiding.TPKeyboardAvoidingScrollView, TPKeyboardAvoiding", NULL },
		{"TPKeyboardAvoiding_TPKeyboardAvoidingTableView_TPKeyboardAvoidingTableViewAppearance", "TPKeyboardAvoiding.TPKeyboardAvoidingTableView+TPKeyboardAvoidingTableViewAppearance, TPKeyboardAvoiding", NULL },
		{"TPKeyboardAvoidingTableView", "TPKeyboardAvoiding.TPKeyboardAvoidingTableView, TPKeyboardAvoiding", NULL },
		{"MvvmCross_Binding_iOS_Views_MvxCollectionReusableView", "MvvmCross.Binding.iOS.Views.MvxCollectionReusableView, MvvmCross.Binding.iOS", NULL },
		{"MvxImageView", "MvvmCross.Binding.iOS.Views.MvxImageView, MvvmCross.Binding.iOS", NULL },
		{"MvvmCross_Binding_iOS_Views_MvxPickerViewModel", "MvvmCross.Binding.iOS.Views.MvxPickerViewModel, MvvmCross.Binding.iOS", NULL },
		{"MvvmCross_Binding_iOS_Views_MvxBaseCollectionViewSource", "MvvmCross.Binding.iOS.Views.MvxBaseCollectionViewSource, MvvmCross.Binding.iOS", NULL },
		{"MvvmCross_Binding_iOS_Views_MvxStandardTableViewCell", "MvvmCross.Binding.iOS.Views.MvxStandardTableViewCell, MvvmCross.Binding.iOS", NULL },
		{"MvvmCross_Binding_iOS_Views_MvxCollectionViewCell", "MvvmCross.Binding.iOS.Views.MvxCollectionViewCell, MvvmCross.Binding.iOS", NULL },
		{"MvvmCross_Binding_iOS_Views_MvxSimpleTableViewSource", "MvvmCross.Binding.iOS.Views.MvxSimpleTableViewSource, MvvmCross.Binding.iOS", NULL },
		{"MvvmCross_Binding_iOS_Views_MvxStandardTableViewSource", "MvvmCross.Binding.iOS.Views.MvxStandardTableViewSource, MvvmCross.Binding.iOS", NULL },
		{"MvvmCross_Binding_iOS_Views_MvxView", "MvvmCross.Binding.iOS.Views.MvxView, MvvmCross.Binding.iOS", NULL },
		{"MvvmCross_Binding_iOS_Views_MvxCollectionViewSource", "MvvmCross.Binding.iOS.Views.MvxCollectionViewSource, MvvmCross.Binding.iOS", NULL },
		{"MvvmCross_Binding_iOS_Views_MvxCollectionViewSourceAnimated", "MvvmCross.Binding.iOS.Views.MvxCollectionViewSourceAnimated, MvvmCross.Binding.iOS", NULL },
		{"MvvmCross_Binding_iOS_Views_MvxActionBasedTableViewSource", "MvvmCross.Binding.iOS.Views.MvxActionBasedTableViewSource, MvvmCross.Binding.iOS", NULL },
		{"MvvmCross_Platform_iOS_Views_MvxEventSourceCollectionViewController", "MvvmCross.Platform.iOS.Views.MvxEventSourceCollectionViewController, MvvmCross.Platform.iOS", NULL },
		{"MvvmCross_Platform_iOS_Views_MvxEventSourceTabBarController", "MvvmCross.Platform.iOS.Views.MvxEventSourceTabBarController, MvvmCross.Platform.iOS", NULL },
		{"MvvmCross_Platform_iOS_Views_MvxEventSourceTableViewController", "MvvmCross.Platform.iOS.Views.MvxEventSourceTableViewController, MvvmCross.Platform.iOS", NULL },
		{"MvvmCross_Platform_iOS_Views_MvxEventSourcePageViewController", "MvvmCross.Platform.iOS.Views.MvxEventSourcePageViewController, MvvmCross.Platform.iOS", NULL },
		{"MvvmCross_iOS_Views_MvxTabBarViewController", "MvvmCross.iOS.Views.MvxTabBarViewController, MvvmCross.iOS", NULL },
		{"MvvmCross_iOS_Views_MvxTabBarViewController_1", "MvvmCross.iOS.Views.MvxTabBarViewController`1, MvvmCross.iOS", NULL },
		{"MvvmCross_iOS_Views_MvxTableViewController", "MvvmCross.iOS.Views.MvxTableViewController, MvvmCross.iOS", NULL },
		{"MvvmCross_iOS_Views_MvxTableViewController_1", "MvvmCross.iOS.Views.MvxTableViewController`1, MvvmCross.iOS", NULL },
		{"MvvmCross_iOS_Views_MvxCollectionViewController", "MvvmCross.iOS.Views.MvxCollectionViewController, MvvmCross.iOS", NULL },
		{"MvvmCross_iOS_Views_MvxCollectionViewController_1", "MvvmCross.iOS.Views.MvxCollectionViewController`1, MvvmCross.iOS", NULL },
		{"MvvmCross_iOS_Views_MvxPageViewController", "MvvmCross.iOS.Views.MvxPageViewController, MvvmCross.iOS", NULL },
		{"MvvmCross_iOS_Views_MvxPageViewController_1", "MvvmCross.iOS.Views.MvxPageViewController`1, MvvmCross.iOS", NULL },
		{"MvvmCross_iOS_Views_MvxUIRefreshControl", "MvvmCross.iOS.Views.MvxUIRefreshControl, MvvmCross.iOS", NULL },
		{ NULL, NULL, NULL },
	};

	static const char *__xamarin_registration_assemblies []= {
		"EmployeeManagementSystem.Touch", 
		"Xamarin.iOS", 
		"mscorlib", 
		"System", 
		"System.Core", 
		"SQLite.Net.Async", 
		"SQLite.Net", 
		"EmployeeManagementSystem", 
		"MvvmCross.Plugins.Messenger", 
		"MvvmCross.Platform", 
		"MvvmCross.Plugins.File", 
		"MvvmCross.Core", 
		"MvvmCross.Plugins.PictureChooser", 
		"TPKeyboardAvoiding", 
		"MvvmCross.Binding.iOS", 
		"MvvmCross.Binding", 
		"MvvmCross.Localization", 
		"MvvmCross.Platform.iOS", 
		"MvvmCross.iOS", 
		"SQLite.Net.Platform.XamarinIOS.Unified", 
		"MvvmCross.Plugins.File.iOS", 
		"MvvmCross.Plugins.DownloadCache", 
		"System.Collections.Immutable", 
		"MvvmCross.Plugins.DownloadCache.iOS", 
		"MvvmCross.Plugins.PictureChooser.iOS"
	};

	static struct MTRegistrationMap __xamarin_registration_map = {
		NULL,
		__xamarin_registration_assemblies,
		__xamarin_class_map,
		25,
		154,
		60
	};

void xamarin_create_classes () {
	__xamarin_class_map [0].handle = objc_getClass ("NSObject");
	__xamarin_class_map [1].handle = objc_getClass ("UIResponder");
	__xamarin_class_map [2].handle = objc_getClass ("UIViewController");
	__xamarin_class_map [3].handle = objc_getClass ("UIView");
	__xamarin_class_map [4].handle = objc_getClass ("UITableViewCell");
	__xamarin_class_map [5].handle = objc_getClass ("NSIndexPath");
	__xamarin_class_map [6].handle = objc_getClass ("UIFocusAnimationCoordinator");
	__xamarin_class_map [7].handle = objc_getClass ("UIFocusUpdateContext");
	__xamarin_class_map [8].handle = objc_getClass ("UIImage");
	__xamarin_class_map [9].handle = objc_getClass ("UIApplication");
	__xamarin_class_map [10].handle = objc_getClass ("UIBarItem");
	__xamarin_class_map [11].handle = objc_getClass ("UIBarButtonItem");
	__xamarin_class_map [12].handle = objc_getClass ("UIBezierPath");
	__xamarin_class_map [13].handle = objc_getClass ("UIControl");
	__xamarin_class_map [14].handle = objc_getClass ("UIButton");
	__xamarin_class_map [15].handle = objc_getClass ("UICollectionViewLayout");
	__xamarin_class_map [16].handle = objc_getClass ("UICollectionViewLayoutAttributes");
	__xamarin_class_map [17].handle = objc_getClass ("NSArray");
	__xamarin_class_map [18].handle = objc_getClass ("UICollectionViewTransitionLayout");
	__xamarin_class_map [19].handle = objc_getClass ("UIImageView");
	__xamarin_class_map [20].handle = objc_getClass ("NSAttributedString");
	__xamarin_class_map [21].handle = objc_getClass ("UIColor");
	__xamarin_class_map [22].handle = objc_getClass ("UIKit_UIControlEventProxy");
	__xamarin_class_map [23].handle = objc_getClass ("NSBundle");
	__xamarin_class_map [24].handle = objc_getClass ("UIDevice");
	__xamarin_class_map [25].handle = objc_getClass ("NSCalendar");
	__xamarin_class_map [26].handle = objc_getClass ("NSCoder");
	__xamarin_class_map [27].handle = objc_getClass ("NSDate");
	__xamarin_class_map [28].handle = objc_getClass ("UINavigationController");
	__xamarin_class_map [29].handle = objc_getClass ("UIPickerView");
	__xamarin_class_map [30].handle = objc_getClass ("UIScreen");
	__xamarin_class_map [31].handle = objc_getClass ("UISegmentedControl");
	__xamarin_class_map [32].handle = objc_getClass ("NSNull");
	__xamarin_class_map [33].handle = objc_getClass ("NSValue");
	__xamarin_class_map [34].handle = objc_getClass ("NSNumber");
	__xamarin_class_map [35].handle = objc_getClass ("NSRunLoop");
	__xamarin_class_map [36].handle = objc_getClass ("UILabel");
	__xamarin_class_map [37].handle = objc_getClass ("UILocalNotification");
	__xamarin_class_map [38].handle = objc_getClass ("NSString");
	__xamarin_class_map [39].handle = objc_getClass ("NSURL");
	__xamarin_class_map [40].handle = objc_getClass ("UINib");
	__xamarin_class_map [41].handle = objc_getClass ("CALayer");
	__xamarin_class_map [42].handle = objc_getClass ("__MonoMac_NSActionDispatcher");
	__xamarin_class_map [43].handle = objc_getClass ("__MonoMac_NSAsyncActionDispatcher");
	__xamarin_class_map [44].handle = objc_getClass ("NSAutoreleasePool");
	__xamarin_class_map [45].handle = objc_getClass ("NSError");
	__xamarin_class_map [46].handle = objc_getClass ("UIPress");
	__xamarin_class_map [47].handle = objc_getClass ("UIProgressView");
	__xamarin_class_map [48].handle = objc_getClass ("UIRefreshControl");
	__xamarin_class_map [49].handle = objc_getClass ("NSUserActivity");
	__xamarin_class_map [50].handle = objc_getClass ("UISlider");
	__xamarin_class_map [51].handle = objc_getClass ("UIStepper");
	__xamarin_class_map [52].handle = objc_getClass ("UIStoryboard");
	__xamarin_class_map [53].handle = objc_getClass ("UISwitch");
	__xamarin_class_map [54].handle = objc_getClass ("UITabBar");
	__xamarin_class_map [55].handle = objc_getClass ("UITabBarController");
	__xamarin_class_map [56].handle = objc_getClass ("UITabBarItem");
	__xamarin_class_map [57].handle = objc_getClass ("UITableViewController");
	__xamarin_class_map [58].handle = objc_getClass ("UITableViewFocusUpdateContext");
	__xamarin_class_map [59].handle = objc_getClass ("UITableViewRowAction");
	__xamarin_class_map [60].handle = objc_getClass ("NSDateComponents");
	__xamarin_class_map [61].handle = objc_getClass ("NSException");
	__xamarin_class_map [62].handle = objc_getClass ("NSTextAttachment");
	__xamarin_class_map [63].handle = objc_getClass ("NSTextContainer");
	__xamarin_class_map [64].handle = objc_getClass ("UITextPosition");
	__xamarin_class_map [65].handle = objc_getClass ("UITextRange");
	__xamarin_class_map [66].handle = objc_getClass ("UITextSelectionRect");
	__xamarin_class_map [67].handle = objc_getClass ("UIAlertAction");
	__xamarin_class_map [68].handle = objc_getClass ("UIAlertController");
	__xamarin_class_map [69].handle = objc_getClass ("UITouch");
	__xamarin_class_map [70].handle = objc_getClass ("UITraitCollection");
	__xamarin_class_map [71].handle = objc_getClass ("UIActivityIndicatorView");
	__xamarin_class_map [72].handle = objc_getClass ("UICollectionViewFocusUpdateContext");
	__xamarin_class_map [73].handle = objc_getClass ("UIUserNotificationSettings");
	__xamarin_class_map [74].handle = objc_getClass ("UIDatePicker");
	__xamarin_class_map [75].handle = objc_getClass ("UICollectionReusableView");
	__xamarin_class_map [76].handle = objc_getClass ("UICollectionViewCell");
	__xamarin_class_map [77].handle = objc_getClass ("UICollectionViewController");
	__xamarin_class_map [78].handle = objc_getClass ("UIWindow");
	__xamarin_class_map [79].handle = objc_getClass ("UIApplicationShortcutItem");
	__xamarin_class_map [80].handle = objc_getClass ("UIGestureRecognizer");
	__xamarin_class_map [81].handle = objc_getClass ("UIScrollView");
	__xamarin_class_map [82].handle = objc_getClass ("UICollectionView");
	__xamarin_class_map [83].handle = objc_getClass ("UIImagePickerController");
	__xamarin_class_map [84].handle = objc_getClass ("NSDictionary");
	__xamarin_class_map [85].handle = objc_getClass ("NSMutableDictionary");
	__xamarin_class_map [86].handle = objc_getClass ("NSData");
	__xamarin_class_map [87].handle = objc_getClass ("UITapGestureRecognizer");
	__xamarin_class_map [88].handle = objc_getClass ("UISwipeGestureRecognizer");
	__xamarin_class_map [89].handle = objc_getClass ("UIPageViewController");
	__xamarin_class_map [90].handle = objc_getClass ("UISearchBar");
	__xamarin_class_map [91].handle = objc_getClass ("UITableView");
	__xamarin_class_map [92].handle = objc_getClass ("UITextField");
	__xamarin_class_map [93].handle = objc_getClass ("UITextView");
	__xamarin_class_map [94].handle = [MvvmCross_iOS_Platform_MvxApplicationDelegate class];
	__xamarin_class_map [95].handle = [AppDelegate class];
	__xamarin_class_map [96].handle = [ViewController class];
	__xamarin_class_map [97].handle = [MvvmCross_Platform_iOS_Views_MvxEventSourceViewController class];
	__xamarin_class_map [98].handle = [MvvmCross_iOS_Views_MvxViewController class];
	__xamarin_class_map [99].handle = [MvvmCross_iOS_Views_MvxViewController_1 class];
	__xamarin_class_map [100].handle = [AddEmployeeViewController class];
	__xamarin_class_map [101].handle = [MvvmCross_Binding_iOS_Views_MvxTableViewCell class];
	__xamarin_class_map [102].handle = [employeeTableViewCell class];
	__xamarin_class_map [103].handle = [MvvmCross_Binding_iOS_Views_MvxBaseTableViewSource class];
	__xamarin_class_map [104].handle = [MvvmCross_Binding_iOS_Views_MvxTableViewSource class];
	__xamarin_class_map [105].handle = [EmployeeManagementSystem_Touch_MainViewController_employeeTableViewDataSource class];
	__xamarin_class_map [106].handle = [MainViewController class];
	__xamarin_class_map [107].handle = objc_getClass ("__UIGestureRecognizerToken");
	__xamarin_class_map [108].handle = objc_getClass ("__UIGestureRecognizerParameterlessToken");
	__xamarin_class_map [109].handle = objc_getClass ("__UIGestureRecognizerParametrizedToken");
	__xamarin_class_map [110].handle = objc_getClass ("UIKit_UIView_UIViewAppearance");
	__xamarin_class_map [111].handle = objc_getClass ("UIKit_UIScrollView_UIScrollViewAppearance");
	__xamarin_class_map [112].handle = objc_getClass ("UIKit_UICollectionView_UICollectionViewAppearance");
	__xamarin_class_map [113].handle = objc_getClass ("UIKit_UIImagePickerController__UIImagePickerControllerDelegate");
	__xamarin_class_map [114].handle = objc_getClass ("__UITapGestureRecognizer");
	__xamarin_class_map [115].handle = objc_getClass ("__UISwipeGestureRecognizer");
	__xamarin_class_map [116].handle = objc_getClass ("UIKit_UIPageViewController__UIPageViewControllerDataSource");
	__xamarin_class_map [117].handle = objc_getClass ("UIKit_UISearchBar__UISearchBarDelegate");
	__xamarin_class_map [118].handle = objc_getClass ("UIKit_UITableView_UITableViewAppearance");
	__xamarin_class_map [119].handle = objc_getClass ("UIKit_UITextField__UITextFieldDelegate");
	__xamarin_class_map [120].handle = objc_getClass ("UIKit_UIScrollView__UIScrollViewDelegate");
	__xamarin_class_map [121].handle = objc_getClass ("UIKit_UITextView__UITextViewDelegate");
	__xamarin_class_map [122].handle = objc_getClass ("__NSObject_Disposer");
	__xamarin_class_map [123].handle = [TPKeyboardAvoiding_TPKeyboardAvoidingCollectionView_TPKeyboardAvoidingCollectionViewAppearance class];
	__xamarin_class_map [124].handle = [TPKeyboardAvoidingCollectionView class];
	__xamarin_class_map [125].handle = [TPKeyboardAvoiding_TPKeyboardAvoidingScrollView_TPKeyboardAvoidingScrollViewAppearance class];
	__xamarin_class_map [126].handle = [TPKeyboardAvoidingScrollView class];
	__xamarin_class_map [127].handle = [TPKeyboardAvoiding_TPKeyboardAvoidingTableView_TPKeyboardAvoidingTableViewAppearance class];
	__xamarin_class_map [128].handle = [TPKeyboardAvoidingTableView class];
	__xamarin_class_map [129].handle = [MvvmCross_Binding_iOS_Views_MvxCollectionReusableView class];
	__xamarin_class_map [130].handle = [MvxImageView class];
	__xamarin_class_map [131].handle = [MvvmCross_Binding_iOS_Views_MvxPickerViewModel class];
	__xamarin_class_map [132].handle = [MvvmCross_Binding_iOS_Views_MvxBaseCollectionViewSource class];
	__xamarin_class_map [133].handle = [MvvmCross_Binding_iOS_Views_MvxStandardTableViewCell class];
	__xamarin_class_map [134].handle = [MvvmCross_Binding_iOS_Views_MvxCollectionViewCell class];
	__xamarin_class_map [135].handle = [MvvmCross_Binding_iOS_Views_MvxSimpleTableViewSource class];
	__xamarin_class_map [136].handle = [MvvmCross_Binding_iOS_Views_MvxStandardTableViewSource class];
	__xamarin_class_map [137].handle = [MvvmCross_Binding_iOS_Views_MvxView class];
	__xamarin_class_map [138].handle = [MvvmCross_Binding_iOS_Views_MvxCollectionViewSource class];
	__xamarin_class_map [139].handle = [MvvmCross_Binding_iOS_Views_MvxCollectionViewSourceAnimated class];
	__xamarin_class_map [140].handle = [MvvmCross_Binding_iOS_Views_MvxActionBasedTableViewSource class];
	__xamarin_class_map [141].handle = [MvvmCross_Platform_iOS_Views_MvxEventSourceCollectionViewController class];
	__xamarin_class_map [142].handle = [MvvmCross_Platform_iOS_Views_MvxEventSourceTabBarController class];
	__xamarin_class_map [143].handle = [MvvmCross_Platform_iOS_Views_MvxEventSourceTableViewController class];
	__xamarin_class_map [144].handle = [MvvmCross_Platform_iOS_Views_MvxEventSourcePageViewController class];
	__xamarin_class_map [145].handle = [MvvmCross_iOS_Views_MvxTabBarViewController class];
	__xamarin_class_map [146].handle = [MvvmCross_iOS_Views_MvxTabBarViewController_1 class];
	__xamarin_class_map [147].handle = [MvvmCross_iOS_Views_MvxTableViewController class];
	__xamarin_class_map [148].handle = [MvvmCross_iOS_Views_MvxTableViewController_1 class];
	__xamarin_class_map [149].handle = [MvvmCross_iOS_Views_MvxCollectionViewController class];
	__xamarin_class_map [150].handle = [MvvmCross_iOS_Views_MvxCollectionViewController_1 class];
	__xamarin_class_map [151].handle = [MvvmCross_iOS_Views_MvxPageViewController class];
	__xamarin_class_map [152].handle = [MvvmCross_iOS_Views_MvxPageViewController_1 class];
	__xamarin_class_map [153].handle = [MvvmCross_iOS_Views_MvxUIRefreshControl class];
	xamarin_add_registration_map (&__xamarin_registration_map);
}

