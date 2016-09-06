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
	.asciz "ExternaAppPlugin.dll"
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
	.no_dead_strip ExternaAppPlugin_PluginLoader__ctor
ExternaAppPlugin_PluginLoader__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_ExternaAppPlugin_got - . + 44
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,8,0,157,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 0,224,157,229,104,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_0:
.text
	.align 2
	.no_dead_strip ExternaAppPlugin_PluginLoader_EnsureLoaded
ExternaAppPlugin_PluginLoader_EnsureLoaded:

	.byte 128,64,45,233,13,112,160,225,0,5,45,233,8,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_ExternaAppPlugin_got - . + 48
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,175,160,227,0,224,157,229,64,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,92,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,0,224,157,229,112,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_ExternaAppPlugin_got - . + 52
	.byte 0,0,159,231,0,128,160,225
bl _p_1

	.byte 24,0,141,229,0,224,157,229,160,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,24,0,157,229,20,0,141,229
	.byte 0,160,160,225,0,224,157,229,192,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,20,0,157,229,16,0,141,229
	.byte 0,224,157,229,220,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,16,16,157,229,0,0,159,229,0,0,0,234
	.long mono_aot_ExternaAppPlugin_got - . + 56
	.byte 0,0,159,231,0,32,159,229,0,0,0,234
	.long mono_aot_ExternaAppPlugin_got - . + 60
	.byte 2,32,159,231,1,0,160,225,0,16,145,229,2,128,160,225,15,224,160,225,28,240,17,229,0,224,157,229,40,225,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,60,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 8,223,141,226,0,5,189,232,128,128,189,232

Lme_1:
.text
	.align 2
	.no_dead_strip ExternaAppPlugin_PluginLoader__cctor
ExternaAppPlugin_PluginLoader__cctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,0,0,159,229,0,0,0,234
	.long mono_aot_ExternaAppPlugin_got - . + 64
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,56,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_ExternaAppPlugin_got - . + 68
	.byte 0,0,159,231
bl _p_2

	.byte 8,0,141,229
bl _p_3

	.byte 0,224,157,229,132,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,16,157,229,0,0,159,229,0,0,0,234
	.long mono_aot_ExternaAppPlugin_got - . + 72
	.byte 0,0,159,231,0,16,128,229,0,224,157,229,176,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,5,223,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_2:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl ExternaAppPlugin_PluginLoader__ctor
bl ExternaAppPlugin_PluginLoader_EnsureLoaded
bl ExternaAppPlugin_PluginLoader__cctor
bl method_addresses
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

	.byte 31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,100,10,68,14,12,68,8,8,14,8,68,11
	.byte 36,12,13,0,68,14,8,135,2,72,14,16,136,4,138,3,142,1,68,14,48,3,56,1,10,68,14,16,68,8,8,8
	.byte 10,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,172,10,68,14,12,68,8
	.byte 8,14,8,68,11

.text
	.align 4
plt:
mono_aot_ExternaAppPlugin_plt:
	.no_dead_strip plt_MvvmCross_Platform_Mvx_Resolve_MvvmCross_Platform_Plugins_IMvxPluginManager
plt_MvvmCross_Platform_Mvx_Resolve_MvvmCross_Platform_Plugins_IMvxPluginManager:
_p_1:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_ExternaAppPlugin_got - . + 88,300
	.no_dead_strip plt__jit_icall_mono_object_new_fast
plt__jit_icall_mono_object_new_fast:
_p_2:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_ExternaAppPlugin_got - . + 92,312
	.no_dead_strip plt_ExternaAppPlugin_PluginLoader__ctor
plt_ExternaAppPlugin_PluginLoader__ctor:
_p_3:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_ExternaAppPlugin_got - . + 96,335
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_ExternaAppPlugin_got, 104
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
	.asciz "8F9746FE-4D06-4C55-80FC-50B04F096151"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "ExternaAppPlugin"
.data
	.align 3
_mono_aot_file_info:

	.long 131,0
	.align 2
	.long mono_aot_ExternaAppPlugin_got
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

	.long 22,104,4,5,70,923871743,0,545
	.long 128,4,4,10,0,14,1144,592
	.long 336,184,0,280,312,232,0,176
	.long 32,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0
	.globl _mono_aot_module_ExternaAppPlugin_info
	.align 2
_mono_aot_module_ExternaAppPlugin_info:
	.align 2
	.long _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_1:

	.byte 17
	.asciz "System_Object"

	.byte 8,7
	.asciz "System_Object"

LDIFF_SYM3=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM3
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM4=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM5=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_0:

	.byte 5
	.asciz "ExternaAppPlugin_PluginLoader"

	.byte 8,16
LDIFF_SYM6=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 2,35,0,0,7
	.asciz "ExternaAppPlugin_PluginLoader"

LDIFF_SYM7=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM8=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM9=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM9
	.byte 2
	.asciz "ExternaAppPlugin.PluginLoader:.ctor"
	.asciz "ExternaAppPlugin_PluginLoader__ctor"

	.byte 0,0
	.long ExternaAppPlugin_PluginLoader__ctor
	.long Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM10=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM11=Lfde0_end - Lfde0_start
	.long LDIFF_SYM11
Lfde0_start:

	.long 0
	.align 2
	.long ExternaAppPlugin_PluginLoader__ctor

LDIFF_SYM12=Lme_0 - ExternaAppPlugin_PluginLoader__ctor
	.long LDIFF_SYM12
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,100,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde0_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_2:

	.byte 17
	.asciz "MvvmCross_Platform_Plugins_IMvxPluginManager"

	.byte 8,7
	.asciz "MvvmCross_Platform_Plugins_IMvxPluginManager"

LDIFF_SYM13=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM14=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM15=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM15
	.byte 2
	.asciz "ExternaAppPlugin.PluginLoader:EnsureLoaded"
	.asciz "ExternaAppPlugin_PluginLoader_EnsureLoaded"

	.byte 1,13
	.long ExternaAppPlugin_PluginLoader_EnsureLoaded
	.long Lme_1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM16=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2,125,8,11
	.asciz "manager"

LDIFF_SYM17=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM17
	.byte 1,90,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM18=Lfde1_end - Lfde1_start
	.long LDIFF_SYM18
Lfde1_start:

	.long 0
	.align 2
	.long ExternaAppPlugin_PluginLoader_EnsureLoaded

LDIFF_SYM19=Lme_1 - ExternaAppPlugin_PluginLoader_EnsureLoaded
	.long LDIFF_SYM19
	.byte 68,14,8,135,2,72,14,16,136,4,138,3,142,1,68,14,48,3,56,1,10,68,14,16,68,8,8,8,10,14,8,68
	.byte 11
	.align 2
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "ExternaAppPlugin.PluginLoader:.cctor"
	.asciz "ExternaAppPlugin_PluginLoader__cctor"

	.byte 1,10
	.long ExternaAppPlugin_PluginLoader__cctor
	.long Lme_2

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM20=Lfde2_end - Lfde2_start
	.long LDIFF_SYM20
Lfde2_start:

	.long 0
	.align 2
	.long ExternaAppPlugin_PluginLoader__cctor

LDIFF_SYM21=Lme_2 - ExternaAppPlugin_PluginLoader__cctor
	.long LDIFF_SYM21
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,172,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde2_end:

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
	.asciz "/Users/sarath/Documents/ExternalAppPlugin/ExternaAppPlugin"

	.byte 0
	.asciz "PluginLoader.cs"

	.byte 1,0,0
	.asciz "<unknown>"

	.byte 0,0,0,0
Ldebug_line_header_end:
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long ExternaAppPlugin_PluginLoader_EnsureLoaded

	.byte 4,1,1,10,3,12,2,204,0,1,8,173,3,1,2,208,0,1,3,1,2,232,0,1,2,52,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long ExternaAppPlugin_PluginLoader__cctor

	.byte 4,1,1,10,3,9,2,196,0,1,2,132,1,1,0,1,1,0,1,1
Ldebug_line_end:
.text
	.align 3
mem_end:
