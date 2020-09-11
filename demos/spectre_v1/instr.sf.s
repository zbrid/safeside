	.text
	.file	"instr.cc"
	.file	1 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file	2 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file	3 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdint"
	.file	4 "/usr/include/stdint.h"
	.file	5 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file	6 "/usr/include/string.h"
	.file	7 "/usr/local/google/home/zbrid/sanitizer/llvm-install/llvm-7.0.1/build/lib/clang/7.0.1/include/stddef.h"
	.file	8 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstring"
	.file	9 "/usr/include/stdlib.h"
	.file	10 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/std_abs.h"
	.file	11 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdlib"
	.file	12 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h"
	.file	13 "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h"
	.file	14 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/stdlib.h"
	.globl	_Z28UnwindStackAndSlowlyReturnToPKv # -- Begin function _Z28UnwindStackAndSlowlyReturnToPKv
	.p2align	4, 0x90
	.type	_Z28UnwindStackAndSlowlyReturnToPKv,@function
_Z28UnwindStackAndSlowlyReturnToPKv:    # @_Z28UnwindStackAndSlowlyReturnToPKv
.Lfunc_begin0:
	.file	15 "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1/instr.cc"
	.loc	15 33 0                 # instr.cc:33:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: UnwindStackAndSlowlyReturnTo:address <- $rdi
	#DEBUG_VALUE: UnwindStackAndSlowlyReturnTo:address <- $rdi
	.loc	15 35 3 prologue_end    # instr.cc:35:3
	nopl	42(%rbx)
	subq	$2, instruction_counter
	movq	%rsp, current_rsp
	leaq	specfuzz_rtl_frame, %rsp
	callq	specfuzz_rlbk_serializing
	movq	current_rsp, %rsp
	#APP
	addq	$8, %rsp
popstack:
	addq	$8, %rsp
	cmpq	%rdi, (%rsp)
	jne	popstack
	clflush	(%rsp)
	mfence
	lfence
	retq

	#NO_APP
	.loc	15 98 1                 # instr.cc:98:1
	movq	%rdi, tmp_gpr1
	movq	(%rsp), %rdi
	movq	%rsp, current_rsp
	leaq	specfuzz_rtl_frame, %rsp
	callq	specfuzz_check_code_pointer
	movq	current_rsp, %rsp
	movq	tmp_gpr1, %rdi
	retq
.Ltmp0:
.Lfunc_end0:
	.size	_Z28UnwindStackAndSlowlyReturnToPKv, .Lfunc_end0-_Z28UnwindStackAndSlowlyReturnToPKv
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function asan.module_ctor
	.type	asan.module_ctor,@function
asan.module_ctor:                       # @asan.module_ctor
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	__asan_init
	callq	__asan_version_mismatch_check_v8
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	asan.module_ctor, .Lfunc_end1-asan.module_ctor
	.cfi_endproc
                                        # -- End function
	.section	.init_array.1,"aw",@init_array
	.p2align	3
	.quad	asan.module_ctor
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 7.0.1 (tags/RELEASE_701/final)" # string offset=0
.Linfo_string1:
	.asciz	"instr.cc"              # string offset=45
.Linfo_string2:
	.asciz	"/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1" # string offset=54
.Linfo_string3:
	.asciz	"std"                   # string offset=119
.Linfo_string4:
	.asciz	"signed char"           # string offset=123
.Linfo_string5:
	.asciz	"__int8_t"              # string offset=135
.Linfo_string6:
	.asciz	"int8_t"                # string offset=144
.Linfo_string7:
	.asciz	"short"                 # string offset=151
.Linfo_string8:
	.asciz	"__int16_t"             # string offset=157
.Linfo_string9:
	.asciz	"int16_t"               # string offset=167
.Linfo_string10:
	.asciz	"int"                   # string offset=175
.Linfo_string11:
	.asciz	"__int32_t"             # string offset=179
.Linfo_string12:
	.asciz	"int32_t"               # string offset=189
.Linfo_string13:
	.asciz	"long int"              # string offset=197
.Linfo_string14:
	.asciz	"__int64_t"             # string offset=206
.Linfo_string15:
	.asciz	"int64_t"               # string offset=216
.Linfo_string16:
	.asciz	"int_fast8_t"           # string offset=224
.Linfo_string17:
	.asciz	"int_fast16_t"          # string offset=236
.Linfo_string18:
	.asciz	"int_fast32_t"          # string offset=249
.Linfo_string19:
	.asciz	"int_fast64_t"          # string offset=262
.Linfo_string20:
	.asciz	"__int_least8_t"        # string offset=275
.Linfo_string21:
	.asciz	"int_least8_t"          # string offset=290
.Linfo_string22:
	.asciz	"__int_least16_t"       # string offset=303
.Linfo_string23:
	.asciz	"int_least16_t"         # string offset=319
.Linfo_string24:
	.asciz	"__int_least32_t"       # string offset=333
.Linfo_string25:
	.asciz	"int_least32_t"         # string offset=349
.Linfo_string26:
	.asciz	"__int_least64_t"       # string offset=363
.Linfo_string27:
	.asciz	"int_least64_t"         # string offset=379
.Linfo_string28:
	.asciz	"__intmax_t"            # string offset=393
.Linfo_string29:
	.asciz	"intmax_t"              # string offset=404
.Linfo_string30:
	.asciz	"intptr_t"              # string offset=413
.Linfo_string31:
	.asciz	"unsigned char"         # string offset=422
.Linfo_string32:
	.asciz	"__uint8_t"             # string offset=436
.Linfo_string33:
	.asciz	"uint8_t"               # string offset=446
.Linfo_string34:
	.asciz	"unsigned short"        # string offset=454
.Linfo_string35:
	.asciz	"__uint16_t"            # string offset=469
.Linfo_string36:
	.asciz	"uint16_t"              # string offset=480
.Linfo_string37:
	.asciz	"unsigned int"          # string offset=489
.Linfo_string38:
	.asciz	"__uint32_t"            # string offset=502
.Linfo_string39:
	.asciz	"uint32_t"              # string offset=513
.Linfo_string40:
	.asciz	"long unsigned int"     # string offset=522
.Linfo_string41:
	.asciz	"__uint64_t"            # string offset=540
.Linfo_string42:
	.asciz	"uint64_t"              # string offset=551
.Linfo_string43:
	.asciz	"uint_fast8_t"          # string offset=560
.Linfo_string44:
	.asciz	"uint_fast16_t"         # string offset=573
.Linfo_string45:
	.asciz	"uint_fast32_t"         # string offset=587
.Linfo_string46:
	.asciz	"uint_fast64_t"         # string offset=601
.Linfo_string47:
	.asciz	"__uint_least8_t"       # string offset=615
.Linfo_string48:
	.asciz	"uint_least8_t"         # string offset=631
.Linfo_string49:
	.asciz	"__uint_least16_t"      # string offset=645
.Linfo_string50:
	.asciz	"uint_least16_t"        # string offset=662
.Linfo_string51:
	.asciz	"__uint_least32_t"      # string offset=677
.Linfo_string52:
	.asciz	"uint_least32_t"        # string offset=694
.Linfo_string53:
	.asciz	"__uint_least64_t"      # string offset=709
.Linfo_string54:
	.asciz	"uint_least64_t"        # string offset=726
.Linfo_string55:
	.asciz	"__uintmax_t"           # string offset=741
.Linfo_string56:
	.asciz	"uintmax_t"             # string offset=753
.Linfo_string57:
	.asciz	"uintptr_t"             # string offset=763
.Linfo_string58:
	.asciz	"memchr"                # string offset=773
.Linfo_string59:
	.asciz	"size_t"                # string offset=780
.Linfo_string60:
	.asciz	"memcmp"                # string offset=787
.Linfo_string61:
	.asciz	"memcpy"                # string offset=794
.Linfo_string62:
	.asciz	"memmove"               # string offset=801
.Linfo_string63:
	.asciz	"memset"                # string offset=809
.Linfo_string64:
	.asciz	"strcat"                # string offset=816
.Linfo_string65:
	.asciz	"char"                  # string offset=823
.Linfo_string66:
	.asciz	"strcmp"                # string offset=828
.Linfo_string67:
	.asciz	"strcoll"               # string offset=835
.Linfo_string68:
	.asciz	"strcpy"                # string offset=843
.Linfo_string69:
	.asciz	"strcspn"               # string offset=850
.Linfo_string70:
	.asciz	"strerror"              # string offset=858
.Linfo_string71:
	.asciz	"strlen"                # string offset=867
.Linfo_string72:
	.asciz	"strncat"               # string offset=874
.Linfo_string73:
	.asciz	"strncmp"               # string offset=882
.Linfo_string74:
	.asciz	"strncpy"               # string offset=890
.Linfo_string75:
	.asciz	"strspn"                # string offset=898
.Linfo_string76:
	.asciz	"strtok"                # string offset=905
.Linfo_string77:
	.asciz	"strxfrm"               # string offset=912
.Linfo_string78:
	.asciz	"strchr"                # string offset=920
.Linfo_string79:
	.asciz	"strpbrk"               # string offset=927
.Linfo_string80:
	.asciz	"strrchr"               # string offset=935
.Linfo_string81:
	.asciz	"strstr"                # string offset=943
.Linfo_string82:
	.asciz	"abs"                   # string offset=950
.Linfo_string83:
	.asciz	"div_t"                 # string offset=954
.Linfo_string84:
	.asciz	"quot"                  # string offset=960
.Linfo_string85:
	.asciz	"rem"                   # string offset=965
.Linfo_string86:
	.asciz	"ldiv_t"                # string offset=969
.Linfo_string87:
	.asciz	"abort"                 # string offset=976
.Linfo_string88:
	.asciz	"atexit"                # string offset=982
.Linfo_string89:
	.asciz	"at_quick_exit"         # string offset=989
.Linfo_string90:
	.asciz	"atof"                  # string offset=1003
.Linfo_string91:
	.asciz	"double"                # string offset=1008
.Linfo_string92:
	.asciz	"atoi"                  # string offset=1015
.Linfo_string93:
	.asciz	"atol"                  # string offset=1020
.Linfo_string94:
	.asciz	"bsearch"               # string offset=1025
.Linfo_string95:
	.asciz	"__compar_fn_t"         # string offset=1033
.Linfo_string96:
	.asciz	"calloc"                # string offset=1047
.Linfo_string97:
	.asciz	"div"                   # string offset=1054
.Linfo_string98:
	.asciz	"exit"                  # string offset=1058
.Linfo_string99:
	.asciz	"free"                  # string offset=1063
.Linfo_string100:
	.asciz	"getenv"                # string offset=1068
.Linfo_string101:
	.asciz	"labs"                  # string offset=1075
.Linfo_string102:
	.asciz	"ldiv"                  # string offset=1080
.Linfo_string103:
	.asciz	"malloc"                # string offset=1085
.Linfo_string104:
	.asciz	"mblen"                 # string offset=1092
.Linfo_string105:
	.asciz	"mbstowcs"              # string offset=1098
.Linfo_string106:
	.asciz	"wchar_t"               # string offset=1107
.Linfo_string107:
	.asciz	"mbtowc"                # string offset=1115
.Linfo_string108:
	.asciz	"qsort"                 # string offset=1122
.Linfo_string109:
	.asciz	"quick_exit"            # string offset=1128
.Linfo_string110:
	.asciz	"rand"                  # string offset=1139
.Linfo_string111:
	.asciz	"realloc"               # string offset=1144
.Linfo_string112:
	.asciz	"srand"                 # string offset=1152
.Linfo_string113:
	.asciz	"strtod"                # string offset=1158
.Linfo_string114:
	.asciz	"strtol"                # string offset=1165
.Linfo_string115:
	.asciz	"strtoul"               # string offset=1172
.Linfo_string116:
	.asciz	"system"                # string offset=1180
.Linfo_string117:
	.asciz	"wcstombs"              # string offset=1187
.Linfo_string118:
	.asciz	"wctomb"                # string offset=1196
.Linfo_string119:
	.asciz	"__gnu_cxx"             # string offset=1203
.Linfo_string120:
	.asciz	"long long int"         # string offset=1213
.Linfo_string121:
	.asciz	"lldiv_t"               # string offset=1227
.Linfo_string122:
	.asciz	"_Exit"                 # string offset=1235
.Linfo_string123:
	.asciz	"llabs"                 # string offset=1241
.Linfo_string124:
	.asciz	"lldiv"                 # string offset=1247
.Linfo_string125:
	.asciz	"atoll"                 # string offset=1253
.Linfo_string126:
	.asciz	"strtoll"               # string offset=1259
.Linfo_string127:
	.asciz	"strtoull"              # string offset=1267
.Linfo_string128:
	.asciz	"long long unsigned int" # string offset=1276
.Linfo_string129:
	.asciz	"strtof"                # string offset=1299
.Linfo_string130:
	.asciz	"float"                 # string offset=1306
.Linfo_string131:
	.asciz	"strtold"               # string offset=1312
.Linfo_string132:
	.asciz	"long double"           # string offset=1320
.Linfo_string133:
	.asciz	"_ZN9__gnu_cxx3divExx"  # string offset=1332
.Linfo_string134:
	.asciz	"_ZSt3absg"             # string offset=1353
.Linfo_string135:
	.asciz	"__float128"            # string offset=1363
.Linfo_string136:
	.asciz	"_Z28UnwindStackAndSlowlyReturnToPKv" # string offset=1374
.Linfo_string137:
	.asciz	"UnwindStackAndSlowlyReturnTo" # string offset=1410
.Linfo_string138:
	.asciz	"address"               # string offset=1439
	.section	.debug_abbrev,"",@progbits
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.ascii	"\264B"                 # DW_AT_GNU_pubnames
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	57                      # DW_TAG_namespace
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	8                       # DW_TAG_imported_declaration
	.byte	0                       # DW_CHILDREN_no
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	24                      # DW_AT_import
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	10                      # Abbreviation Code
	.byte	38                      # DW_TAG_const_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
	.byte	55                      # DW_TAG_restrict_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	13                      # Abbreviation Code
	.byte	38                      # DW_TAG_const_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	14                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	0                       # DW_CHILDREN_no
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	16                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	54                      # DW_AT_calling_convention
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	17                      # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	18                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\207\001"              # DW_AT_noreturn
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	19                      # Abbreviation Code
	.byte	21                      # DW_TAG_subroutine_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	20                      # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	21                      # Abbreviation Code
	.byte	21                      # DW_TAG_subroutine_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	22                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\207\001"              # DW_AT_noreturn
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	23                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	24                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	25                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	26                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	3223                    # Length of Unit
	.short	4                       # DWARF version number
	.long	.debug_abbrev           # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0xc90 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	4                       # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0x29f DW_TAG_namespace
	.long	.Linfo_string3          # DW_AT_name
	.byte	3                       # Abbrev [3] 0x2f:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	713                     # DW_AT_import
	.byte	3                       # Abbrev [3] 0x36:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.long	742                     # DW_AT_import
	.byte	3                       # Abbrev [3] 0x3d:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.long	771                     # DW_AT_import
	.byte	3                       # Abbrev [3] 0x44:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
	.long	800                     # DW_AT_import
	.byte	3                       # Abbrev [3] 0x4b:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.long	829                     # DW_AT_import
	.byte	3                       # Abbrev [3] 0x52:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	840                     # DW_AT_import
	.byte	3                       # Abbrev [3] 0x59:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	851                     # DW_AT_import
	.byte	3                       # Abbrev [3] 0x60:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	862                     # DW_AT_import
	.byte	3                       # Abbrev [3] 0x67:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	873                     # DW_AT_import
	.byte	3                       # Abbrev [3] 0x6e:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.long	895                     # DW_AT_import
	.byte	3                       # Abbrev [3] 0x75:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.long	917                     # DW_AT_import
	.byte	3                       # Abbrev [3] 0x7c:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	60                      # DW_AT_decl_line
	.long	939                     # DW_AT_import
	.byte	3                       # Abbrev [3] 0x83:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.long	961                     # DW_AT_import
	.byte	3                       # Abbrev [3] 0x8a:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	63                      # DW_AT_decl_line
	.long	983                     # DW_AT_import
	.byte	3                       # Abbrev [3] 0x91:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	65                      # DW_AT_decl_line
	.long	994                     # DW_AT_import
	.byte	3                       # Abbrev [3] 0x98:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.long	1023                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x9f:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	1052                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xa6:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.long	1081                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xad:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	70                      # DW_AT_decl_line
	.long	1110                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xb4:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	1121                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xbb:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	72                      # DW_AT_decl_line
	.long	1132                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc2:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	1143                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc9:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	1154                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xd0:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.long	1176                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xd7:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	1198                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xde:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.long	1220                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xe5:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	80                      # DW_AT_decl_line
	.long	1242                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xec:0x7 DW_TAG_imported_declaration
	.byte	3                       # DW_AT_decl_file
	.byte	81                      # DW_AT_decl_line
	.long	1264                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xf3:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	1275                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xfa:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.long	1319                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x101:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.long	1346                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x108:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	80                      # DW_AT_decl_line
	.long	1384                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x10f:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	81                      # DW_AT_decl_line
	.long	1411                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x116:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	82                      # DW_AT_decl_line
	.long	1438                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x11d:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	83                      # DW_AT_decl_line
	.long	1492                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x124:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	84                      # DW_AT_decl_line
	.long	1514                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x12b:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	85                      # DW_AT_decl_line
	.long	1536                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x132:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	86                      # DW_AT_decl_line
	.long	1558                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x139:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.long	1581                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x140:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	88                      # DW_AT_decl_line
	.long	1599                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x147:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	89                      # DW_AT_decl_line
	.long	1617                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x14e:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	90                      # DW_AT_decl_line
	.long	1644                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x155:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	91                      # DW_AT_decl_line
	.long	1671                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x15c:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	92                      # DW_AT_decl_line
	.long	1698                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x163:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	93                      # DW_AT_decl_line
	.long	1721                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x16a:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	94                      # DW_AT_decl_line
	.long	1744                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x171:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.long	1771                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x178:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	96                      # DW_AT_decl_line
	.long	1793                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x17f:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	97                      # DW_AT_decl_line
	.long	1816                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x186:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	98                      # DW_AT_decl_line
	.long	1838                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x18d:0x7 DW_TAG_imported_declaration
	.byte	10                      # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.long	1861                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x194:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	127                     # DW_AT_decl_line
	.long	1879                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x19b:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	128                     # DW_AT_decl_line
	.long	1891                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x1a2:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	130                     # DW_AT_decl_line
	.long	1932                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x1a9:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	134                     # DW_AT_decl_line
	.long	1940                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x1b0:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	137                     # DW_AT_decl_line
	.long	1964                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x1b7:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	140                     # DW_AT_decl_line
	.long	1982                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x1be:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.long	2006                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x1c5:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	142                     # DW_AT_decl_line
	.long	2024                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x1cc:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	143                     # DW_AT_decl_line
	.long	2042                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x1d3:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	144                     # DW_AT_decl_line
	.long	2112                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x1da:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	145                     # DW_AT_decl_line
	.long	2135                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x1e1:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	146                     # DW_AT_decl_line
	.long	2158                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x1e8:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	147                     # DW_AT_decl_line
	.long	2172                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x1ef:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	148                     # DW_AT_decl_line
	.long	2186                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x1f6:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	149                     # DW_AT_decl_line
	.long	2204                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x1fd:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	150                     # DW_AT_decl_line
	.long	2222                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x204:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	151                     # DW_AT_decl_line
	.long	2245                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x20b:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	153                     # DW_AT_decl_line
	.long	2263                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x212:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	154                     # DW_AT_decl_line
	.long	2286                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x219:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	155                     # DW_AT_decl_line
	.long	2331                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x220:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	157                     # DW_AT_decl_line
	.long	2359                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x227:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	160                     # DW_AT_decl_line
	.long	2388                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x22e:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	163                     # DW_AT_decl_line
	.long	2402                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x235:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	164                     # DW_AT_decl_line
	.long	2414                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x23c:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	165                     # DW_AT_decl_line
	.long	2437                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x243:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	166                     # DW_AT_decl_line
	.long	2451                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x24a:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	167                     # DW_AT_decl_line
	.long	2483                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x251:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	168                     # DW_AT_decl_line
	.long	2510                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x258:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	169                     # DW_AT_decl_line
	.long	2537                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x25f:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	171                     # DW_AT_decl_line
	.long	2555                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x266:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	172                     # DW_AT_decl_line
	.long	2598                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x26d:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	240                     # DW_AT_decl_line
	.long	2716                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x274:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	242                     # DW_AT_decl_line
	.long	2764                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x27b:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	244                     # DW_AT_decl_line
	.long	2778                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x282:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	245                     # DW_AT_decl_line
	.long	2689                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x289:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	246                     # DW_AT_decl_line
	.long	2796                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x290:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	248                     # DW_AT_decl_line
	.long	2819                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x297:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	249                     # DW_AT_decl_line
	.long	2898                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x29e:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	250                     # DW_AT_decl_line
	.long	2837                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x2a5:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	251                     # DW_AT_decl_line
	.long	2864                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0x2ac:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	252                     # DW_AT_decl_line
	.long	2927                    # DW_AT_import
	.byte	4                       # Abbrev [4] 0x2b3:0x15 DW_TAG_subprogram
	.long	.Linfo_string134        # DW_AT_linkage_name
	.long	.Linfo_string82         # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	103                     # DW_AT_decl_line
	.long	3005                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x2c2:0x5 DW_TAG_formal_parameter
	.long	3005                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x2c9:0xb DW_TAG_typedef
	.long	724                     # DW_AT_type
	.long	.Linfo_string6          # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x2d4:0xb DW_TAG_typedef
	.long	735                     # DW_AT_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x2df:0x7 DW_TAG_base_type
	.long	.Linfo_string4          # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0x2e6:0xb DW_TAG_typedef
	.long	753                     # DW_AT_type
	.long	.Linfo_string9          # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x2f1:0xb DW_TAG_typedef
	.long	764                     # DW_AT_type
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x2fc:0x7 DW_TAG_base_type
	.long	.Linfo_string7          # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0x303:0xb DW_TAG_typedef
	.long	782                     # DW_AT_type
	.long	.Linfo_string12         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x30e:0xb DW_TAG_typedef
	.long	793                     # DW_AT_type
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x319:0x7 DW_TAG_base_type
	.long	.Linfo_string10         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0x320:0xb DW_TAG_typedef
	.long	811                     # DW_AT_type
	.long	.Linfo_string15         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x32b:0xb DW_TAG_typedef
	.long	822                     # DW_AT_type
	.long	.Linfo_string14         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x336:0x7 DW_TAG_base_type
	.long	.Linfo_string13         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0x33d:0xb DW_TAG_typedef
	.long	735                     # DW_AT_type
	.long	.Linfo_string16         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x348:0xb DW_TAG_typedef
	.long	822                     # DW_AT_type
	.long	.Linfo_string17         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	60                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x353:0xb DW_TAG_typedef
	.long	822                     # DW_AT_type
	.long	.Linfo_string18         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	61                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x35e:0xb DW_TAG_typedef
	.long	822                     # DW_AT_type
	.long	.Linfo_string19         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x369:0xb DW_TAG_typedef
	.long	884                     # DW_AT_type
	.long	.Linfo_string21         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x374:0xb DW_TAG_typedef
	.long	724                     # DW_AT_type
	.long	.Linfo_string20         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x37f:0xb DW_TAG_typedef
	.long	906                     # DW_AT_type
	.long	.Linfo_string23         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x38a:0xb DW_TAG_typedef
	.long	753                     # DW_AT_type
	.long	.Linfo_string22         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x395:0xb DW_TAG_typedef
	.long	928                     # DW_AT_type
	.long	.Linfo_string25         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x3a0:0xb DW_TAG_typedef
	.long	782                     # DW_AT_type
	.long	.Linfo_string24         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	56                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x3ab:0xb DW_TAG_typedef
	.long	950                     # DW_AT_type
	.long	.Linfo_string27         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x3b6:0xb DW_TAG_typedef
	.long	811                     # DW_AT_type
	.long	.Linfo_string26         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x3c1:0xb DW_TAG_typedef
	.long	972                     # DW_AT_type
	.long	.Linfo_string29         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	101                     # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x3cc:0xb DW_TAG_typedef
	.long	822                     # DW_AT_type
	.long	.Linfo_string28         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	72                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x3d7:0xb DW_TAG_typedef
	.long	822                     # DW_AT_type
	.long	.Linfo_string30         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x3e2:0xb DW_TAG_typedef
	.long	1005                    # DW_AT_type
	.long	.Linfo_string33         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x3ed:0xb DW_TAG_typedef
	.long	1016                    # DW_AT_type
	.long	.Linfo_string32         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x3f8:0x7 DW_TAG_base_type
	.long	.Linfo_string31         # DW_AT_name
	.byte	8                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0x3ff:0xb DW_TAG_typedef
	.long	1034                    # DW_AT_type
	.long	.Linfo_string36         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x40a:0xb DW_TAG_typedef
	.long	1045                    # DW_AT_type
	.long	.Linfo_string35         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x415:0x7 DW_TAG_base_type
	.long	.Linfo_string34         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0x41c:0xb DW_TAG_typedef
	.long	1063                    # DW_AT_type
	.long	.Linfo_string39         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x427:0xb DW_TAG_typedef
	.long	1074                    # DW_AT_type
	.long	.Linfo_string38         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x432:0x7 DW_TAG_base_type
	.long	.Linfo_string37         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0x439:0xb DW_TAG_typedef
	.long	1092                    # DW_AT_type
	.long	.Linfo_string42         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x444:0xb DW_TAG_typedef
	.long	1103                    # DW_AT_type
	.long	.Linfo_string41         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x44f:0x7 DW_TAG_base_type
	.long	.Linfo_string40         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0x456:0xb DW_TAG_typedef
	.long	1016                    # DW_AT_type
	.long	.Linfo_string43         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x461:0xb DW_TAG_typedef
	.long	1103                    # DW_AT_type
	.long	.Linfo_string44         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x46c:0xb DW_TAG_typedef
	.long	1103                    # DW_AT_type
	.long	.Linfo_string45         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x477:0xb DW_TAG_typedef
	.long	1103                    # DW_AT_type
	.long	.Linfo_string46         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x482:0xb DW_TAG_typedef
	.long	1165                    # DW_AT_type
	.long	.Linfo_string48         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x48d:0xb DW_TAG_typedef
	.long	1005                    # DW_AT_type
	.long	.Linfo_string47         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x498:0xb DW_TAG_typedef
	.long	1187                    # DW_AT_type
	.long	.Linfo_string50         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x4a3:0xb DW_TAG_typedef
	.long	1034                    # DW_AT_type
	.long	.Linfo_string49         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x4ae:0xb DW_TAG_typedef
	.long	1209                    # DW_AT_type
	.long	.Linfo_string52         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x4b9:0xb DW_TAG_typedef
	.long	1063                    # DW_AT_type
	.long	.Linfo_string51         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x4c4:0xb DW_TAG_typedef
	.long	1231                    # DW_AT_type
	.long	.Linfo_string54         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x4cf:0xb DW_TAG_typedef
	.long	1092                    # DW_AT_type
	.long	.Linfo_string53         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x4da:0xb DW_TAG_typedef
	.long	1253                    # DW_AT_type
	.long	.Linfo_string56         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	102                     # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x4e5:0xb DW_TAG_typedef
	.long	1103                    # DW_AT_type
	.long	.Linfo_string55         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x4f0:0xb DW_TAG_typedef
	.long	1103                    # DW_AT_type
	.long	.Linfo_string57         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	90                      # DW_AT_decl_line
	.byte	8                       # Abbrev [8] 0x4fb:0x1b DW_TAG_subprogram
	.long	.Linfo_string58         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	84                      # DW_AT_decl_line
	.long	1302                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x506:0x5 DW_TAG_formal_parameter
	.long	1302                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x50b:0x5 DW_TAG_formal_parameter
	.long	793                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x510:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x516:0x5 DW_TAG_pointer_type
	.long	1307                    # DW_AT_type
	.byte	10                      # Abbrev [10] 0x51b:0x1 DW_TAG_const_type
	.byte	6                       # Abbrev [6] 0x51c:0xb DW_TAG_typedef
	.long	1103                    # DW_AT_type
	.long	.Linfo_string59         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	8                       # Abbrev [8] 0x527:0x1b DW_TAG_subprogram
	.long	.Linfo_string60         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	64                      # DW_AT_decl_line
	.long	793                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x532:0x5 DW_TAG_formal_parameter
	.long	1302                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x537:0x5 DW_TAG_formal_parameter
	.long	1302                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x53c:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x542:0x1b DW_TAG_subprogram
	.long	.Linfo_string61         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.long	1373                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x54d:0x5 DW_TAG_formal_parameter
	.long	1374                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x552:0x5 DW_TAG_formal_parameter
	.long	1379                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x557:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	11                      # Abbrev [11] 0x55d:0x1 DW_TAG_pointer_type
	.byte	12                      # Abbrev [12] 0x55e:0x5 DW_TAG_restrict_type
	.long	1373                    # DW_AT_type
	.byte	12                      # Abbrev [12] 0x563:0x5 DW_TAG_restrict_type
	.long	1302                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x568:0x1b DW_TAG_subprogram
	.long	.Linfo_string62         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	1373                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x573:0x5 DW_TAG_formal_parameter
	.long	1373                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x578:0x5 DW_TAG_formal_parameter
	.long	1302                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x57d:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x583:0x1b DW_TAG_subprogram
	.long	.Linfo_string63         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	61                      # DW_AT_decl_line
	.long	1373                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x58e:0x5 DW_TAG_formal_parameter
	.long	1373                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x593:0x5 DW_TAG_formal_parameter
	.long	793                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x598:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x59e:0x16 DW_TAG_subprogram
	.long	.Linfo_string64         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	130                     # DW_AT_decl_line
	.long	1460                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x5a9:0x5 DW_TAG_formal_parameter
	.long	1472                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x5ae:0x5 DW_TAG_formal_parameter
	.long	1477                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x5b4:0x5 DW_TAG_pointer_type
	.long	1465                    # DW_AT_type
	.byte	7                       # Abbrev [7] 0x5b9:0x7 DW_TAG_base_type
	.long	.Linfo_string65         # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	12                      # Abbrev [12] 0x5c0:0x5 DW_TAG_restrict_type
	.long	1460                    # DW_AT_type
	.byte	12                      # Abbrev [12] 0x5c5:0x5 DW_TAG_restrict_type
	.long	1482                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x5ca:0x5 DW_TAG_pointer_type
	.long	1487                    # DW_AT_type
	.byte	13                      # Abbrev [13] 0x5cf:0x5 DW_TAG_const_type
	.long	1465                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x5d4:0x16 DW_TAG_subprogram
	.long	.Linfo_string66         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	137                     # DW_AT_decl_line
	.long	793                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x5df:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x5e4:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x5ea:0x16 DW_TAG_subprogram
	.long	.Linfo_string67         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	144                     # DW_AT_decl_line
	.long	793                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x5f5:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x5fa:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x600:0x16 DW_TAG_subprogram
	.long	.Linfo_string68         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	122                     # DW_AT_decl_line
	.long	1460                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x60b:0x5 DW_TAG_formal_parameter
	.long	1472                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x610:0x5 DW_TAG_formal_parameter
	.long	1477                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x616:0x17 DW_TAG_subprogram
	.long	.Linfo_string69         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.short	273                     # DW_AT_decl_line
	.long	1308                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x622:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x627:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x62d:0x12 DW_TAG_subprogram
	.long	.Linfo_string70         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.short	397                     # DW_AT_decl_line
	.long	1460                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x639:0x5 DW_TAG_formal_parameter
	.long	793                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x63f:0x12 DW_TAG_subprogram
	.long	.Linfo_string71         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.short	385                     # DW_AT_decl_line
	.long	1308                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x64b:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x651:0x1b DW_TAG_subprogram
	.long	.Linfo_string72         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	133                     # DW_AT_decl_line
	.long	1460                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x65c:0x5 DW_TAG_formal_parameter
	.long	1472                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x661:0x5 DW_TAG_formal_parameter
	.long	1477                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x666:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x66c:0x1b DW_TAG_subprogram
	.long	.Linfo_string73         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	140                     # DW_AT_decl_line
	.long	793                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x677:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x67c:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x681:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x687:0x1b DW_TAG_subprogram
	.long	.Linfo_string74         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.long	1460                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x692:0x5 DW_TAG_formal_parameter
	.long	1472                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x697:0x5 DW_TAG_formal_parameter
	.long	1477                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x69c:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x6a2:0x17 DW_TAG_subprogram
	.long	.Linfo_string75         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.short	277                     # DW_AT_decl_line
	.long	1308                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x6ae:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x6b3:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x6b9:0x17 DW_TAG_subprogram
	.long	.Linfo_string76         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.short	336                     # DW_AT_decl_line
	.long	1460                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x6c5:0x5 DW_TAG_formal_parameter
	.long	1472                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x6ca:0x5 DW_TAG_formal_parameter
	.long	1477                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x6d0:0x1b DW_TAG_subprogram
	.long	.Linfo_string77         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	147                     # DW_AT_decl_line
	.long	1308                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x6db:0x5 DW_TAG_formal_parameter
	.long	1472                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x6e0:0x5 DW_TAG_formal_parameter
	.long	1477                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x6e5:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x6eb:0x16 DW_TAG_subprogram
	.long	.Linfo_string78         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	219                     # DW_AT_decl_line
	.long	1482                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x6f6:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x6fb:0x5 DW_TAG_formal_parameter
	.long	793                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x701:0x17 DW_TAG_subprogram
	.long	.Linfo_string79         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.short	296                     # DW_AT_decl_line
	.long	1482                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x70d:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x712:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x718:0x16 DW_TAG_subprogram
	.long	.Linfo_string80         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	246                     # DW_AT_decl_line
	.long	1482                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x723:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x728:0x5 DW_TAG_formal_parameter
	.long	793                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x72e:0x17 DW_TAG_subprogram
	.long	.Linfo_string81         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.short	323                     # DW_AT_decl_line
	.long	1482                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x73a:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x73f:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x745:0x12 DW_TAG_subprogram
	.long	.Linfo_string82         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	840                     # DW_AT_decl_line
	.long	793                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x751:0x5 DW_TAG_formal_parameter
	.long	793                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x757:0xb DW_TAG_typedef
	.long	1890                    # DW_AT_type
	.long	.Linfo_string83         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	15                      # Abbrev [15] 0x762:0x1 DW_TAG_structure_type
                                        # DW_AT_declaration
	.byte	6                       # Abbrev [6] 0x763:0xb DW_TAG_typedef
	.long	1902                    # DW_AT_type
	.long	.Linfo_string86         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	70                      # DW_AT_decl_line
	.byte	16                      # Abbrev [16] 0x76e:0x1e DW_TAG_structure_type
	.byte	5                       # DW_AT_calling_convention
	.byte	16                      # DW_AT_byte_size
	.byte	9                       # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.byte	17                      # Abbrev [17] 0x773:0xc DW_TAG_member
	.long	.Linfo_string84         # DW_AT_name
	.long	822                     # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	17                      # Abbrev [17] 0x77f:0xc DW_TAG_member
	.long	.Linfo_string85         # DW_AT_name
	.long	822                     # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.byte	69                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	18                      # Abbrev [18] 0x78c:0x8 DW_TAG_subprogram
	.long	.Linfo_string87         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	591                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	14                      # Abbrev [14] 0x794:0x12 DW_TAG_subprogram
	.long	.Linfo_string88         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	595                     # DW_AT_decl_line
	.long	793                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x7a0:0x5 DW_TAG_formal_parameter
	.long	1958                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x7a6:0x5 DW_TAG_pointer_type
	.long	1963                    # DW_AT_type
	.byte	19                      # Abbrev [19] 0x7ab:0x1 DW_TAG_subroutine_type
	.byte	14                      # Abbrev [14] 0x7ac:0x12 DW_TAG_subprogram
	.long	.Linfo_string89         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	600                     # DW_AT_decl_line
	.long	793                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x7b8:0x5 DW_TAG_formal_parameter
	.long	1958                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x7be:0x11 DW_TAG_subprogram
	.long	.Linfo_string90         # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.long	1999                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x7c9:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0x7cf:0x7 DW_TAG_base_type
	.long	.Linfo_string91         # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	14                      # Abbrev [14] 0x7d6:0x12 DW_TAG_subprogram
	.long	.Linfo_string92         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	361                     # DW_AT_decl_line
	.long	793                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x7e2:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x7e8:0x12 DW_TAG_subprogram
	.long	.Linfo_string93         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	366                     # DW_AT_decl_line
	.long	822                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x7f4:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x7fa:0x25 DW_TAG_subprogram
	.long	.Linfo_string94         # DW_AT_name
	.byte	13                      # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.long	1373                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x805:0x5 DW_TAG_formal_parameter
	.long	1302                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x80a:0x5 DW_TAG_formal_parameter
	.long	1302                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x80f:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x814:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x819:0x5 DW_TAG_formal_parameter
	.long	2079                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	20                      # Abbrev [20] 0x81f:0xc DW_TAG_typedef
	.long	2091                    # DW_AT_type
	.long	.Linfo_string95         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	808                     # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x82b:0x5 DW_TAG_pointer_type
	.long	2096                    # DW_AT_type
	.byte	21                      # Abbrev [21] 0x830:0x10 DW_TAG_subroutine_type
	.long	793                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x835:0x5 DW_TAG_formal_parameter
	.long	1302                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x83a:0x5 DW_TAG_formal_parameter
	.long	1302                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x840:0x17 DW_TAG_subprogram
	.long	.Linfo_string96         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	542                     # DW_AT_decl_line
	.long	1373                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x84c:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x851:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x857:0x17 DW_TAG_subprogram
	.long	.Linfo_string97         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	852                     # DW_AT_decl_line
	.long	1879                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x863:0x5 DW_TAG_formal_parameter
	.long	793                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x868:0x5 DW_TAG_formal_parameter
	.long	793                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	22                      # Abbrev [22] 0x86e:0xe DW_TAG_subprogram
	.long	.Linfo_string98         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	617                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	5                       # Abbrev [5] 0x876:0x5 DW_TAG_formal_parameter
	.long	793                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	23                      # Abbrev [23] 0x87c:0xe DW_TAG_subprogram
	.long	.Linfo_string99         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	565                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x884:0x5 DW_TAG_formal_parameter
	.long	1373                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x88a:0x12 DW_TAG_subprogram
	.long	.Linfo_string100        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	634                     # DW_AT_decl_line
	.long	1460                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x896:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x89c:0x12 DW_TAG_subprogram
	.long	.Linfo_string101        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	841                     # DW_AT_decl_line
	.long	822                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x8a8:0x5 DW_TAG_formal_parameter
	.long	822                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x8ae:0x17 DW_TAG_subprogram
	.long	.Linfo_string102        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	854                     # DW_AT_decl_line
	.long	1891                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x8ba:0x5 DW_TAG_formal_parameter
	.long	822                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x8bf:0x5 DW_TAG_formal_parameter
	.long	822                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x8c5:0x12 DW_TAG_subprogram
	.long	.Linfo_string103        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	539                     # DW_AT_decl_line
	.long	1373                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x8d1:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x8d7:0x17 DW_TAG_subprogram
	.long	.Linfo_string104        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	922                     # DW_AT_decl_line
	.long	793                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x8e3:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x8e8:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x8ee:0x1c DW_TAG_subprogram
	.long	.Linfo_string105        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	933                     # DW_AT_decl_line
	.long	1308                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x8fa:0x5 DW_TAG_formal_parameter
	.long	2314                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x8ff:0x5 DW_TAG_formal_parameter
	.long	1477                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x904:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x90a:0x5 DW_TAG_restrict_type
	.long	2319                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x90f:0x5 DW_TAG_pointer_type
	.long	2324                    # DW_AT_type
	.byte	7                       # Abbrev [7] 0x914:0x7 DW_TAG_base_type
	.long	.Linfo_string106        # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	14                      # Abbrev [14] 0x91b:0x1c DW_TAG_subprogram
	.long	.Linfo_string107        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	925                     # DW_AT_decl_line
	.long	793                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x927:0x5 DW_TAG_formal_parameter
	.long	2314                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x92c:0x5 DW_TAG_formal_parameter
	.long	1477                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x931:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	23                      # Abbrev [23] 0x937:0x1d DW_TAG_subprogram
	.long	.Linfo_string108        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	830                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x93f:0x5 DW_TAG_formal_parameter
	.long	1373                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x944:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x949:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x94e:0x5 DW_TAG_formal_parameter
	.long	2079                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	22                      # Abbrev [22] 0x954:0xe DW_TAG_subprogram
	.long	.Linfo_string109        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	623                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	5                       # Abbrev [5] 0x95c:0x5 DW_TAG_formal_parameter
	.long	793                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	24                      # Abbrev [24] 0x962:0xc DW_TAG_subprogram
	.long	.Linfo_string110        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	453                     # DW_AT_decl_line
	.long	793                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	14                      # Abbrev [14] 0x96e:0x17 DW_TAG_subprogram
	.long	.Linfo_string111        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	550                     # DW_AT_decl_line
	.long	1373                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x97a:0x5 DW_TAG_formal_parameter
	.long	1373                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x97f:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	23                      # Abbrev [23] 0x985:0xe DW_TAG_subprogram
	.long	.Linfo_string112        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	455                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x98d:0x5 DW_TAG_formal_parameter
	.long	1074                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x993:0x16 DW_TAG_subprogram
	.long	.Linfo_string113        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	117                     # DW_AT_decl_line
	.long	1999                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x99e:0x5 DW_TAG_formal_parameter
	.long	1477                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x9a3:0x5 DW_TAG_formal_parameter
	.long	2473                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x9a9:0x5 DW_TAG_restrict_type
	.long	2478                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x9ae:0x5 DW_TAG_pointer_type
	.long	1460                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x9b3:0x1b DW_TAG_subprogram
	.long	.Linfo_string114        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	176                     # DW_AT_decl_line
	.long	822                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x9be:0x5 DW_TAG_formal_parameter
	.long	1477                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x9c3:0x5 DW_TAG_formal_parameter
	.long	2473                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x9c8:0x5 DW_TAG_formal_parameter
	.long	793                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x9ce:0x1b DW_TAG_subprogram
	.long	.Linfo_string115        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	180                     # DW_AT_decl_line
	.long	1103                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x9d9:0x5 DW_TAG_formal_parameter
	.long	1477                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x9de:0x5 DW_TAG_formal_parameter
	.long	2473                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x9e3:0x5 DW_TAG_formal_parameter
	.long	793                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x9e9:0x12 DW_TAG_subprogram
	.long	.Linfo_string116        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	784                     # DW_AT_decl_line
	.long	793                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x9f5:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x9fb:0x1c DW_TAG_subprogram
	.long	.Linfo_string117        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	936                     # DW_AT_decl_line
	.long	1308                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0xa07:0x5 DW_TAG_formal_parameter
	.long	1472                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0xa0c:0x5 DW_TAG_formal_parameter
	.long	2583                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0xa11:0x5 DW_TAG_formal_parameter
	.long	1308                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0xa17:0x5 DW_TAG_restrict_type
	.long	2588                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xa1c:0x5 DW_TAG_pointer_type
	.long	2593                    # DW_AT_type
	.byte	13                      # Abbrev [13] 0xa21:0x5 DW_TAG_const_type
	.long	2324                    # DW_AT_type
	.byte	14                      # Abbrev [14] 0xa26:0x17 DW_TAG_subprogram
	.long	.Linfo_string118        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	929                     # DW_AT_decl_line
	.long	793                     # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0xa32:0x5 DW_TAG_formal_parameter
	.long	1460                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0xa37:0x5 DW_TAG_formal_parameter
	.long	2324                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0xa3d:0x5f DW_TAG_namespace
	.long	.Linfo_string119        # DW_AT_name
	.byte	3                       # Abbrev [3] 0xa42:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	200                     # DW_AT_decl_line
	.long	2716                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xa49:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	206                     # DW_AT_decl_line
	.long	2764                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xa50:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	210                     # DW_AT_decl_line
	.long	2778                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xa57:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	216                     # DW_AT_decl_line
	.long	2796                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xa5e:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	227                     # DW_AT_decl_line
	.long	2819                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xa65:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	228                     # DW_AT_decl_line
	.long	2837                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xa6c:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	229                     # DW_AT_decl_line
	.long	2864                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xa73:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	231                     # DW_AT_decl_line
	.long	2898                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xa7a:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	232                     # DW_AT_decl_line
	.long	2927                    # DW_AT_import
	.byte	4                       # Abbrev [4] 0xa81:0x1a DW_TAG_subprogram
	.long	.Linfo_string133        # DW_AT_linkage_name
	.long	.Linfo_string97         # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	213                     # DW_AT_decl_line
	.long	2716                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0xa90:0x5 DW_TAG_formal_parameter
	.long	2757                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0xa95:0x5 DW_TAG_formal_parameter
	.long	2757                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0xa9c:0xb DW_TAG_typedef
	.long	2727                    # DW_AT_type
	.long	.Linfo_string121        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	80                      # DW_AT_decl_line
	.byte	16                      # Abbrev [16] 0xaa7:0x1e DW_TAG_structure_type
	.byte	5                       # DW_AT_calling_convention
	.byte	16                      # DW_AT_byte_size
	.byte	9                       # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.byte	17                      # Abbrev [17] 0xaac:0xc DW_TAG_member
	.long	.Linfo_string84         # DW_AT_name
	.long	2757                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	17                      # Abbrev [17] 0xab8:0xc DW_TAG_member
	.long	.Linfo_string85         # DW_AT_name
	.long	2757                    # DW_AT_type
	.byte	9                       # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0xac5:0x7 DW_TAG_base_type
	.long	.Linfo_string120        # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	22                      # Abbrev [22] 0xacc:0xe DW_TAG_subprogram
	.long	.Linfo_string122        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	629                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	5                       # Abbrev [5] 0xad4:0x5 DW_TAG_formal_parameter
	.long	793                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0xada:0x12 DW_TAG_subprogram
	.long	.Linfo_string123        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	844                     # DW_AT_decl_line
	.long	2757                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0xae6:0x5 DW_TAG_formal_parameter
	.long	2757                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0xaec:0x17 DW_TAG_subprogram
	.long	.Linfo_string124        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	858                     # DW_AT_decl_line
	.long	2716                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0xaf8:0x5 DW_TAG_formal_parameter
	.long	2757                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0xafd:0x5 DW_TAG_formal_parameter
	.long	2757                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0xb03:0x12 DW_TAG_subprogram
	.long	.Linfo_string125        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.short	373                     # DW_AT_decl_line
	.long	2757                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0xb0f:0x5 DW_TAG_formal_parameter
	.long	1482                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0xb15:0x1b DW_TAG_subprogram
	.long	.Linfo_string126        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	200                     # DW_AT_decl_line
	.long	2757                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0xb20:0x5 DW_TAG_formal_parameter
	.long	1477                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0xb25:0x5 DW_TAG_formal_parameter
	.long	2473                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0xb2a:0x5 DW_TAG_formal_parameter
	.long	793                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0xb30:0x1b DW_TAG_subprogram
	.long	.Linfo_string127        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	205                     # DW_AT_decl_line
	.long	2891                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0xb3b:0x5 DW_TAG_formal_parameter
	.long	1477                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0xb40:0x5 DW_TAG_formal_parameter
	.long	2473                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0xb45:0x5 DW_TAG_formal_parameter
	.long	793                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0xb4b:0x7 DW_TAG_base_type
	.long	.Linfo_string128        # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	8                       # Abbrev [8] 0xb52:0x16 DW_TAG_subprogram
	.long	.Linfo_string129        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	123                     # DW_AT_decl_line
	.long	2920                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0xb5d:0x5 DW_TAG_formal_parameter
	.long	1477                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0xb62:0x5 DW_TAG_formal_parameter
	.long	2473                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0xb68:0x7 DW_TAG_base_type
	.long	.Linfo_string130        # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	8                       # Abbrev [8] 0xb6f:0x16 DW_TAG_subprogram
	.long	.Linfo_string131        # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	126                     # DW_AT_decl_line
	.long	2949                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0xb7a:0x5 DW_TAG_formal_parameter
	.long	1477                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0xb7f:0x5 DW_TAG_formal_parameter
	.long	2473                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0xb85:0x7 DW_TAG_base_type
	.long	.Linfo_string132        # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	16                      # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0xb8c:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.long	1932                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xb93:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.long	1940                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xb9a:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.long	2158                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xba1:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.long	1964                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xba8:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	2388                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xbaf:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.long	1879                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xbb6:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.long	1891                    # DW_AT_import
	.byte	7                       # Abbrev [7] 0xbbd:0x7 DW_TAG_base_type
	.long	.Linfo_string135        # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	16                      # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0xbc4:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	691                     # DW_AT_import
	.byte	3                       # Abbrev [3] 0xbcb:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	1982                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xbd2:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	56                      # DW_AT_decl_line
	.long	2006                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xbd9:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	2024                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xbe0:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.long	2042                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xbe7:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.long	2112                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xbee:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	60                      # DW_AT_decl_line
	.long	2689                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xbf5:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	61                      # DW_AT_decl_line
	.long	2172                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xbfc:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.long	2186                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc03:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	63                      # DW_AT_decl_line
	.long	2204                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc0a:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	64                      # DW_AT_decl_line
	.long	2222                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc11:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	65                      # DW_AT_decl_line
	.long	2245                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc18:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	2263                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc1f:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.long	2286                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc26:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	69                      # DW_AT_decl_line
	.long	2331                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc2d:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	2359                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc34:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	72                      # DW_AT_decl_line
	.long	2402                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc3b:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	2414                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc42:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	2437                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc49:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	2451                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc50:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.long	2483                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc57:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	2510                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc5e:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.long	2537                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc65:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	80                      # DW_AT_decl_line
	.long	2555                    # DW_AT_import
	.byte	3                       # Abbrev [3] 0xc6c:0x7 DW_TAG_imported_declaration
	.byte	14                      # DW_AT_decl_file
	.byte	81                      # DW_AT_decl_line
	.long	2598                    # DW_AT_import
	.byte	25                      # Abbrev [25] 0xc73:0x27 DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string136        # DW_AT_linkage_name
	.long	.Linfo_string137        # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
                                        # DW_AT_external
	.byte	26                      # Abbrev [26] 0xc8c:0xd DW_TAG_formal_parameter
	.byte	1                       # DW_AT_location
	.byte	85
	.long	.Linfo_string138        # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.long	1302                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.section	.debug_macinfo,"",@progbits
	.byte	0                       # End Of Macro List Mark
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_begin0 # Length of Public Names Info
.LpubNames_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	3227                    # Compilation Unit Length
	.long	2621                    # DIE offset
	.asciz	"__gnu_cxx"             # External Name
	.long	42                      # DIE offset
	.asciz	"std"                   # External Name
	.long	3187                    # DIE offset
	.asciz	"UnwindStackAndSlowlyReturnTo" # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	3227                    # Compilation Unit Length
	.long	771                     # DIE offset
	.asciz	"int32_t"               # External Name
	.long	961                     # DIE offset
	.asciz	"intmax_t"              # External Name
	.long	811                     # DIE offset
	.asciz	"__int64_t"             # External Name
	.long	1121                    # DIE offset
	.asciz	"uint_fast16_t"         # External Name
	.long	829                     # DIE offset
	.asciz	"int_fast8_t"           # External Name
	.long	994                     # DIE offset
	.asciz	"uint8_t"               # External Name
	.long	884                     # DIE offset
	.asciz	"__int_least8_t"        # External Name
	.long	1187                    # DIE offset
	.asciz	"__uint_least16_t"      # External Name
	.long	840                     # DIE offset
	.asciz	"int_fast16_t"          # External Name
	.long	1103                    # DIE offset
	.asciz	"long unsigned int"     # External Name
	.long	1023                    # DIE offset
	.asciz	"uint16_t"              # External Name
	.long	822                     # DIE offset
	.asciz	"long int"              # External Name
	.long	917                     # DIE offset
	.asciz	"int_least32_t"         # External Name
	.long	950                     # DIE offset
	.asciz	"__int_least64_t"       # External Name
	.long	1092                    # DIE offset
	.asciz	"__uint64_t"            # External Name
	.long	972                     # DIE offset
	.asciz	"__intmax_t"            # External Name
	.long	753                     # DIE offset
	.asciz	"__int16_t"             # External Name
	.long	2079                    # DIE offset
	.asciz	"__compar_fn_t"         # External Name
	.long	800                     # DIE offset
	.asciz	"int64_t"               # External Name
	.long	1264                    # DIE offset
	.asciz	"uintptr_t"             # External Name
	.long	2949                    # DIE offset
	.asciz	"long double"           # External Name
	.long	2716                    # DIE offset
	.asciz	"lldiv_t"               # External Name
	.long	764                     # DIE offset
	.asciz	"short"                 # External Name
	.long	1198                    # DIE offset
	.asciz	"uint_least32_t"        # External Name
	.long	983                     # DIE offset
	.asciz	"intptr_t"              # External Name
	.long	1034                    # DIE offset
	.asciz	"__uint16_t"            # External Name
	.long	906                     # DIE offset
	.asciz	"__int_least16_t"       # External Name
	.long	939                     # DIE offset
	.asciz	"int_least64_t"         # External Name
	.long	1165                    # DIE offset
	.asciz	"__uint_least8_t"       # External Name
	.long	1891                    # DIE offset
	.asciz	"ldiv_t"                # External Name
	.long	742                     # DIE offset
	.asciz	"int16_t"               # External Name
	.long	1132                    # DIE offset
	.asciz	"uint_fast32_t"         # External Name
	.long	1074                    # DIE offset
	.asciz	"unsigned int"          # External Name
	.long	2324                    # DIE offset
	.asciz	"wchar_t"               # External Name
	.long	793                     # DIE offset
	.asciz	"int"                   # External Name
	.long	1209                    # DIE offset
	.asciz	"__uint_least32_t"      # External Name
	.long	1308                    # DIE offset
	.asciz	"size_t"                # External Name
	.long	851                     # DIE offset
	.asciz	"int_fast32_t"          # External Name
	.long	1220                    # DIE offset
	.asciz	"uint_least64_t"        # External Name
	.long	713                     # DIE offset
	.asciz	"int8_t"                # External Name
	.long	1253                    # DIE offset
	.asciz	"__uintmax_t"           # External Name
	.long	1110                    # DIE offset
	.asciz	"uint_fast8_t"          # External Name
	.long	735                     # DIE offset
	.asciz	"signed char"           # External Name
	.long	1052                    # DIE offset
	.asciz	"uint32_t"              # External Name
	.long	1879                    # DIE offset
	.asciz	"div_t"                 # External Name
	.long	895                     # DIE offset
	.asciz	"int_least16_t"         # External Name
	.long	1465                    # DIE offset
	.asciz	"char"                  # External Name
	.long	782                     # DIE offset
	.asciz	"__int32_t"             # External Name
	.long	1154                    # DIE offset
	.asciz	"uint_least8_t"         # External Name
	.long	1999                    # DIE offset
	.asciz	"double"                # External Name
	.long	2891                    # DIE offset
	.asciz	"long long unsigned int" # External Name
	.long	1005                    # DIE offset
	.asciz	"__uint8_t"             # External Name
	.long	1143                    # DIE offset
	.asciz	"uint_fast64_t"         # External Name
	.long	2757                    # DIE offset
	.asciz	"long long int"         # External Name
	.long	1045                    # DIE offset
	.asciz	"unsigned short"        # External Name
	.long	873                     # DIE offset
	.asciz	"int_least8_t"          # External Name
	.long	3005                    # DIE offset
	.asciz	"__float128"            # External Name
	.long	1176                    # DIE offset
	.asciz	"uint_least16_t"        # External Name
	.long	1231                    # DIE offset
	.asciz	"__uint_least64_t"      # External Name
	.long	724                     # DIE offset
	.asciz	"__int8_t"              # External Name
	.long	862                     # DIE offset
	.asciz	"int_fast64_t"          # External Name
	.long	1063                    # DIE offset
	.asciz	"__uint32_t"            # External Name
	.long	2920                    # DIE offset
	.asciz	"float"                 # External Name
	.long	928                     # DIE offset
	.asciz	"__int_least32_t"       # External Name
	.long	1242                    # DIE offset
	.asciz	"uintmax_t"             # External Name
	.long	1016                    # DIE offset
	.asciz	"unsigned char"         # External Name
	.long	1081                    # DIE offset
	.asciz	"uint64_t"              # External Name
	.long	0                       # End Mark
.LpubTypes_end0:

	.ident	"clang version 7.0.1 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
