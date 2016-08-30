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
	.asciz "MvvmCross.Localization.dll"
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
	.no_dead_strip MvvmCross_Localization_MvxLanguageConverter_Convert_object_System_Type_object_System_Globalization_CultureInfo
MvvmCross_Localization_MvxLanguageConverter_Convert_object_System_Type_object_System_Globalization_CultureInfo:

	.byte 128,64,45,233,13,112,160,225,48,13,45,233,15,223,77,226,13,176,160,225,24,0,139,229,28,16,139,229,32,32,139,229
	.byte 36,48,139,229,88,224,157,229,40,224,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_MvvmCross_Localization_got - . + 44
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,0,95,160,227,0,224,155,229,88,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,4,224,155,229,0,224,158,229,0,224,155,229,116,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,28,0,155,229,0,64,160,225,4,160,160,225,0,15,90,227,23,0,0,10,0,0,154,229
	.byte 16,0,139,229,180,1,208,225,0,16,159,229,0,0,0,234
	.long mono_aot_MvvmCross_Localization_got - . + 48
	.byte 1,16,159,231,1,0,80,225,14,0,0,58,16,0,155,229,16,0,144,229,0,16,159,229,0,0,0,234
	.long mono_aot_MvvmCross_Localization_got - . + 48
	.byte 1,16,159,231,193,33,160,225,2,0,128,224,0,0,208,229,112,34,1,226,64,19,160,227,17,18,160,225,1,0,0,224
	.byte 0,15,80,227,2,0,0,26,64,3,160,227,20,0,139,229,1,0,0,234,0,15,160,227,20,0,139,229,20,0,155,229
	.byte 0,15,80,227,3,0,0,10,0,15,160,227,0,15,160,227,12,0,139,229,1,0,0,234,4,0,160,225,12,64,139,229
	.byte 12,0,155,229,8,0,139,229,0,80,160,225,0,224,155,229,64,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 5,0,160,225,0,15,85,227,7,0,0,26,0,224,155,229,96,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 0,15,160,227,0,15,160,227,48,0,0,234,0,224,155,229,128,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 36,0,155,229,0,15,80,227,7,0,0,26,0,224,155,229,160,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 0,15,160,227,0,15,160,227,32,0,0,234,0,224,155,229,192,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 5,0,160,225,36,16,155,229,1,0,160,225,0,16,145,229,15,224,160,225,32,240,145,229,52,0,139,229,0,224,155,229
	.byte 240,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,52,16,155,229,5,0,160,225,0,32,149,229,0,128,159,229
	.byte 0,0,0,234
	.long mono_aot_MvvmCross_Localization_got - . + 52
	.byte 8,128,159,231,15,224,160,225,8,240,18,229,48,0,139,229,0,224,155,229,44,226,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,48,0,155,229,0,224,155,229,68,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,15,223,139,226
	.byte 48,13,189,232,128,128,189,232

Lme_1:
.text
	.align 2
	.no_dead_strip MvvmCross_Localization_MvxLanguageConverter__ctor
MvvmCross_Localization_MvxLanguageConverter__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_MvvmCross_Localization_got - . + 56
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,8,0,157,229
bl _p_1

	.byte 0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,108,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_2:
.text
	.align 2
	.no_dead_strip MvvmCross_Localization_MvxLanguageBinder__ctor_System_Type
MvvmCross_Localization_MvxLanguageBinder__ctor_System_Type:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,9,223,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_MvvmCross_Localization_got - . + 60
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,92,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,8,0,157,229,16,0,141,229,12,16,157,229,1,0,160,225,0,16,145,229,15,224,160,225,152,241,145,229
	.byte 20,0,141,229,0,224,157,229,144,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,12,16,157,229,1,0,160,225
	.byte 0,16,145,229,15,224,160,225,84,240,145,229,24,0,141,229,0,224,157,229,188,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,16,0,157,229,20,16,157,229,24,32,157,229
bl _p_2

	.byte 0,224,157,229,224,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,244,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,9,223,141,226,0,1,189,232,128,128,189,232

Lme_7:
.text
	.align 2
	.no_dead_strip MvvmCross_Localization_MvxLanguageBinder__ctor_string_string
MvvmCross_Localization_MvxLanguageBinder__ctor_string_string:

	.byte 128,64,45,233,13,112,160,225,32,1,45,233,6,223,77,226,0,80,160,225,8,16,141,229,12,32,141,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_MvvmCross_Localization_got - . + 64
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,68,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,96,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,5,0,160,225,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,5,0,160,225
	.byte 8,0,157,229,20,0,141,229,8,0,133,229,2,15,133,226
bl _p_3

	.byte 20,0,157,229,0,224,157,229,168,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,5,0,160,225,12,0,157,229
	.byte 16,0,141,229,12,0,133,229,3,15,133,226
bl _p_3

	.byte 16,0,157,229,0,224,157,229,216,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,236,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,6,223,141,226,32,1,189,232,128,128,189,232

Lme_8:
.text
	.align 2
	.no_dead_strip MvvmCross_Localization_MvxLanguageBinder_get_TextProvider
MvvmCross_Localization_MvxLanguageBinder_get_TextProvider:

	.byte 128,64,45,233,13,112,160,225,64,13,45,233,10,223,77,226,13,176,160,225,0,160,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_MvvmCross_Localization_got - . + 68
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,0,15,160,227,8,0,139,229,0,15,160,227
	.byte 12,0,203,229,0,111,160,227,0,224,155,229,84,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,4,224,155,229
	.byte 0,224,158,229,0,224,155,229,112,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,10,0,160,225,16,0,154,229
	.byte 0,15,80,227,9,0,0,10,4,224,155,229,0,224,158,229,0,224,155,229,156,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,10,0,160,225,16,0,154,229,112,0,0,234,4,224,155,229,0,224,158,229,0,224,155,229,196,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,10,0,160,225,8,160,139,229,0,15,160,227,12,0,203,229,8,0,155,229
	.byte 3,31,139,226
bl _p_4

	.byte 0,224,155,229,244,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,10,0,160,225,0,15,90,227,98,0,0,11
	.byte 4,15,138,226,0,16,159,229,0,0,0,234
	.long mono_aot_MvvmCross_Localization_got - . + 72
	.byte 1,16,159,231,1,128,160,225
bl _p_5

	.byte 255,0,0,226,0,224,155,229,52,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,155,229,72,225,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,10,0,160,225,16,0,154,229,0,15,80,227,29,0,0,26,4,224,155,229
	.byte 0,224,158,229,0,224,155,229,116,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_MvvmCross_Localization_got - . -12
	.byte 0,0,159,231,64,19,160,227,64,19,160,227
bl _p_6

	.byte 36,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_MvvmCross_Localization_got - . + 76
	.byte 0,0,159,231
bl _p_7

	.byte 36,16,155,229,32,0,139,229
bl _p_8

	.byte 0,224,155,229,200,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,32,0,155,229
bl _p_9

	.byte 4,224,155,229,0,224,158,229,0,224,155,229,236,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,10,0,160,225
	.byte 16,0,154,229,0,96,160,225,0,0,0,235,17,0,0,234,24,224,139,229,0,224,155,229,24,226,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,12,0,219,229,0,15,80,227,6,0,0,10,8,0,155,229
bl _p_10

	.byte 0,224,155,229,64,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,24,192,155,229,12,240,160,225,4,224,155,229
	.byte 0,224,158,229,0,224,155,229,100,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,6,0,160,225,6,0,160,225
	.byte 0,224,155,229,128,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,10,223,139,226,64,13,189,232,128,128,189,232
	.byte 14,16,160,225,0,0,159,229
bl _p_11

	.byte 68,1,0,0

Lme_9:
.text
	.align 2
	.no_dead_strip MvvmCross_Localization_MvxLanguageBinder_GetText_string
MvvmCross_Localization_MvxLanguageBinder_GetText_string:

	.byte 128,64,45,233,13,112,160,225,64,1,45,233,6,223,77,226,0,96,160,225,8,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_MvvmCross_Localization_got - . + 80
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,92,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,6,0,160,225,6,0,160,225,8,16,150,229,6,0,160,225,12,32,150,229,8,48,157,229,6,0,160,225
	.byte 0,192,150,229,15,224,160,225,56,240,156,229,16,0,141,229,0,224,157,229,156,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,16,0,157,229,0,224,157,229,180,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,6,223,141,226
	.byte 64,1,189,232,128,128,189,232

Lme_a:
.text
	.align 2
	.no_dead_strip MvvmCross_Localization_MvxLanguageBinder_GetText_string_object__
MvvmCross_Localization_MvxLanguageBinder_GetText_string_object__:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,9,223,77,226,8,0,141,229,12,16,141,229,16,32,141,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_MvvmCross_Localization_got - . + 84
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,68,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,96,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,8,32,157,229,12,16,157,229,2,0,160,225,0,32,146,229,15,224,160,225,64,240,146,229,28,0,141,229
	.byte 0,224,157,229,144,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,28,0,157,229,16,16,157,229
bl _p_12

	.byte 24,0,141,229,0,224,157,229,180,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,24,0,157,229,0,224,157,229
	.byte 204,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,9,223,141,226,0,1,189,232,128,128,189,232

Lme_b:
.text
	.align 2
	.no_dead_strip MvvmCross_Localization_MvxLanguageBinder_GetText_string_string_string
MvvmCross_Localization_MvxLanguageBinder_GetText_string_string_string:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,9,223,77,226,8,0,141,229,12,16,141,229,16,32,141,229,20,48,141,229
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_MvvmCross_Localization_got - . + 88
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,72,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,100,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,8,16,157,229,1,0,160,225,0,16,145,229,15,224,160,225,68,240,145,229,28,0,141,229,0,224,157,229
	.byte 144,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,28,192,157,229,12,16,157,229,16,32,157,229,20,48,157,229
	.byte 12,0,160,225,0,192,156,229,0,128,159,229,0,0,0,234
	.long mono_aot_MvvmCross_Localization_got - . + 92
	.byte 8,128,159,231,15,224,160,225,20,240,28,229,24,0,141,229,0,224,157,229,216,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,24,0,157,229,0,224,157,229,240,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,9,223,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_c:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl method_addresses
bl MvvmCross_Localization_MvxLanguageConverter_Convert_object_System_Type_object_System_Globalization_CultureInfo
bl MvvmCross_Localization_MvxLanguageConverter__ctor
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl MvvmCross_Localization_MvxLanguageBinder__ctor_System_Type
bl MvvmCross_Localization_MvxLanguageBinder__ctor_string_string
bl MvvmCross_Localization_MvxLanguageBinder_get_TextProvider
bl MvvmCross_Localization_MvxLanguageBinder_GetText_string
bl MvvmCross_Localization_MvxLanguageBinder_GetText_string_object__
bl MvvmCross_Localization_MvxLanguageBinder_GetText_string_string_string
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

	.byte 53,12,13,0,68,14,8,135,2,72,14,28,132,7,133,6,136,5,138,4,139,3,142,1,68,14,88,68,13,11,3,60
	.byte 2,10,68,13,13,14,28,68,8,4,8,5,8,8,8,10,8,11,14,8,68,11,31,12,13,0,68,14,8,135,2,72
	.byte 14,12,136,3,142,1,68,14,32,2,104,10,68,14,12,68,8,8,14,8,68,11,31,12,13,0,68,14,8,135,2,72
	.byte 14,12,136,3,142,1,68,14,48,2,240,10,68,14,12,68,8,8,14,8,68,11,35,12,13,0,68,14,8,135,2,72
	.byte 14,16,133,4,136,3,142,1,68,14,40,2,232,10,68,14,16,68,8,5,8,8,14,8,68,11,49,12,13,0,68,14
	.byte 8,135,2,72,14,24,134,6,136,5,138,4,139,3,142,1,68,14,64,68,13,11,3,120,2,10,68,13,13,14,24,68
	.byte 8,6,8,8,8,10,8,11,14,8,68,11,35,12,13,0,68,14,8,135,2,72,14,16,134,4,136,3,142,1,68,14
	.byte 40,2,176,10,68,14,16,68,8,6,8,8,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1
	.byte 68,14,48,2,200,10,68,14,12,68,8,8,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1
	.byte 68,14,48,2,236,10,68,14,12,68,8,8,14,8,68,11

.text
	.align 4
plt:
mono_aot_MvvmCross_Localization_plt:
	.no_dead_strip plt_MvvmCross_Platform_Converters_MvxValueConverter__ctor
plt_MvvmCross_Platform_Converters_MvxValueConverter__ctor:
_p_1:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_MvvmCross_Localization_got - . + 108,298
	.no_dead_strip plt_MvvmCross_Localization_MvxLanguageBinder__ctor_string_string
plt_MvvmCross_Localization_MvxLanguageBinder__ctor_string_string:
_p_2:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_MvvmCross_Localization_got - . + 112,303
	.no_dead_strip plt_wrapper_write_barrier_object_wbarrier_noconc_intptr
plt_wrapper_write_barrier_object_wbarrier_noconc_intptr:
_p_3:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_MvvmCross_Localization_got - . + 116,305
	.no_dead_strip plt_System_Threading_Monitor_Enter_object_bool_
plt_System_Threading_Monitor_Enter_object_bool_:
_p_4:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_MvvmCross_Localization_got - . + 120,312
	.no_dead_strip plt_MvvmCross_Platform_Mvx_TryResolve_MvvmCross_Localization_IMvxTextProvider_MvvmCross_Localization_IMvxTextProvider_
plt_MvvmCross_Platform_Mvx_TryResolve_MvvmCross_Localization_IMvxTextProvider_MvvmCross_Localization_IMvxTextProvider_:
_p_5:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_MvvmCross_Localization_got - . + 124,317
	.no_dead_strip plt__jit_icall_mono_helper_ldstr
plt__jit_icall_mono_helper_ldstr:
_p_6:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_MvvmCross_Localization_got - . + 128,329
	.no_dead_strip plt__jit_icall_mono_object_new_fast
plt__jit_icall_mono_object_new_fast:
_p_7:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_MvvmCross_Localization_got - . + 132,349
	.no_dead_strip plt_MvvmCross_Platform_Exceptions_MvxException__ctor_string
plt_MvvmCross_Platform_Exceptions_MvxException__ctor_string:
_p_8:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_MvvmCross_Localization_got - . + 136,372
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_9:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_MvvmCross_Localization_got - . + 140,377
	.no_dead_strip plt_System_Threading_Monitor_Exit_object
plt_System_Threading_Monitor_Exit_object:
_p_10:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_MvvmCross_Localization_got - . + 144,405
	.no_dead_strip plt__jit_icall_mono_arch_throw_corlib_exception
plt__jit_icall_mono_arch_throw_corlib_exception:
_p_11:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_MvvmCross_Localization_got - . + 148,410
	.no_dead_strip plt_string_Format_string_object__
plt_string_Format_string_object__:
_p_12:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_MvvmCross_Localization_got - . + 152,445
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_MvvmCross_Localization_got, 160
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
	.asciz "A2D887D4-8C77-4CD4-B7C3-1F8C6BF795AF"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "MvvmCross.Localization"
.data
	.align 3
_mono_aot_file_info:

	.long 131,0
	.align 2
	.long mono_aot_MvvmCross_Localization_got
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

	.long 27,160,13,14,70,923871743,0,1312
	.long 128,4,4,10,0,14,1976,656
	.long 392,200,0,312,360,256,0,192
	.long 48,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0
	.globl _mono_aot_module_MvvmCross_Localization_info
	.align 2
_mono_aot_module_MvvmCross_Localization_info:
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
	.asciz "MvvmCross_Platform_Converters_MvxValueConverter"

	.byte 8,16
LDIFF_SYM6=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 2,35,0,0,7
	.asciz "MvvmCross_Platform_Converters_MvxValueConverter"

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
	.asciz "MvvmCross_Localization_MvxLanguageConverter"

	.byte 8,16
LDIFF_SYM10=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,35,0,0,7
	.asciz "MvvmCross_Localization_MvxLanguageConverter"

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
LTDIE_4:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 8,16
LDIFF_SYM14=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM14
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM15=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM15
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM16=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM16
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM17=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM17
LTDIE_3:

	.byte 5
	.asciz "System_Type"

	.byte 12,16
LDIFF_SYM18=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM18
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM19=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM19
	.byte 2,35,8,0,7
	.asciz "System_Type"

LDIFF_SYM20=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM20
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM21=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM21
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM22=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM22
LTDIE_7:

	.byte 5
	.asciz "System_ValueType"

	.byte 8,16
LDIFF_SYM23=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM23
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM24=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM24
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM25=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM25
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM26=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM26
LTDIE_6:

	.byte 5
	.asciz "System_Boolean"

	.byte 9,16
LDIFF_SYM27=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM27
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM28=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM28
	.byte 2,35,8,0,7
	.asciz "System_Boolean"

LDIFF_SYM29=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM29
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM30=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM30
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM31=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM31
LTDIE_8:

	.byte 5
	.asciz "System_Int32"

	.byte 12,16
LDIFF_SYM32=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM32
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM33=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM33
	.byte 2,35,8,0,7
	.asciz "System_Int32"

LDIFF_SYM34=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM34
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM35=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM35
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM36=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM36
LTDIE_9:

	.byte 5
	.asciz "System_Globalization_NumberFormatInfo"

	.byte 132,1,16
LDIFF_SYM37=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM37
	.byte 2,35,0,6
	.asciz "numberGroupSizes"

LDIFF_SYM38=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM38
	.byte 2,35,8,6
	.asciz "currencyGroupSizes"

LDIFF_SYM39=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM39
	.byte 2,35,12,6
	.asciz "percentGroupSizes"

LDIFF_SYM40=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM40
	.byte 2,35,16,6
	.asciz "positiveSign"

LDIFF_SYM41=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2,35,20,6
	.asciz "negativeSign"

LDIFF_SYM42=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM42
	.byte 2,35,24,6
	.asciz "numberDecimalSeparator"

LDIFF_SYM43=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM43
	.byte 2,35,28,6
	.asciz "numberGroupSeparator"

LDIFF_SYM44=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,35,32,6
	.asciz "currencyGroupSeparator"

LDIFF_SYM45=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,35,36,6
	.asciz "currencyDecimalSeparator"

LDIFF_SYM46=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM46
	.byte 2,35,40,6
	.asciz "currencySymbol"

LDIFF_SYM47=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM47
	.byte 2,35,44,6
	.asciz "ansiCurrencySymbol"

LDIFF_SYM48=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM48
	.byte 2,35,48,6
	.asciz "nanSymbol"

LDIFF_SYM49=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 2,35,52,6
	.asciz "positiveInfinitySymbol"

LDIFF_SYM50=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,35,56,6
	.asciz "negativeInfinitySymbol"

LDIFF_SYM51=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 2,35,60,6
	.asciz "percentDecimalSeparator"

LDIFF_SYM52=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM52
	.byte 2,35,64,6
	.asciz "percentGroupSeparator"

LDIFF_SYM53=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM53
	.byte 2,35,68,6
	.asciz "percentSymbol"

LDIFF_SYM54=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM54
	.byte 2,35,72,6
	.asciz "perMilleSymbol"

LDIFF_SYM55=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM55
	.byte 2,35,76,6
	.asciz "nativeDigits"

LDIFF_SYM56=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 2,35,80,6
	.asciz "m_dataItem"

LDIFF_SYM57=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM57
	.byte 2,35,84,6
	.asciz "numberDecimalDigits"

LDIFF_SYM58=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM58
	.byte 2,35,88,6
	.asciz "currencyDecimalDigits"

LDIFF_SYM59=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM59
	.byte 2,35,92,6
	.asciz "currencyPositivePattern"

LDIFF_SYM60=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM60
	.byte 2,35,96,6
	.asciz "currencyNegativePattern"

LDIFF_SYM61=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM61
	.byte 2,35,100,6
	.asciz "numberNegativePattern"

LDIFF_SYM62=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM62
	.byte 2,35,104,6
	.asciz "percentPositivePattern"

LDIFF_SYM63=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM63
	.byte 2,35,108,6
	.asciz "percentNegativePattern"

LDIFF_SYM64=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM64
	.byte 2,35,112,6
	.asciz "percentDecimalDigits"

LDIFF_SYM65=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM65
	.byte 2,35,116,6
	.asciz "digitSubstitution"

LDIFF_SYM66=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM66
	.byte 2,35,120,6
	.asciz "isReadOnly"

LDIFF_SYM67=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 2,35,124,6
	.asciz "m_useUserOverride"

LDIFF_SYM68=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2,35,125,6
	.asciz "m_isInvariant"

LDIFF_SYM69=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM69
	.byte 2,35,126,6
	.asciz "validForParseAsNumber"

LDIFF_SYM70=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 2,35,127,6
	.asciz "validForParseAsCurrency"

LDIFF_SYM71=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 3,35,128,1,0,7
	.asciz "System_Globalization_NumberFormatInfo"

LDIFF_SYM72=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM72
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM73=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM73
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM74=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM74
LTDIE_11:

	.byte 5
	.asciz "System_Globalization_CultureData"

	.byte 88,16
LDIFF_SYM75=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 2,35,0,6
	.asciz "sAM1159"

LDIFF_SYM76=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 2,35,8,6
	.asciz "sPM2359"

LDIFF_SYM77=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,35,12,6
	.asciz "sTimeSeparator"

LDIFF_SYM78=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM78
	.byte 2,35,16,6
	.asciz "saLongTimes"

LDIFF_SYM79=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM79
	.byte 2,35,20,6
	.asciz "saShortTimes"

LDIFF_SYM80=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 2,35,24,6
	.asciz "iFirstDayOfWeek"

LDIFF_SYM81=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 2,35,28,6
	.asciz "iFirstWeekOfYear"

LDIFF_SYM82=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 2,35,32,6
	.asciz "waCalendars"

LDIFF_SYM83=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 2,35,36,6
	.asciz "calendars"

LDIFF_SYM84=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM84
	.byte 2,35,40,6
	.asciz "sISO639Language"

LDIFF_SYM85=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM85
	.byte 2,35,44,6
	.asciz "sRealName"

LDIFF_SYM86=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM86
	.byte 2,35,48,6
	.asciz "bUseOverrides"

LDIFF_SYM87=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM87
	.byte 2,35,52,6
	.asciz "calendarId"

LDIFF_SYM88=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM88
	.byte 2,35,56,6
	.asciz "numberIndex"

LDIFF_SYM89=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM89
	.byte 2,35,60,6
	.asciz "iDefaultAnsiCodePage"

LDIFF_SYM90=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM90
	.byte 2,35,64,6
	.asciz "iDefaultOemCodePage"

LDIFF_SYM91=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM91
	.byte 2,35,68,6
	.asciz "iDefaultMacCodePage"

LDIFF_SYM92=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM92
	.byte 2,35,72,6
	.asciz "iDefaultEbcdicCodePage"

LDIFF_SYM93=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 2,35,76,6
	.asciz "isRightToLeft"

LDIFF_SYM94=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM94
	.byte 2,35,80,6
	.asciz "sListSeparator"

LDIFF_SYM95=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM95
	.byte 2,35,84,0,7
	.asciz "System_Globalization_CultureData"

LDIFF_SYM96=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM96
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM97=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM97
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM98=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM98
LTDIE_14:

	.byte 5
	.asciz "System_Globalization_TextInfo"

	.byte 32,16
LDIFF_SYM99=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM99
	.byte 2,35,0,6
	.asciz "m_isReadOnly"

LDIFF_SYM100=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 2,35,24,6
	.asciz "m_cultureName"

LDIFF_SYM101=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM101
	.byte 2,35,8,6
	.asciz "m_cultureData"

LDIFF_SYM102=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM102
	.byte 2,35,12,6
	.asciz "m_textInfoName"

LDIFF_SYM103=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM103
	.byte 2,35,16,6
	.asciz "m_IsAsciiCasingSameAsInvariant"

LDIFF_SYM104=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 2,35,25,6
	.asciz "customCultureName"

LDIFF_SYM105=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM105
	.byte 2,35,20,6
	.asciz "m_win32LangID"

LDIFF_SYM106=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM106
	.byte 2,35,28,0,7
	.asciz "System_Globalization_TextInfo"

LDIFF_SYM107=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM107
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM108=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM108
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM109=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM109
LTDIE_15:

	.byte 5
	.asciz "Mono_Globalization_Unicode_CodePointIndexer"

	.byte 24,16
LDIFF_SYM110=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM110
	.byte 2,35,0,6
	.asciz "ranges"

LDIFF_SYM111=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 2,35,8,6
	.asciz "TotalCount"

LDIFF_SYM112=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM112
	.byte 2,35,12,6
	.asciz "defaultIndex"

LDIFF_SYM113=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM113
	.byte 2,35,16,6
	.asciz "defaultCP"

LDIFF_SYM114=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM114
	.byte 2,35,20,0,7
	.asciz "Mono_Globalization_Unicode_CodePointIndexer"

LDIFF_SYM115=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM115
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM116=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM116
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM117=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM117
LTDIE_13:

	.byte 5
	.asciz "Mono_Globalization_Unicode_SimpleCollator"

	.byte 52,16
LDIFF_SYM118=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM118
	.byte 2,35,0,6
	.asciz "textInfo"

LDIFF_SYM119=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM119
	.byte 2,35,8,6
	.asciz "cjkIndexer"

LDIFF_SYM120=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM120
	.byte 2,35,12,6
	.asciz "contractions"

LDIFF_SYM121=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM121
	.byte 2,35,16,6
	.asciz "level2Maps"

LDIFF_SYM122=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM122
	.byte 2,35,20,6
	.asciz "unsafeFlags"

LDIFF_SYM123=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 2,35,24,6
	.asciz "cjkCatTable"

LDIFF_SYM124=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM124
	.byte 2,35,32,6
	.asciz "cjkLv1Table"

LDIFF_SYM125=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM125
	.byte 2,35,36,6
	.asciz "cjkLv2Table"

LDIFF_SYM126=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM126
	.byte 2,35,40,6
	.asciz "cjkLv2Indexer"

LDIFF_SYM127=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM127
	.byte 2,35,28,6
	.asciz "lcid"

LDIFF_SYM128=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM128
	.byte 2,35,44,6
	.asciz "frenchSort"

LDIFF_SYM129=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM129
	.byte 2,35,48,0,7
	.asciz "Mono_Globalization_Unicode_SimpleCollator"

LDIFF_SYM130=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM130
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM131=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM131
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM132=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM132
LTDIE_12:

	.byte 5
	.asciz "System_Globalization_CompareInfo"

	.byte 36,16
LDIFF_SYM133=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM133
	.byte 2,35,0,6
	.asciz "m_name"

LDIFF_SYM134=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM134
	.byte 2,35,8,6
	.asciz "m_sortName"

LDIFF_SYM135=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,35,12,6
	.asciz "m_dataHandle"

LDIFF_SYM136=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM136
	.byte 2,35,20,6
	.asciz "m_handleOrigin"

LDIFF_SYM137=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM137
	.byte 2,35,24,6
	.asciz "win32LCID"

LDIFF_SYM138=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 2,35,28,6
	.asciz "culture"

LDIFF_SYM139=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM139
	.byte 2,35,32,6
	.asciz "collator"

LDIFF_SYM140=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM140
	.byte 2,35,16,0,7
	.asciz "System_Globalization_CompareInfo"

LDIFF_SYM141=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM141
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM142=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM142
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM143=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM143
LTDIE_16:

	.byte 5
	.asciz "System_Globalization_Calendar"

	.byte 20,16
LDIFF_SYM144=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM144
	.byte 2,35,0,6
	.asciz "m_currentEraValue"

LDIFF_SYM145=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM145
	.byte 2,35,8,6
	.asciz "m_isReadOnly"

LDIFF_SYM146=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM146
	.byte 2,35,12,6
	.asciz "twoDigitYearMax"

LDIFF_SYM147=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM147
	.byte 2,35,16,0,7
	.asciz "System_Globalization_Calendar"

LDIFF_SYM148=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM148
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM149=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM149
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM150=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM150
LTDIE_17:

	.byte 8
	.asciz "System_Globalization_DateTimeFormatFlags"

	.byte 4
LDIFF_SYM151=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM151
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "UseGenitiveMonth"

	.byte 1,9
	.asciz "UseLeapYearMonth"

	.byte 2,9
	.asciz "UseSpacesInMonthNames"

	.byte 4,9
	.asciz "UseHebrewRule"

	.byte 8,9
	.asciz "UseSpacesInDayNames"

	.byte 16,9
	.asciz "UseDigitPrefixInTokens"

	.byte 32,9
	.asciz "NotInitialized"

	.byte 255,255,255,255,15,0,7
	.asciz "System_Globalization_DateTimeFormatFlags"

LDIFF_SYM152=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM152
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM153=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM153
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM154=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM154
LTDIE_10:

	.byte 5
	.asciz "System_Globalization_DateTimeFormatInfo"

	.byte 204,1,16
LDIFF_SYM155=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM155
	.byte 2,35,0,6
	.asciz "m_cultureData"

LDIFF_SYM156=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM156
	.byte 2,35,8,6
	.asciz "m_name"

LDIFF_SYM157=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM157
	.byte 2,35,12,6
	.asciz "m_langName"

LDIFF_SYM158=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM158
	.byte 2,35,16,6
	.asciz "m_compareInfo"

LDIFF_SYM159=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM159
	.byte 2,35,20,6
	.asciz "m_cultureInfo"

LDIFF_SYM160=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM160
	.byte 2,35,24,6
	.asciz "amDesignator"

LDIFF_SYM161=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM161
	.byte 2,35,28,6
	.asciz "pmDesignator"

LDIFF_SYM162=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 2,35,32,6
	.asciz "dateSeparator"

LDIFF_SYM163=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 2,35,36,6
	.asciz "generalShortTimePattern"

LDIFF_SYM164=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM164
	.byte 2,35,40,6
	.asciz "generalLongTimePattern"

LDIFF_SYM165=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM165
	.byte 2,35,44,6
	.asciz "timeSeparator"

LDIFF_SYM166=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM166
	.byte 2,35,48,6
	.asciz "monthDayPattern"

LDIFF_SYM167=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM167
	.byte 2,35,52,6
	.asciz "dateTimeOffsetPattern"

LDIFF_SYM168=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 2,35,56,6
	.asciz "calendar"

LDIFF_SYM169=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 2,35,60,6
	.asciz "firstDayOfWeek"

LDIFF_SYM170=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 3,35,172,1,6
	.asciz "calendarWeekRule"

LDIFF_SYM171=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM171
	.byte 3,35,176,1,6
	.asciz "fullDateTimePattern"

LDIFF_SYM172=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM172
	.byte 2,35,64,6
	.asciz "abbreviatedDayNames"

LDIFF_SYM173=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM173
	.byte 2,35,68,6
	.asciz "m_superShortDayNames"

LDIFF_SYM174=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM174
	.byte 2,35,72,6
	.asciz "dayNames"

LDIFF_SYM175=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM175
	.byte 2,35,76,6
	.asciz "abbreviatedMonthNames"

LDIFF_SYM176=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM176
	.byte 2,35,80,6
	.asciz "monthNames"

LDIFF_SYM177=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM177
	.byte 2,35,84,6
	.asciz "genitiveMonthNames"

LDIFF_SYM178=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM178
	.byte 2,35,88,6
	.asciz "m_genitiveAbbreviatedMonthNames"

LDIFF_SYM179=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM179
	.byte 2,35,92,6
	.asciz "leapYearMonthNames"

LDIFF_SYM180=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM180
	.byte 2,35,96,6
	.asciz "longDatePattern"

LDIFF_SYM181=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM181
	.byte 2,35,100,6
	.asciz "shortDatePattern"

LDIFF_SYM182=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM182
	.byte 2,35,104,6
	.asciz "yearMonthPattern"

LDIFF_SYM183=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM183
	.byte 2,35,108,6
	.asciz "longTimePattern"

LDIFF_SYM184=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM184
	.byte 2,35,112,6
	.asciz "shortTimePattern"

LDIFF_SYM185=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM185
	.byte 2,35,116,6
	.asciz "allYearMonthPatterns"

LDIFF_SYM186=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM186
	.byte 2,35,120,6
	.asciz "allShortDatePatterns"

LDIFF_SYM187=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM187
	.byte 2,35,124,6
	.asciz "allLongDatePatterns"

LDIFF_SYM188=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM188
	.byte 3,35,128,1,6
	.asciz "allShortTimePatterns"

LDIFF_SYM189=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM189
	.byte 3,35,132,1,6
	.asciz "allLongTimePatterns"

LDIFF_SYM190=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM190
	.byte 3,35,136,1,6
	.asciz "m_eraNames"

LDIFF_SYM191=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM191
	.byte 3,35,140,1,6
	.asciz "m_abbrevEraNames"

LDIFF_SYM192=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM192
	.byte 3,35,144,1,6
	.asciz "m_abbrevEnglishEraNames"

LDIFF_SYM193=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM193
	.byte 3,35,148,1,6
	.asciz "optionalCalendars"

LDIFF_SYM194=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM194
	.byte 3,35,152,1,6
	.asciz "m_isReadOnly"

LDIFF_SYM195=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM195
	.byte 3,35,180,1,6
	.asciz "formatFlags"

LDIFF_SYM196=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM196
	.byte 3,35,184,1,6
	.asciz "CultureID"

LDIFF_SYM197=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM197
	.byte 3,35,188,1,6
	.asciz "m_useUserOverride"

LDIFF_SYM198=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM198
	.byte 3,35,192,1,6
	.asciz "bUseCalendarInfo"

LDIFF_SYM199=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM199
	.byte 3,35,193,1,6
	.asciz "nDataItem"

LDIFF_SYM200=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM200
	.byte 3,35,196,1,6
	.asciz "m_isDefaultCalendar"

LDIFF_SYM201=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM201
	.byte 3,35,200,1,6
	.asciz "m_dateWords"

LDIFF_SYM202=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM202
	.byte 3,35,156,1,6
	.asciz "m_fullTimeSpanPositivePattern"

LDIFF_SYM203=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM203
	.byte 3,35,160,1,6
	.asciz "m_fullTimeSpanNegativePattern"

LDIFF_SYM204=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM204
	.byte 3,35,164,1,6
	.asciz "m_dtfiTokenHash"

LDIFF_SYM205=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM205
	.byte 3,35,168,1,0,7
	.asciz "System_Globalization_DateTimeFormatInfo"

LDIFF_SYM206=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM206
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM207=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM207
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM208=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM208
LTDIE_5:

	.byte 5
	.asciz "System_Globalization_CultureInfo"

	.byte 116,16
LDIFF_SYM209=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM209
	.byte 2,35,0,6
	.asciz "m_isReadOnly"

LDIFF_SYM210=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM210
	.byte 2,35,8,6
	.asciz "cultureID"

LDIFF_SYM211=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM211
	.byte 2,35,12,6
	.asciz "parent_lcid"

LDIFF_SYM212=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM212
	.byte 2,35,16,6
	.asciz "datetime_index"

LDIFF_SYM213=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM213
	.byte 2,35,20,6
	.asciz "number_index"

LDIFF_SYM214=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM214
	.byte 2,35,24,6
	.asciz "default_calendar_type"

LDIFF_SYM215=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM215
	.byte 2,35,28,6
	.asciz "m_useUserOverride"

LDIFF_SYM216=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM216
	.byte 2,35,32,6
	.asciz "numInfo"

LDIFF_SYM217=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM217
	.byte 2,35,36,6
	.asciz "dateTimeInfo"

LDIFF_SYM218=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM218
	.byte 2,35,40,6
	.asciz "textInfo"

LDIFF_SYM219=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM219
	.byte 2,35,44,6
	.asciz "m_name"

LDIFF_SYM220=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM220
	.byte 2,35,48,6
	.asciz "englishname"

LDIFF_SYM221=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM221
	.byte 2,35,52,6
	.asciz "nativename"

LDIFF_SYM222=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM222
	.byte 2,35,56,6
	.asciz "iso3lang"

LDIFF_SYM223=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM223
	.byte 2,35,60,6
	.asciz "iso2lang"

LDIFF_SYM224=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM224
	.byte 2,35,64,6
	.asciz "win3lang"

LDIFF_SYM225=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM225
	.byte 2,35,68,6
	.asciz "territory"

LDIFF_SYM226=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM226
	.byte 2,35,72,6
	.asciz "native_calendar_names"

LDIFF_SYM227=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM227
	.byte 2,35,76,6
	.asciz "compareInfo"

LDIFF_SYM228=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM228
	.byte 2,35,80,6
	.asciz "textinfo_data"

LDIFF_SYM229=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM229
	.byte 2,35,84,6
	.asciz "m_dataItem"

LDIFF_SYM230=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM230
	.byte 2,35,88,6
	.asciz "calendar"

LDIFF_SYM231=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM231
	.byte 2,35,92,6
	.asciz "parent_culture"

LDIFF_SYM232=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM232
	.byte 2,35,96,6
	.asciz "constructed"

LDIFF_SYM233=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM233
	.byte 2,35,100,6
	.asciz "cached_serialized_form"

LDIFF_SYM234=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM234
	.byte 2,35,104,6
	.asciz "m_cultureData"

LDIFF_SYM235=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM235
	.byte 2,35,108,6
	.asciz "m_isInherited"

LDIFF_SYM236=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM236
	.byte 2,35,112,0,7
	.asciz "System_Globalization_CultureInfo"

LDIFF_SYM237=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM237
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM238=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM238
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM239=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM239
LTDIE_18:

	.byte 17
	.asciz "MvvmCross_Localization_IMvxLanguageBinder"

	.byte 8,7
	.asciz "MvvmCross_Localization_IMvxLanguageBinder"

LDIFF_SYM240=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM240
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM241=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM241
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM242=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM242
	.byte 2
	.asciz "MvvmCross.Localization.MvxLanguageConverter:Convert"
	.asciz "MvvmCross_Localization_MvxLanguageConverter_Convert_object_System_Type_object_System_Globalization_CultureInfo"

	.byte 1,20
	.long MvvmCross_Localization_MvxLanguageConverter_Convert_object_System_Type_object_System_Globalization_CultureInfo
	.long Lme_1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM243=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM243
	.byte 2,123,24,3
	.asciz "value"

LDIFF_SYM244=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM244
	.byte 2,123,28,3
	.asciz "targetType"

LDIFF_SYM245=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM245
	.byte 2,123,32,3
	.asciz "parameter"

LDIFF_SYM246=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM246
	.byte 2,123,36,3
	.asciz "culture"

LDIFF_SYM247=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM247
	.byte 2,123,40,11
	.asciz "binder"

LDIFF_SYM248=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM248
	.byte 1,85,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM249=Lfde0_end - Lfde0_start
	.long LDIFF_SYM249
Lfde0_start:

	.long 0
	.align 2
	.long MvvmCross_Localization_MvxLanguageConverter_Convert_object_System_Type_object_System_Globalization_CultureInfo

LDIFF_SYM250=Lme_1 - MvvmCross_Localization_MvxLanguageConverter_Convert_object_System_Type_object_System_Globalization_CultureInfo
	.long LDIFF_SYM250
	.byte 68,14,8,135,2,72,14,28,132,7,133,6,136,5,138,4,139,3,142,1,68,14,88,68,13,11,3,60,2,10,68,13
	.byte 13,14,28,68,8,4,8,5,8,8,8,10,8,11,14,8,68,11
	.align 2
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "MvvmCross.Localization.MvxLanguageConverter:.ctor"
	.asciz "MvvmCross_Localization_MvxLanguageConverter__ctor"

	.byte 0,0
	.long MvvmCross_Localization_MvxLanguageConverter__ctor
	.long Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM251=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM251
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM252=Lfde1_end - Lfde1_start
	.long LDIFF_SYM252
Lfde1_start:

	.long 0
	.align 2
	.long MvvmCross_Localization_MvxLanguageConverter__ctor

LDIFF_SYM253=Lme_2 - MvvmCross_Localization_MvxLanguageConverter__ctor
	.long LDIFF_SYM253
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,104,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde1_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_20:

	.byte 17
	.asciz "MvvmCross_Localization_IMvxTextProvider"

	.byte 8,7
	.asciz "MvvmCross_Localization_IMvxTextProvider"

LDIFF_SYM254=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM254
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM255=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM255
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM256=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM256
LTDIE_19:

	.byte 5
	.asciz "MvvmCross_Localization_MvxLanguageBinder"

	.byte 20,16
LDIFF_SYM257=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 2,35,0,6
	.asciz "_namespaceName"

LDIFF_SYM258=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM258
	.byte 2,35,8,6
	.asciz "_typeName"

LDIFF_SYM259=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM259
	.byte 2,35,12,6
	.asciz "_cachedTextProvider"

LDIFF_SYM260=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM260
	.byte 2,35,16,0,7
	.asciz "MvvmCross_Localization_MvxLanguageBinder"

LDIFF_SYM261=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM261
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM262=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM262
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM263=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM263
	.byte 2
	.asciz "MvvmCross.Localization.MvxLanguageBinder:.ctor"
	.asciz "MvvmCross_Localization_MvxLanguageBinder__ctor_System_Type"

	.byte 2,22
	.long MvvmCross_Localization_MvxLanguageBinder__ctor_System_Type
	.long Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM264=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM264
	.byte 2,125,8,3
	.asciz "owningObject"

LDIFF_SYM265=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM265
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM266=Lfde2_end - Lfde2_start
	.long LDIFF_SYM266
Lfde2_start:

	.long 0
	.align 2
	.long MvvmCross_Localization_MvxLanguageBinder__ctor_System_Type

LDIFF_SYM267=Lme_7 - MvvmCross_Localization_MvxLanguageBinder__ctor_System_Type
	.long LDIFF_SYM267
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,48,2,240,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "MvvmCross.Localization.MvxLanguageBinder:.ctor"
	.asciz "MvvmCross_Localization_MvxLanguageBinder__ctor_string_string"

	.byte 2,26
	.long MvvmCross_Localization_MvxLanguageBinder__ctor_string_string
	.long Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM268=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM268
	.byte 1,85,3
	.asciz "namespaceName"

LDIFF_SYM269=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM269
	.byte 2,125,8,3
	.asciz "typeName"

LDIFF_SYM270=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM270
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM271=Lfde3_end - Lfde3_start
	.long LDIFF_SYM271
Lfde3_start:

	.long 0
	.align 2
	.long MvvmCross_Localization_MvxLanguageBinder__ctor_string_string

LDIFF_SYM272=Lme_8 - MvvmCross_Localization_MvxLanguageBinder__ctor_string_string
	.long LDIFF_SYM272
	.byte 68,14,8,135,2,72,14,16,133,4,136,3,142,1,68,14,40,2,232,10,68,14,16,68,8,5,8,8,14,8,68,11
	.align 2
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "MvvmCross.Localization.MvxLanguageBinder:get_TextProvider"
	.asciz "MvvmCross_Localization_MvxLanguageBinder_get_TextProvider"

	.byte 2,38
	.long MvvmCross_Localization_MvxLanguageBinder_get_TextProvider
	.long Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM273=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM273
	.byte 1,90,11
	.asciz ""

LDIFF_SYM274=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM274
	.byte 2,123,8,11
	.asciz ""

LDIFF_SYM275=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM275
	.byte 2,123,12,11
	.asciz ""

LDIFF_SYM276=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM276
	.byte 1,86,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM277=Lfde4_end - Lfde4_start
	.long LDIFF_SYM277
Lfde4_start:

	.long 0
	.align 2
	.long MvvmCross_Localization_MvxLanguageBinder_get_TextProvider

LDIFF_SYM278=Lme_9 - MvvmCross_Localization_MvxLanguageBinder_get_TextProvider
	.long LDIFF_SYM278
	.byte 68,14,8,135,2,72,14,24,134,6,136,5,138,4,139,3,142,1,68,14,64,68,13,11,3,120,2,10,68,13,13,14
	.byte 24,68,8,6,8,8,8,10,8,11,14,8,68,11
	.align 2
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "MvvmCross.Localization.MvxLanguageBinder:GetText"
	.asciz "MvvmCross_Localization_MvxLanguageBinder_GetText_string"

	.byte 2,56
	.long MvvmCross_Localization_MvxLanguageBinder_GetText_string
	.long Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM279=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM279
	.byte 1,86,3
	.asciz "entryKey"

LDIFF_SYM280=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM280
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM281=Lfde5_end - Lfde5_start
	.long LDIFF_SYM281
Lfde5_start:

	.long 0
	.align 2
	.long MvvmCross_Localization_MvxLanguageBinder_GetText_string

LDIFF_SYM282=Lme_a - MvvmCross_Localization_MvxLanguageBinder_GetText_string
	.long LDIFF_SYM282
	.byte 68,14,8,135,2,72,14,16,134,4,136,3,142,1,68,14,40,2,176,10,68,14,16,68,8,6,8,8,14,8,68,11
	.align 2
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "MvvmCross.Localization.MvxLanguageBinder:GetText"
	.asciz "MvvmCross_Localization_MvxLanguageBinder_GetText_string_object__"

	.byte 2,61
	.long MvvmCross_Localization_MvxLanguageBinder_GetText_string_object__
	.long Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM283=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM283
	.byte 2,125,8,3
	.asciz "entryKey"

LDIFF_SYM284=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM284
	.byte 2,125,12,3
	.asciz "args"

LDIFF_SYM285=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM285
	.byte 2,125,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM286=Lfde6_end - Lfde6_start
	.long LDIFF_SYM286
Lfde6_start:

	.long 0
	.align 2
	.long MvvmCross_Localization_MvxLanguageBinder_GetText_string_object__

LDIFF_SYM287=Lme_b - MvvmCross_Localization_MvxLanguageBinder_GetText_string_object__
	.long LDIFF_SYM287
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,48,2,200,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "MvvmCross.Localization.MvxLanguageBinder:GetText"
	.asciz "MvvmCross_Localization_MvxLanguageBinder_GetText_string_string_string"

	.byte 2,67
	.long MvvmCross_Localization_MvxLanguageBinder_GetText_string_string_string
	.long Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM288=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM288
	.byte 2,125,8,3
	.asciz "namespaceKey"

LDIFF_SYM289=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM289
	.byte 2,125,12,3
	.asciz "typeKey"

LDIFF_SYM290=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM290
	.byte 2,125,16,3
	.asciz "entryKey"

LDIFF_SYM291=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM291
	.byte 2,125,20,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM292=Lfde7_end - Lfde7_start
	.long LDIFF_SYM292
Lfde7_start:

	.long 0
	.align 2
	.long MvvmCross_Localization_MvxLanguageBinder_GetText_string_string_string

LDIFF_SYM293=Lme_c - MvvmCross_Localization_MvxLanguageBinder_GetText_string_string_string
	.long LDIFF_SYM293
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,48,2,236,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde7_end:

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

	.byte 0
	.asciz "D:\\git\\MvvmCross\\MvvmCross\\Core\\Localization\\MvxLanguageConverter.cs"

	.byte 0,0,0
	.asciz "D:\\git\\MvvmCross\\MvvmCross\\Core\\Localization\\MvxLanguageBinder.cs"

	.byte 0,0,0
	.asciz "<unknown>"

	.byte 0,0,0,0
Ldebug_line_header_end:
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long MvvmCross_Localization_MvxLanguageConverter_Convert_object_System_Type_object_System_Globalization_CultureInfo

	.byte 4,1,1,10,3,19,2,228,0,1,3,1,2,212,1,1,8,229,8,230,8,229,8,230,2,164,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long MvvmCross_Localization_MvxLanguageBinder__ctor_System_Type

	.byte 4,2,1,10,3,21,2,204,0,1,3,2,2,140,1,1,2,52,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long MvvmCross_Localization_MvxLanguageBinder__ctor_string_string

	.byte 4,2,1,10,3,25,2,208,0,1,8,230,3,1,2,48,1,3,1,2,48,1,2,52,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long MvvmCross_Localization_MvxLanguageBinder_get_TextProvider

	.byte 4,2,1,10,3,37,2,224,0,1,3,1,2,44,1,3,2,2,40,1,3,2,2,56,1,3,1,2,212,0,1,3
	.byte 2,2,36,1,3,3,2,248,0,1,3,2,2,248,0,1,2,212,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long MvvmCross_Localization_MvxLanguageBinder_GetText_string

	.byte 4,2,1,10,3,55,2,204,0,1,2,128,1,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long MvvmCross_Localization_MvxLanguageBinder_GetText_string_object__

	.byte 4,2,1,10,3,60,2,208,0,1,3,1,2,56,1,2,220,0,1,0,1,1
.section __DWARF, __debug_line,regular,debug

	.byte 0,5,2
	.long MvvmCross_Localization_MvxLanguageBinder_GetText_string_string_string

	.byte 4,2,1,10,3,194,0,2,212,0,1,2,180,1,1,0,1,1,0,1,1
Ldebug_line_end:
.text
	.align 3
mem_end:
