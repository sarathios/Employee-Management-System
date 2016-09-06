.subsections_via_symbols
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 4,1
	.asciz "Mono AOT Compiler 4.4.2 (mono-4.4.0-branch-c7sr1/f72fe45 Thu Jul 28 12:04:25 EDT 2016)"
	.asciz "ExternalAppPluginLib.Touch.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,4,5
	.asciz "intptr"
LDIE_U:

	.byte 4,4,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,4,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,4,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,4,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,124,14,12,13,0
	.align 2
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 2
	.no_dead_strip ExternalAppPluginLib_Touch_MvxLaunchAppTask__ctor
ExternalAppPluginLib_Touch_MvxLaunchAppTask__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 44
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,8,0,157,229
bl _p_1

	.byte 0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,108,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_0:
.text
	.align 2
	.no_dead_strip ExternalAppPluginLib_Touch_MvxLaunchAppTask_ShareLink_string
ExternalAppPluginLib_Touch_MvxLaunchAppTask_ShareLink_string:

	.byte 128,64,45,233,13,112,160,225,0,9,45,233,26,223,77,226,13,176,160,225,48,0,139,229,52,16,139,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 48
	.byte 0,0,159,231,8,0,139,229,8,224,155,229,0,224,158,229,12,224,139,229,0,15,160,227,16,0,139,229,0,15,160,227
	.byte 20,0,139,229,0,15,160,227,24,0,139,229,8,224,155,229,92,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 12,224,155,229,0,224,158,229,8,224,155,229,120,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,224,155,229
	.byte 140,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 52
	.byte 0,0,159,231,52,16,155,229,0,32,159,229,0,0,0,234
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 56
	.byte 2,32,159,231
bl _p_2

	.byte 60,0,139,229,8,224,155,229,204,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 60
	.byte 0,0,159,231
bl _p_3

	.byte 60,16,155,229,56,0,139,229
bl _p_4

	.byte 8,224,155,229,0,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,56,0,155,229,16,0,139,229,12,224,155,229
	.byte 0,224,158,229,8,224,155,229,36,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,224,155,229,56,225,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225
bl _p_5

	.byte 60,0,139,229,8,224,155,229,84,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,16,0,155,229,56,0,139,229
	.byte 8,224,155,229,112,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,56,16,155,229,60,32,155,229,2,0,160,225
	.byte 0,32,146,229,15,224,160,225,216,240,146,229,255,0,0,226,8,224,155,229,160,225,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,8,224,155,229,180,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,224,155,229,200,225,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,146,0,0,234,28,0,139,229,20,0,139,229,8,224,155,229,232,225,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,8,224,155,229,252,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 64
	.byte 0,0,159,231,80,0,139,229,16,0,155,229,96,0,139,229,8,224,155,229,44,226,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,96,16,155,229,1,0,160,225,0,16,145,229,15,224,160,225,224,240,145,229,84,0,139,229,8,224,155,229
	.byte 88,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,20,0,155,229,92,0,139,229,8,224,155,229,116,226,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,92,16,155,229,1,0,160,225,0,16,145,229,15,224,160,225,64,240,145,229
	.byte 88,0,139,229,8,224,155,229,160,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,80,0,155,229,84,16,155,229
	.byte 88,32,155,229
bl _p_6

	.byte 8,224,155,229,196,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 68
	.byte 0,0,159,231,64,0,139,229,20,0,155,229,76,0,139,229,8,224,155,229,244,226,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,76,16,155,229,1,0,160,225,0,16,145,229,15,224,160,225,64,240,145,229,68,0,139,229,8,224,155,229
	.byte 32,227,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,15,160,227,0,0,159,229,0,0,0,234
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 72
	.byte 0,0,159,231,72,0,139,229,0,15,160,227,8,224,155,229,80,227,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 76
	.byte 0,0,159,231
bl _p_3

	.byte 64,16,155,229,68,32,155,229,72,192,155,229,60,0,139,229,0,63,160,227,0,192,141,229,0,207,160,227,4,192,141,229
bl _p_7

	.byte 8,224,155,229,156,227,158,229,0,0,94,227,0,224,158,21,0,0,160,225,60,0,155,229,24,0,139,229,8,224,155,229
	.byte 184,227,158,229,0,0,94,227,0,224,158,21,0,0,160,225,24,0,155,229,56,0,139,229,8,224,155,229,212,227,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,56,16,155,229,1,0,160,225,0,16,145,229,15,224,160,225,168,241,145,229
	.byte 8,224,155,229,252,227,158,229,0,0,94,227,0,224,158,21,0,0,160,225
bl _p_8

	.byte 44,0,139,229,0,15,80,227,1,0,0,10,44,0,155,229
bl _p_9

	.byte 255,255,255,234,12,224,155,229,0,224,158,229,8,224,155,229,52,228,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 8,224,155,229,72,228,158,229,0,0,94,227,0,224,158,21,0,0,160,225,26,223,139,226,0,9,189,232,128,128,189,232

Lme_1:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl ExternalAppPluginLib_Touch_MvxLaunchAppTask__ctor
bl ExternalAppPluginLib_Touch_MvxLaunchAppTask_ShareLink_string
bl method_addresses
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,104,10,68,14,12,68,8,8,14,8,68,11
	.byte 41,12,13,0,68,14,8,135,2,72,14,16,136,4,139,3,142,1,68,14,120,68,13,11,3,64,4,10,68,13,13,14
	.byte 16,68,8,8,8,11,14,8,68,11

.text
	.align 4
plt:
mono_aot_ExternalAppPluginLib_Touch_plt:
	.no_dead_strip plt_MvvmCross_Platform_iOS_Platform_MvxIosTask__ctor
plt_MvvmCross_Platform_iOS_Platform_MvxIosTask__ctor:
_p_1:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 92,276
	.no_dead_strip plt_string_Concat_string_string_string
plt_string_Concat_string_string_string:
_p_2:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 96,281
	.no_dead_strip plt__jit_icall_mono_object_new_specific
plt__jit_icall_mono_object_new_specific:
_p_3:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 100,286
	.no_dead_strip plt_Foundation_NSUrl__ctor_string
plt_Foundation_NSUrl__ctor_string:
_p_4:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 104,313
	.no_dead_strip plt_UIKit_UIApplication_get_SharedApplication
plt_UIKit_UIApplication_get_SharedApplication:
_p_5:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 108,318
	.no_dead_strip plt_System_Console_WriteLine_string_object_object
plt_System_Console_WriteLine_string_object_object:
_p_6:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 112,323
	.no_dead_strip plt_UIKit_UIAlertView__ctor_string_string_UIKit_UIAlertViewDelegate_string_string__
plt_UIKit_UIAlertView__ctor_string_string_UIKit_UIAlertViewDelegate_string_string__:
_p_7:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 116,328
	.no_dead_strip plt__jit_icall_mono_thread_get_undeniable_exception
plt__jit_icall_mono_thread_get_undeniable_exception:
_p_8:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 120,333
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_9:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_ExternalAppPluginLib_Touch_got - . + 124,372
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_ExternalAppPluginLib_Touch_got, 132
got_end:
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 2
	.long Lglobals_hash

	.long 0,0
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "20288989-A3CF-4310-8415-251D108C6C0D"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "ExternalAppPluginLib.Touch"
.data
	.align 3
_mono_aot_file_info:

	.long 131,0
	.align 2
	.long mono_aot_ExternalAppPluginLib_Touch_got
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long jit_code_start
	.align 2
	.long jit_code_end
	.align 2
	.long method_addresses
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long mem_end
	.align 2
	.long assembly_guid
	.align 2
	.long runtime_version
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long globals
	.align 2
	.long assembly_name
	.align 2
	.long plt
	.align 2
	.long plt_end
	.align 2
	.long unwind_info
	.align 2
	.long unbox_trampolines
	.align 2
	.long unbox_trampolines_end
	.align 2
	.long unbox_trampoline_addresses

	.long 23,132,10,3,70,923871743,0,803
	.long 128,4,4,10,0,14,1512,696
	.long 336,184,0,280,312,232,0,176
	.long 32,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0
	.globl _mono_aot_module_ExternalAppPluginLib_Touch_info
	.align 2
_mono_aot_module_ExternalAppPluginLib_Touch_info:
	.align 2
	.long _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_2:

	.byte 17
	.asciz "System_Object"

	.byte 8,7
	.asciz "System_Object"

LDIFF_SYM3=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM3
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM4=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM5=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_1:

	.byte 5
	.asciz "MvvmCross_Platform_iOS_Platform_MvxIosTask"

	.byte 8,16
LDIFF_SYM6=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 2,35,0,0,7
	.asciz "MvvmCross_Platform_iOS_Platform_MvxIosTask"

LDIFF_SYM7=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM8=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM9=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_0:

	.byte 5
	.asciz "ExternalAppPluginLib_Touch_MvxLaunchAppTask"

	.byte 8,16
LDIFF_SYM10=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,35,0,0,7
	.asciz "ExternalAppPluginLib_Touch_MvxLaunchAppTask"

LDIFF_SYM11=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM11
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM12=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM12
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM13=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM13
	.byte 2
	.asciz "ExternalAppPluginLib.Touch.MvxLaunchAppTask:.ctor"
	.asciz "ExternalAppPluginLib_Touch_MvxLaunchAppTask__ctor"

	.byte 0,0
	.long ExternalAppPluginLib_Touch_MvxLaunchAppTask__ctor
	.long Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM14=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM14
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM15=Lfde0_end - Lfde0_start
	.long LDIFF_SYM15
Lfde0_start:

	.long 0
	.align 2
	.long ExternalAppPluginLib_Touch_MvxLaunchAppTask__ctor

LDIFF_SYM16=Lme_0 - ExternalAppPluginLib_Touch_MvxLaunchAppTask__ctor
	.long LDIFF_SYM16
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,104,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde0_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_5:

	.byte 8
	.asciz "_Flags"

	.byte 1
LDIFF_SYM17=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM17
	.byte 9
	.asciz "Disposed"

	.byte 1,9
	.asciz "NativeRef"

	.byte 2,9
	.asciz "IsDirectBinding"

	.byte 4,9
	.asciz "RegisteredToggleRef"

	.byte 8,9
	.asciz "InFinalizerQueue"

	.byte 16,9
	.asciz "HasManagedRef"

	.byte 32,0,7
	.asciz "_Flags"

LDIFF_SYM18=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM18
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM19=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM19
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM20=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM20
LTDIE_4:

	.byte 5
	.asciz "Foundation_NSObject"

	.byte 20,16
LDIFF_SYM21=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM21
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM22=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM22
	.byte 2,35,8,6
	.asciz "class_handle"

LDIFF_SYM23=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM23
	.byte 2,35,12,6
	.asciz "flags"

LDIFF_SYM24=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM24
	.byte 2,35,16,0,7
	.asciz "Foundation_NSObject"

LDIFF_SYM25=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM25
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM26=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM26
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM27=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM27
LTDIE_3:

	.byte 5
	.asciz "Foundation_NSUrl"

	.byte 20,16
LDIFF_SYM28=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM28
	.byte 2,35,0,0,7
	.asciz "Foundation_NSUrl"

LDIFF_SYM29=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM29
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM30=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM30
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM31=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM31
LTDIE_8:

	.byte 5
	.asciz "System_ValueType"

	.byte 8,16
LDIFF_SYM32=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM32
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM33=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM33
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM34=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM34
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM35=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM35
LTDIE_7:

	.byte 5
	.asciz "System_Int32"

	.byte 12,16
LDIFF_SYM36=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM36
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM37=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM37
	.byte 2,35,8,0,7
	.asciz "System_Int32"

LDIFF_SYM38=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM39=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM39
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM40=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM40
LTDIE_9:

	.byte 17
	.asciz "System_Collections_IDictionary"

	.byte 8,7
	.asciz "System_Collections_IDictionary"

LDIFF_SYM41=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM41
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM42=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM43=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM43
LTDIE_6:

	.byte 5
	.asciz "System_Exception"

	.byte 64,16
LDIFF_SYM44=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,35,0,6
	.asciz "trace_ips"

LDIFF_SYM45=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,35,8,6
	.asciz "inner_exception"

LDIFF_SYM46=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM46
	.byte 2,35,12,6
	.asciz "_message"

LDIFF_SYM47=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM47
	.byte 2,35,16,6
	.asciz "help_link"

LDIFF_SYM48=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM48
	.byte 2,35,20,6
	.asciz "class_name"

LDIFF_SYM49=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 2,35,24,6
	.asciz "stack_trace"

LDIFF_SYM50=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,35,28,6
	.asciz "_remoteStackTraceString"

LDIFF_SYM51=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 2,35,32,6
	.asciz "remote_stack_index"

LDIFF_SYM52=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM52
	.byte 2,35,36,6
	.asciz "hresult"

LDIFF_SYM53=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM53
	.byte 2,35,40,6
	.asciz "source"

LDIFF_SYM54=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM54
	.byte 2,35,44,6
	.asciz "_data"

LDIFF_SYM55=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM55
	.byte 2,35,48,6
	.asciz "captured_traces"

LDIFF_SYM56=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 2,35,52,6
	.asciz "native_trace_ips"

LDIFF_SYM57=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM57
	.byte 2,35,56,6
	.asciz "dynamic_methods"

LDIFF_SYM58=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM58
	.byte 2,35,60,0,7
	.asciz "System_Exception"

LDIFF_SYM59=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM59
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM60=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM60
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM61=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM61
LTDIE_12:

	.byte 5
	.asciz "UIKit_UIResponder"

	.byte 20,16
LDIFF_SYM62=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM62
	.byte 2,35,0,0,7
	.asciz "UIKit_UIResponder"

LDIFF_SYM63=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM63
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM64=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM64
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM65=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM65
LTDIE_11:

	.byte 5
	.asciz "UIKit_UIView"

	.byte 24,16
LDIFF_SYM66=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM66
	.byte 2,35,0,6
	.asciz "__mt_PreferredFocusedView_var"

LDIFF_SYM67=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 2,35,20,0,7
	.asciz "UIKit_UIView"

LDIFF_SYM68=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM68
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM69=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM69
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM70=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM70
LTDIE_10:

	.byte 5
	.asciz "UIKit_UIAlertView"

	.byte 28,16
LDIFF_SYM71=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 2,35,0,6
	.asciz "__mt_WeakDelegate_var"

LDIFF_SYM72=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 2,35,24,0,7
	.asciz "UIKit_UIAlertView"

LDIFF_SYM73=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM73
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM74=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM74
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM75=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 2
	.asciz "ExternalAppPluginLib.Touch.MvxLaunchAppTask:ShareLink"
	.asciz "ExternalAppPluginLib_Touch_MvxLaunchAppTask_ShareLink_string"

	.byte 1,13
	.long ExternalAppPluginLib_Touch_MvxLaunchAppTask_ShareLink_string
	.long Lme_1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM76=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 2,123,48,3
	.asciz "username"

LDIFF_SYM77=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,123,52,11
	.asciz "url"

LDIFF_SYM78=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM78
	.byte 2,123,16,11
	.asciz "ex"

LDIFF_SYM79=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM79
	.byte 2,123,20,11
	.asciz "alertView"

LDIFF_SYM80=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 2,123,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM81=Lfde1_end - Lfde1_start
	.long LDIFF_SYM81
Lfde1_start:

	.long 0
	.align 2
	.long ExternalAppPluginLib_Touch_MvxLaunchAppTask_ShareLink_string

LDIFF_SYM82=Lme_1 - ExternalAppPluginLib_Touch_MvxLaunchAppTask_ShareLink_string
	.long LDIFF_SYM82
	.byte 68,14,8,135,2,72,14,16,136,4,139,3,142,1,68,14,120,68,13,11,3,64,4,10,68,13,13,14,16,68,8,8
	.byte 8,11,14,8,68,11
	.align 2
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:

	.long Ldebug_line_end - . -4
	.short 2
	.long Ldebug_line_header_end - . -4
	.byte 1,1,251,14,13,0,1,1,1,1,0,0,0,1,0,0,1
.section __DWARF, __debug_line,regular,debug
	.asciz "/Users/sarath/Documents/ExternalAppPlugin/ExternalAppPluginLib.Touch"

	.byte 0
	.asciz "MvxLaunchAppTask.cs"

	.byte 1,0,0
	.asciz "<unknown>"

	.byte 0,0,0,0
Ldebug_line_header_end:
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long ExternalAppPluginLib_Touch_MvxLaunchAppTask_ShareLink_string

	.byte 4,1,1,10,3,12,2,232,0,1,8,175,3,3,2,144,1,1,8,173,3,1,2,252,0,1,8,61,8,229,8,61
	.byte 3,1,2,200,1,1,3,2,2,244,1,1,3,1,2,196,0,1,3,1,2,48,1,2,60,1,0,1,1,0,1,1
Ldebug_line_end:
.text
	.align 3
mem_end:
