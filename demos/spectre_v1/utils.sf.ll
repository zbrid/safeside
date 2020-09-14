; ModuleID = 'utils.sf.bc'
source_filename = "utils.cc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%struct.cpu_set_t = type { [16 x i64] }

@_ZStL8__ioinit = internal global { %"class.std::ios_base::Init", [63 x i8] } zeroinitializer, align 32, !dbg !0
@__dso_handle = external hidden global i8
@_ZZ23ExtendSpeculationWindowvE6buffer = internal global { [12288 x i8], [3072 x i8] } zeroinitializer, align 32, !dbg !28
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = internal unnamed_addr constant { [27 x i8], [37 x i8] } { [27 x i8] c"CPU affinity setup failed.\00", [37 x i8] zeroinitializer }, align 32
@__asan_option_detect_stack_use_after_return = external global i32
@___asan_gen_ = private unnamed_addr constant [18 x i8] c"1 32 128 6 set:64\00", align 1
@___asan_gen_.1 = private constant [9 x i8] c"utils.cc\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"std::__ioinit\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [67 x i8] c"/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/iostream\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { [67 x i8]*, i32, i32 } { [67 x i8]* @___asan_gen_.3, i32 74, i32 25 }
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [9 x i8] c"utils.cc\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { [9 x i8]*, i32, i32 } { [9 x i8]* @___asan_gen_.6, i32 55, i32 15 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [9 x i8] c"utils.cc\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { [9 x i8]*, i32, i32 } { [9 x i8]* @___asan_gen_.9, i32 69, i32 18 }
@llvm.compiler.used = appending global [3 x i8*] [i8* getelementptr inbounds ({ %"class.std::ios_base::Init", [63 x i8] }, { %"class.std::ios_base::Init", [63 x i8] }* @_ZStL8__ioinit, i32 0, i32 0, i32 0), i8* getelementptr inbounds ({ [12288 x i8], [3072 x i8] }, { [12288 x i8], [3072 x i8] }* @_ZZ23ExtendSpeculationWindowvE6buffer, i32 0, i32 0, i32 0), i8* getelementptr inbounds ({ [27 x i8], [37 x i8] }, { [27 x i8], [37 x i8] }* @.str, i32 0, i32 0, i32 0)], section "llvm.metadata"
@0 = internal global [3 x { i64, i64, i64, i64, i64, i64, i64, i64 }] [{ i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ %"class.std::ios_base::Init", [63 x i8] }* @_ZStL8__ioinit to i64), i64 1, i64 64, i64 ptrtoint ([14 x i8]* @___asan_gen_.2 to i64), i64 ptrtoint ([9 x i8]* @___asan_gen_.1 to i64), i64 1, i64 ptrtoint ({ [67 x i8]*, i32, i32 }* @___asan_gen_.4 to i64), i64 0 }, { i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [12288 x i8], [3072 x i8] }* @_ZZ23ExtendSpeculationWindowvE6buffer to i64), i64 12288, i64 15360, i64 ptrtoint ([7 x i8]* @___asan_gen_.5 to i64), i64 ptrtoint ([9 x i8]* @___asan_gen_.1 to i64), i64 0, i64 ptrtoint ({ [9 x i8]*, i32, i32 }* @___asan_gen_.7 to i64), i64 0 }, { i64, i64, i64, i64, i64, i64, i64, i64 } { i64 ptrtoint ({ [27 x i8], [37 x i8] }* @.str to i64), i64 27, i64 64, i64 ptrtoint ([17 x i8]* @___asan_gen_.8 to i64), i64 ptrtoint ([9 x i8]* @___asan_gen_.1 to i64), i64 0, i64 ptrtoint ({ [9 x i8]*, i32, i32 }* @___asan_gen_.10 to i64), i64 0 }]
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_utils.cc, i8* null }, { i32, void ()*, i8* } { i32 1, void ()* @asan.module_ctor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 1, void ()* @asan.module_dtor, i8* null }]

; Function Attrs: noredzone
declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #0

; Function Attrs: noredzone nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind sanitize_address uwtable
define dso_local void @_Z18FlushFromDataCachePKvS0_(i8* %begin, i8* readnone %end) local_unnamed_addr #3 !dbg !1134 {
entry:
  call void @llvm.dbg.value(metadata i8* %begin, metadata !1138, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i8* %end, metadata !1139, metadata !DIExpression()), !dbg !1141
  %cmp3 = icmp ult i8* %begin, %end, !dbg !1142
  br i1 %cmp3, label %for.body, label %for.end, !dbg !1145

for.body:                                         ; preds = %entry, %for.body
  %begin.addr.04 = phi i8* [ %1, %for.body ], [ %begin, %entry ]
  call void @llvm.dbg.value(metadata i8* %begin.addr.04, metadata !1138, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i8* %begin.addr.04, metadata !1146, metadata !DIExpression()) #2, !dbg !1152
  tail call void @llvm.x86.sse2.clflush(i8* %begin.addr.04) #2, !dbg !1155
  call void @llvm.dbg.value(metadata i8* %begin.addr.04, metadata !1156, metadata !DIExpression()), !dbg !1164
  %0 = ptrtoint i8* %begin.addr.04 to i64, !dbg !1166
  call void @llvm.dbg.value(metadata i64 %0, metadata !1162, metadata !DIExpression()), !dbg !1167
  %add.i = add i64 %0, 64, !dbg !1168
  %and.i = and i64 %add.i, -64, !dbg !1169
  call void @llvm.dbg.value(metadata i64 %and.i, metadata !1163, metadata !DIExpression()), !dbg !1170
  %1 = inttoptr i64 %and.i to i8*, !dbg !1171
  call void @llvm.dbg.value(metadata i8* %1, metadata !1138, metadata !DIExpression()), !dbg !1140
  %cmp = icmp ult i8* %1, %end, !dbg !1142
  br i1 %cmp, label %for.body, label %for.end, !dbg !1145, !llvm.loop !1172

for.end:                                          ; preds = %for.body, %entry
  tail call void @llvm.x86.sse2.mfence() #2, !dbg !1178
  ret void, !dbg !1179
}

; Function Attrs: noredzone nounwind sanitize_address uwtable
define dso_local void @_Z23ExtendSpeculationWindowv() local_unnamed_addr #3 !dbg !30 {
entry:
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ({ [12288 x i8], [3072 x i8] }, { [12288 x i8], [3072 x i8] }* @_ZZ23ExtendSpeculationWindowvE6buffer, i32 0, i32 0, i64 4096), metadata !1120, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ({ [12288 x i8], [3072 x i8] }, { [12288 x i8], [3072 x i8] }* @_ZZ23ExtendSpeculationWindowvE6buffer, i32 0, i32 0, i64 4096), metadata !1138, metadata !DIExpression()) #2, !dbg !1181
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ({ [12288 x i8], [3072 x i8] }, { [12288 x i8], [3072 x i8] }* @_ZZ23ExtendSpeculationWindowvE6buffer, i32 0, i32 0, i64 4097), metadata !1139, metadata !DIExpression()) #2, !dbg !1183
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %begin.addr.04.i = phi i8* [ %1, %for.body.i ], [ getelementptr inbounds ({ [12288 x i8], [3072 x i8] }, { [12288 x i8], [3072 x i8] }* @_ZZ23ExtendSpeculationWindowvE6buffer, i32 0, i32 0, i64 4096), %entry ]
  call void @llvm.dbg.value(metadata i8* %begin.addr.04.i, metadata !1138, metadata !DIExpression()) #2, !dbg !1181
  call void @llvm.dbg.value(metadata i8* %begin.addr.04.i, metadata !1146, metadata !DIExpression()) #2, !dbg !1184
  tail call void @llvm.x86.sse2.clflush(i8* %begin.addr.04.i) #2, !dbg !1186
  call void @llvm.dbg.value(metadata i8* %begin.addr.04.i, metadata !1156, metadata !DIExpression()) #2, !dbg !1187
  %0 = ptrtoint i8* %begin.addr.04.i to i64, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %0, metadata !1162, metadata !DIExpression()) #2, !dbg !1190
  %add.i.i = add i64 %0, 64, !dbg !1191
  %and.i.i = and i64 %add.i.i, -64, !dbg !1192
  call void @llvm.dbg.value(metadata i64 %and.i.i, metadata !1163, metadata !DIExpression()) #2, !dbg !1193
  %1 = inttoptr i64 %and.i.i to i8*, !dbg !1194
  call void @llvm.dbg.value(metadata i8* %1, metadata !1138, metadata !DIExpression()) #2, !dbg !1181
  %cmp.i = icmp ult i8* %1, getelementptr inbounds ({ [12288 x i8], [3072 x i8] }, { [12288 x i8], [3072 x i8] }* @_ZZ23ExtendSpeculationWindowvE6buffer, i32 0, i32 0, i64 4097), !dbg !1195
  br i1 %cmp.i, label %for.body.i, label %_Z18FlushFromDataCachePKvS0_.exit, !dbg !1196, !llvm.loop !1172

_Z18FlushFromDataCachePKvS0_.exit:                ; preds = %for.body.i
  tail call void @llvm.x86.sse2.mfence() #2, !dbg !1199
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ({ [12288 x i8], [3072 x i8] }, { [12288 x i8], [3072 x i8] }* @_ZZ23ExtendSpeculationWindowvE6buffer, i32 0, i32 0, i64 4096), metadata !1200, metadata !DIExpression()), !dbg !1204
  %2 = load volatile i8, i8* getelementptr inbounds ({ [12288 x i8], [3072 x i8] }, { [12288 x i8], [3072 x i8] }* @_ZZ23ExtendSpeculationWindowvE6buffer, i32 0, i32 0, i64 4096), align 16, !dbg !1206, !tbaa !1207
  ret void, !dbg !1210
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noredzone sanitize_address uwtable
define dso_local void @_Z17PinToTheFirstCorev() local_unnamed_addr #5 !dbg !1211 {
entry:
  %asan_local_stack_base = alloca i64, !dbg !1224
  %0 = load i32, i32* @__asan_option_detect_stack_use_after_return, !dbg !1224
  %1 = icmp ne i32 %0, 0, !dbg !1224
  br i1 %1, label %2, label %4

; <label>:2:                                      ; preds = %entry
  %3 = call i64 @__asan_stack_malloc_2(i64 192), !dbg !1224
  br label %4

; <label>:4:                                      ; preds = %entry, %2
  %5 = phi i64 [ 0, %entry ], [ %3, %2 ], !dbg !1224
  %6 = icmp eq i64 %5, 0, !dbg !1224
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %4
  %MyAlloca = alloca i8, i64 192, align 32, !dbg !1224
  %8 = ptrtoint i8* %MyAlloca to i64, !dbg !1224
  br label %9

; <label>:9:                                      ; preds = %4, %7
  %10 = phi i64 [ %5, %4 ], [ %8, %7 ], !dbg !1224
  store i64 %10, i64* %asan_local_stack_base, !dbg !1224
  %11 = add i64 %10, 32, !dbg !1224
  %12 = inttoptr i64 %11 to %struct.cpu_set_t*, !dbg !1224
  %13 = inttoptr i64 %10 to i64*, !dbg !1224
  store i64 1102416563, i64* %13, !dbg !1224
  %14 = add i64 %10, 8, !dbg !1224
  %15 = inttoptr i64 %14 to i64*, !dbg !1224
  store i64 ptrtoint ([18 x i8]* @___asan_gen_ to i64), i64* %15, !dbg !1224
  %16 = add i64 %10, 16, !dbg !1224
  %17 = inttoptr i64 %16 to i64*, !dbg !1224
  store i64 ptrtoint (void ()* @_Z17PinToTheFirstCorev to i64), i64* %17, !dbg !1224
  %18 = lshr i64 %10, 3, !dbg !1224
  %19 = add i64 %18, 2147450880, !dbg !1224
  %20 = add i64 %19, 0, !dbg !1224
  %21 = inttoptr i64 %20 to i64*, !dbg !1224
  store i64 -506381209984437775, i64* %21, align 1, !dbg !1224
  %22 = add i64 %19, 8, !dbg !1224
  %23 = inttoptr i64 %22 to i64*, !dbg !1224
  store i64 -506381209866536712, i64* %23, align 1, !dbg !1224
  %24 = add i64 %19, 16, !dbg !1224
  %25 = inttoptr i64 %24 to i64*, !dbg !1224
  store i64 -868082073972705032, i64* %25, align 1, !dbg !1224
  %26 = bitcast %struct.cpu_set_t* %12 to i8*, !dbg !1225
  %27 = add i64 %19, 4, !dbg !1225
  %28 = inttoptr i64 %27 to i64*, !dbg !1225
  store i64 0, i64* %28, align 1, !dbg !1225
  %29 = add i64 %19, 12, !dbg !1225
  %30 = inttoptr i64 %29 to i64*, !dbg !1225
  store i64 0, i64* %30, align 1, !dbg !1225
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %26) #2, !dbg !1225
  %31 = getelementptr inbounds %struct.cpu_set_t, %struct.cpu_set_t* %12, i64 0, i32 0, i64 1
  %32 = bitcast i64* %31 to i8*
  %33 = call i8* @__asan_memset(i8* %32, i32 0, i64 120), !dbg !1226
  call void @llvm.dbg.value(metadata i64 0, metadata !1221, metadata !DIExpression()), !dbg !1227
  %arraydecay = getelementptr inbounds %struct.cpu_set_t, %struct.cpu_set_t* %12, i64 0, i32 0, i64 0, !dbg !1227
  %34 = ptrtoint i64* %arraydecay to i64, !dbg !1227
  call void @__asan_store8(i64 %34), !dbg !1227
  store i64 1, i64* %arraydecay, align 8, !dbg !1227, !tbaa !1228
  %call = tail call i32 @getpid() #9, !dbg !1230
  call void @llvm.dbg.value(metadata %struct.cpu_set_t* %12, metadata !1213, metadata !DIExpression(DW_OP_deref)), !dbg !1231
  %call2 = call i32 @sched_setaffinity(i32 %call, i64 128, %struct.cpu_set_t* nonnull %12) #9, !dbg !1232
  call void @llvm.dbg.value(metadata i32 %call2, metadata !1223, metadata !DIExpression()), !dbg !1233
  %cmp3 = icmp eq i32 %call2, 0, !dbg !1234
  br i1 %cmp3, label %if.end, label %if.then, !dbg !1236

if.then:                                          ; preds = %9
  %call4 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ({ [27 x i8], [37 x i8] }, { [27 x i8], [37 x i8] }* @.str, i32 0, i32 0, i64 0)) #10, !dbg !1237
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call4, metadata !1239, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, metadata !1254, metadata !DIExpression()), !dbg !1258
  %call.i = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call4) #10, !dbg !1259
  call void @__asan_handle_no_return(), !dbg !1260
  call void @exit(i32 1) #11, !dbg !1260
  unreachable, !dbg !1260

if.end:                                           ; preds = %9
  %35 = add i64 %19, 4, !dbg !1261
  %36 = inttoptr i64 %35 to i64*, !dbg !1261
  store i64 -506381209866536712, i64* %36, align 1, !dbg !1261
  %37 = add i64 %19, 12, !dbg !1261
  %38 = inttoptr i64 %37 to i64*, !dbg !1261
  store i64 -506381209866536712, i64* %38, align 1, !dbg !1261
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %26) #2, !dbg !1261
  store i64 1172321806, i64* %13, !dbg !1261
  %39 = icmp ne i64 %5, 0, !dbg !1261
  br i1 %39, label %40, label %53, !dbg !1261

; <label>:40:                                     ; preds = %if.end
  %41 = add i64 %19, 0, !dbg !1261
  %42 = inttoptr i64 %41 to i64*, !dbg !1261
  store i64 -723401728380766731, i64* %42, align 1, !dbg !1261
  %43 = add i64 %19, 8, !dbg !1261
  %44 = inttoptr i64 %43 to i64*, !dbg !1261
  store i64 -723401728380766731, i64* %44, align 1, !dbg !1261
  %45 = add i64 %19, 16, !dbg !1261
  %46 = inttoptr i64 %45 to i64*, !dbg !1261
  store i64 -723401728380766731, i64* %46, align 1, !dbg !1261
  %47 = add i64 %19, 24, !dbg !1261
  %48 = inttoptr i64 %47 to i64*, !dbg !1261
  store i64 -723401728380766731, i64* %48, align 1, !dbg !1261
  %49 = add i64 %5, 248, !dbg !1261
  %50 = inttoptr i64 %49 to i64*, !dbg !1261
  %51 = load i64, i64* %50, !dbg !1261
  %52 = inttoptr i64 %51 to i8*, !dbg !1261
  store i8 0, i8* %52, !dbg !1261
  br label %60, !dbg !1261

; <label>:53:                                     ; preds = %if.end
  %54 = add i64 %19, 0, !dbg !1261
  %55 = inttoptr i64 %54 to i64*, !dbg !1261
  store i64 0, i64* %55, align 1, !dbg !1261
  %56 = add i64 %19, 8, !dbg !1261
  %57 = inttoptr i64 %56 to i64*, !dbg !1261
  store i64 0, i64* %57, align 1, !dbg !1261
  %58 = add i64 %19, 16, !dbg !1261
  %59 = inttoptr i64 %58 to i64*, !dbg !1261
  store i64 0, i64* %59, align 1, !dbg !1261
  br label %60, !dbg !1261

; <label>:60:                                     ; preds = %53, %40
  ret void, !dbg !1261
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: noredzone nounwind
declare dso_local i32 @sched_setaffinity(i32, i64, %struct.cpu_set_t*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
declare dso_local i32 @getpid() local_unnamed_addr #1

; Function Attrs: inlinehint noredzone sanitize_address uwtable
declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) local_unnamed_addr #6

; Function Attrs: inlinehint noredzone sanitize_address uwtable
declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) local_unnamed_addr #6

; Function Attrs: noredzone noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.x86.sse2.clflush(i8*) #2

; Function Attrs: nounwind
declare void @llvm.x86.sse2.mfence() #2

; Function Attrs: nounwind
declare void @llvm.x86.sse2.lfence() #2

; Function Attrs: noredzone sanitize_address uwtable
define internal void @_GLOBAL__sub_I_utils.cc() #5 section ".text.startup" !dbg !1262 {
entry:
  call void @__asan_before_dynamic_init(i64 ptrtoint ([9 x i8]* @___asan_gen_.1 to i64)), !dbg !1264
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull getelementptr inbounds ({ %"class.std::ios_base::Init", [63 x i8] }, { %"class.std::ios_base::Init", [63 x i8] }* @_ZStL8__ioinit, i32 0, i32 0)) #10, !dbg !1264
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds ({ %"class.std::ios_base::Init", [63 x i8] }, { %"class.std::ios_base::Init", [63 x i8] }* @_ZStL8__ioinit, i32 0, i32 0, i32 0), i8* nonnull @__dso_handle) #2, !dbg !1264
  call void @__asan_after_dynamic_init()
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

declare void @__asan_report_load_n(i64, i64)

declare void @__asan_loadN(i64, i64)

declare void @__asan_report_load1(i64)

declare void @__asan_load1(i64)

declare void @__asan_report_load2(i64)

declare void @__asan_load2(i64)

declare void @__asan_report_load4(i64)

declare void @__asan_load4(i64)

declare void @__asan_report_load8(i64)

declare void @__asan_load8(i64)

declare void @__asan_report_load16(i64)

declare void @__asan_load16(i64)

declare void @__asan_report_store_n(i64, i64)

declare void @__asan_storeN(i64, i64)

declare void @__asan_report_store1(i64)

declare void @__asan_store1(i64)

declare void @__asan_report_store2(i64)

declare void @__asan_store2(i64)

declare void @__asan_report_store4(i64)

declare void @__asan_store4(i64)

declare void @__asan_report_store8(i64)

declare void @__asan_store8(i64)

declare void @__asan_report_store16(i64)

declare void @__asan_store16(i64)

declare void @__asan_report_exp_load_n(i64, i64, i32)

declare void @__asan_exp_loadN(i64, i64, i32)

declare void @__asan_report_exp_load1(i64, i32)

declare void @__asan_exp_load1(i64, i32)

declare void @__asan_report_exp_load2(i64, i32)

declare void @__asan_exp_load2(i64, i32)

declare void @__asan_report_exp_load4(i64, i32)

declare void @__asan_exp_load4(i64, i32)

declare void @__asan_report_exp_load8(i64, i32)

declare void @__asan_exp_load8(i64, i32)

declare void @__asan_report_exp_load16(i64, i32)

declare void @__asan_exp_load16(i64, i32)

declare void @__asan_report_exp_store_n(i64, i64, i32)

declare void @__asan_exp_storeN(i64, i64, i32)

declare void @__asan_report_exp_store1(i64, i32)

declare void @__asan_exp_store1(i64, i32)

declare void @__asan_report_exp_store2(i64, i32)

declare void @__asan_exp_store2(i64, i32)

declare void @__asan_report_exp_store4(i64, i32)

declare void @__asan_exp_store4(i64, i32)

declare void @__asan_report_exp_store8(i64, i32)

declare void @__asan_exp_store8(i64, i32)

declare void @__asan_report_exp_store16(i64, i32)

declare void @__asan_exp_store16(i64, i32)

declare i8* @__asan_memmove(i8*, i8*, i64)

declare i8* @__asan_memcpy(i8*, i8*, i64)

declare i8* @__asan_memset(i8*, i32, i64)

declare void @__asan_handle_no_return()

declare void @__sanitizer_ptr_cmp(i64, i64)

declare void @__sanitizer_ptr_sub(i64, i64)

declare i64 @__asan_stack_malloc_0(i64)

declare void @__asan_stack_free_0(i64, i64)

declare i64 @__asan_stack_malloc_1(i64)

declare void @__asan_stack_free_1(i64, i64)

declare i64 @__asan_stack_malloc_2(i64)

declare void @__asan_stack_free_2(i64, i64)

declare i64 @__asan_stack_malloc_3(i64)

declare void @__asan_stack_free_3(i64, i64)

declare i64 @__asan_stack_malloc_4(i64)

declare void @__asan_stack_free_4(i64, i64)

declare i64 @__asan_stack_malloc_5(i64)

declare void @__asan_stack_free_5(i64, i64)

declare i64 @__asan_stack_malloc_6(i64)

declare void @__asan_stack_free_6(i64, i64)

declare i64 @__asan_stack_malloc_7(i64)

declare void @__asan_stack_free_7(i64, i64)

declare i64 @__asan_stack_malloc_8(i64)

declare void @__asan_stack_free_8(i64, i64)

declare i64 @__asan_stack_malloc_9(i64)

declare void @__asan_stack_free_9(i64, i64)

declare i64 @__asan_stack_malloc_10(i64)

declare void @__asan_stack_free_10(i64, i64)

declare void @__asan_poison_stack_memory(i64, i64)

declare void @__asan_unpoison_stack_memory(i64, i64)

declare void @__asan_set_shadow_00(i64, i64)

declare void @__asan_set_shadow_f1(i64, i64)

declare void @__asan_set_shadow_f2(i64, i64)

declare void @__asan_set_shadow_f3(i64, i64)

declare void @__asan_set_shadow_f5(i64, i64)

declare void @__asan_set_shadow_f8(i64, i64)

declare void @__asan_alloca_poison(i64, i64)

declare void @__asan_allocas_unpoison(i64, i64)

declare void @__asan_before_dynamic_init(i64)

declare void @__asan_after_dynamic_init()

declare void @__asan_register_globals(i64, i64)

declare void @__asan_unregister_globals(i64, i64)

declare void @__asan_register_image_globals(i64)

declare void @__asan_unregister_image_globals(i64)

declare void @__asan_register_elf_globals(i64, i64, i64)

declare void @__asan_unregister_elf_globals(i64, i64, i64)

declare void @__asan_init()

define internal void @asan.module_ctor() {
  call void @__asan_init()
  call void @__asan_version_mismatch_check_v8()
  call void @__asan_register_globals(i64 ptrtoint ([3 x { i64, i64, i64, i64, i64, i64, i64, i64 }]* @0 to i64), i64 3)
  ret void
}

declare void @__asan_version_mismatch_check_v8()

define internal void @asan.module_dtor() {
  call void @__asan_unregister_globals(i64 ptrtoint ([3 x { i64, i64, i64, i64, i64, i64, i64, i64 }]* @0 to i64), i64 3)
  ret void
}

attributes #0 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87,-avx,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-f16c,-fma,-fma4,-vaes,-vpclmulqdq,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87,-avx,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-f16c,-fma,-fma4,-vaes,-vpclmulqdq,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noredzone nounwind sanitize_address uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87,-avx,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-f16c,-fma,-fma4,-vaes,-vpclmulqdq,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noredzone sanitize_address uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87,-avx,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-f16c,-fma,-fma4,-vaes,-vpclmulqdq,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint noredzone sanitize_address uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87,-avx,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-f16c,-fma,-fma4,-vaes,-vpclmulqdq,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87,-avx,-avx2,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-f16c,-fma,-fma4,-vaes,-vpclmulqdq,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone speculatable }
attributes #9 = { noredzone nounwind }
attributes #10 = { noredzone }
attributes #11 = { noredzone noreturn nounwind }

!llvm.dbg.cu = !{!34}
!llvm.asan.globals = !{!1124, !1126, !1128}
!llvm.module.flags = !{!1130, !1131, !1132}
!llvm.ident = !{!1133}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/iostream", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!4 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 603, size: 8, flags: DIFlagTypePassByReference, elements: !7, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/ios_base.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, flags: DIFlagFwdDecl, identifier: "_ZTSSt8ios_base")
!7 = !{!8, !12, !14, !18, !19, !24}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "_S_refcount", scope: !4, file: !5, line: 616, baseType: !9, flags: DIFlagStaticMember)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !10, line: 32, baseType: !11)
!10 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/x86_64-linux-gnu/c++/9/bits/atomic_word.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_S_synced_with_stdio", scope: !4, file: !5, line: 617, baseType: !13, flags: DIFlagStaticMember)
!13 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!14 = !DISubprogram(name: "Init", scope: !4, file: !5, line: 607, type: !15, isLocal: false, isDefinition: false, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!18 = !DISubprogram(name: "~Init", scope: !4, file: !5, line: 608, type: !15, isLocal: false, isDefinition: false, scopeLine: 608, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!19 = !DISubprogram(name: "Init", scope: !4, file: !5, line: 611, type: !20, isLocal: false, isDefinition: false, scopeLine: 611, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !17, !22}
!22 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!24 = !DISubprogram(name: "operator=", linkageName: "_ZNSt8ios_base4InitaSERKS0_", scope: !4, file: !5, line: 612, type: !25, isLocal: false, isDefinition: false, scopeLine: 612, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !17, !22}
!27 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "buffer", scope: !30, file: !31, line: 55, type: !1121, isLocal: true, isDefinition: true)
!30 = distinct !DISubprogram(name: "ExtendSpeculationWindow", linkageName: "_Z23ExtendSpeculationWindowv", scope: !31, file: !31, line: 49, type: !32, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !34, retainedNodes: !1119)
!31 = !DIFile(filename: "utils.cc", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!32 = !DISubroutineType(types: !33)
!33 = !{null}
!34 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !31, producer: "clang version 7.0.1 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !45, globals: !64, imports: !73)
!35 = !{!36}
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Ios_Iostate", scope: !2, file: !5, line: 153, baseType: !11, size: 32, elements: !37, identifier: "_ZTSSt12_Ios_Iostate")
!37 = !{!38, !39, !40, !41, !42, !43, !44}
!38 = !DIEnumerator(name: "_S_goodbit", value: 0)
!39 = !DIEnumerator(name: "_S_badbit", value: 1)
!40 = !DIEnumerator(name: "_S_eofbit", value: 2)
!41 = !DIEnumerator(name: "_S_failbit", value: 4)
!42 = !DIEnumerator(name: "_S_ios_iostate_end", value: 65536)
!43 = !DIEnumerator(name: "_S_ios_iostate_max", value: 2147483647)
!44 = !DIEnumerator(name: "_S_ios_iostate_min", value: -2147483648)
!45 = !{!46, !49, !50, !52, !54, !58, !36, !11, !63, !6}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__cpu_mask", file: !47, line: 32, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/cpu-set.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!48 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !51, line: 90, baseType: !48)
!51 = !DIFile(filename: "/usr/include/stdint.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !57)
!57 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamsize", scope: !2, file: !59, line: 98, baseType: !60)
!59 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/postypes.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !2, file: !61, line: 255, baseType: !62)
!61 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/x86_64-linux-gnu/c++/9/bits/c++config.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!62 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !{!0, !28, !65, !71}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression(DW_OP_constu, 4096, DW_OP_stack_value))
!66 = distinct !DIGlobalVariable(name: "kPageBytes", scope: !34, file: !67, line: 23, type: !68, isLocal: true, isDefinition: true)
!67 = !DIFile(filename: "./hardware_constants.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 62, baseType: !48)
!70 = !DIFile(filename: "/usr/local/google/home/zbrid/sanitizer/llvm-install/llvm-7.0.1/build/lib/clang/7.0.1/include/stddef.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression(DW_OP_constu, 64, DW_OP_stack_value))
!72 = distinct !DIGlobalVariable(name: "kCacheLineBytes", scope: !34, file: !67, line: 22, type: !68, isLocal: true, isDefinition: true)
!73 = !{!74, !79, !97, !100, !105, !166, !174, !178, !185, !189, !193, !195, !197, !201, !210, !214, !220, !226, !228, !232, !236, !240, !244, !255, !257, !261, !265, !269, !271, !276, !280, !284, !286, !288, !292, !300, !304, !308, !312, !314, !320, !322, !329, !334, !338, !342, !346, !350, !354, !356, !358, !362, !366, !370, !372, !376, !380, !382, !384, !388, !394, !399, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !468, !472, !476, !481, !485, !488, !491, !493, !495, !497, !499, !502, !505, !508, !511, !514, !516, !520, !523, !526, !529, !531, !533, !535, !537, !540, !543, !546, !549, !552, !553, !557, !561, !566, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !601, !602, !606, !610, !616, !618, !623, !625, !630, !634, !638, !647, !651, !655, !659, !663, !667, !671, !675, !679, !683, !687, !691, !695, !697, !701, !705, !709, !715, !719, !723, !725, !729, !733, !739, !741, !745, !749, !753, !757, !761, !765, !769, !770, !771, !772, !774, !775, !776, !777, !778, !779, !780, !784, !790, !795, !799, !801, !803, !805, !807, !814, !818, !822, !826, !830, !834, !839, !843, !845, !849, !855, !859, !864, !866, !869, !873, !877, !879, !881, !883, !885, !889, !891, !893, !897, !901, !905, !909, !913, !917, !919, !923, !927, !931, !935, !937, !939, !943, !947, !948, !949, !950, !951, !952, !958, !961, !962, !964, !966, !968, !970, !974, !976, !978, !980, !982, !984, !986, !988, !990, !994, !998, !1000, !1004, !1008, !1014, !1018, !1022, !1026, !1030, !1034, !1036, !1038, !1040, !1044, !1048, !1052, !1056, !1060, !1062, !1064, !1066, !1070, !1074, !1078, !1080, !1082, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118}
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !75, file: !78, line: 58)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !76, line: 40, baseType: !77)
!76 = !DIFile(filename: "/usr/local/google/home/zbrid/sanitizer/llvm-install/llvm-7.0.1/build/lib/clang/7.0.1/include/__stddef_max_align_t.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!77 = !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 35, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
!78 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstddef", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !80, file: !96, line: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !81, line: 6, baseType: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !83, line: 21, baseType: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !83, line: 13, size: 64, flags: DIFlagTypePassByValue | DIFlagTrivial, elements: !85, identifier: "_ZTS11__mbstate_t")
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !84, file: !83, line: 15, baseType: !11, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !84, file: !83, line: 20, baseType: !88, size: 32, offset: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !83, line: 16, size: 32, flags: DIFlagTypePassByValue | DIFlagTrivial, elements: !89, identifier: "_ZTSN11__mbstate_tUt_E")
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !88, file: !83, line: 18, baseType: !91, size: 32)
!91 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !88, file: !83, line: 19, baseType: !93, size: 32)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 32, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 4)
!96 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cwchar", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !98, file: !96, line: 141)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !99, line: 20, baseType: !91)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !101, file: !96, line: 143)
!101 = !DISubprogram(name: "btowc", scope: !102, file: !102, line: 318, type: !103, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!102 = !DIFile(filename: "/usr/include/wchar.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!103 = !DISubroutineType(types: !104)
!104 = !{!98, !11}
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !106, file: !96, line: 144)
!106 = !DISubprogram(name: "fgetwc", scope: !102, file: !102, line: 726, type: !107, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!107 = !DISubroutineType(types: !108)
!108 = !{!98, !109}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !111, line: 5, baseType: !112)
!111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !113, line: 49, size: 1728, flags: DIFlagTypePassByValue | DIFlagTrivial, elements: !114, identifier: "_ZTS8_IO_FILE")
!113 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!114 = !{!115, !116, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !131, !133, !134, !135, !138, !140, !142, !146, !149, !151, !154, !157, !158, !160, !161, !162}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !112, file: !113, line: 51, baseType: !11, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !112, file: !113, line: 54, baseType: !117, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !112, file: !113, line: 55, baseType: !117, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !112, file: !113, line: 56, baseType: !117, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !112, file: !113, line: 57, baseType: !117, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !112, file: !113, line: 58, baseType: !117, size: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !112, file: !113, line: 59, baseType: !117, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !112, file: !113, line: 60, baseType: !117, size: 64, offset: 448)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !112, file: !113, line: 61, baseType: !117, size: 64, offset: 512)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !112, file: !113, line: 64, baseType: !117, size: 64, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !112, file: !113, line: 65, baseType: !117, size: 64, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !112, file: !113, line: 66, baseType: !117, size: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !112, file: !113, line: 68, baseType: !129, size: 64, offset: 768)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !113, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS10_IO_marker")
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !112, file: !113, line: 70, baseType: !132, size: 64, offset: 832)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !112, file: !113, line: 72, baseType: !11, size: 32, offset: 896)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !112, file: !113, line: 73, baseType: !11, size: 32, offset: 928)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !112, file: !113, line: 74, baseType: !136, size: 64, offset: 960)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !137, line: 152, baseType: !62)
!137 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !112, file: !113, line: 77, baseType: !139, size: 16, offset: 1024)
!139 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !112, file: !113, line: 78, baseType: !141, size: 8, offset: 1040)
!141 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !112, file: !113, line: 79, baseType: !143, size: 8, offset: 1048)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 8, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 1)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !112, file: !113, line: 81, baseType: !147, size: 64, offset: 1088)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !113, line: 43, baseType: null)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !112, file: !113, line: 89, baseType: !150, size: 64, offset: 1152)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !137, line: 153, baseType: !62)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !112, file: !113, line: 91, baseType: !152, size: 64, offset: 1216)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !113, line: 37, flags: DIFlagFwdDecl, identifier: "_ZTS11_IO_codecvt")
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !112, file: !113, line: 92, baseType: !155, size: 64, offset: 1280)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !113, line: 38, flags: DIFlagFwdDecl, identifier: "_ZTS13_IO_wide_data")
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !112, file: !113, line: 93, baseType: !132, size: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !112, file: !113, line: 94, baseType: !159, size: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !112, file: !113, line: 95, baseType: !69, size: 64, offset: 1472)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !112, file: !113, line: 96, baseType: !11, size: 32, offset: 1536)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !112, file: !113, line: 98, baseType: !163, size: 160, offset: 1568)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 160, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 20)
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !167, file: !96, line: 145)
!167 = !DISubprogram(name: "fgetws", scope: !102, file: !102, line: 755, type: !168, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!168 = !DISubroutineType(types: !169)
!169 = !{!170, !172, !11, !173}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!172 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !170)
!173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !175, file: !96, line: 146)
!175 = !DISubprogram(name: "fputwc", scope: !102, file: !102, line: 740, type: !176, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!176 = !DISubroutineType(types: !177)
!177 = !{!98, !171, !109}
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !179, file: !96, line: 147)
!179 = !DISubprogram(name: "fputws", scope: !102, file: !102, line: 762, type: !180, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!180 = !DISubroutineType(types: !181)
!181 = !{!11, !182, !173}
!182 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !186, file: !96, line: 148)
!186 = !DISubprogram(name: "fwide", scope: !102, file: !102, line: 573, type: !187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!187 = !DISubroutineType(types: !188)
!188 = !{!11, !109, !11}
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !190, file: !96, line: 149)
!190 = !DISubprogram(name: "fwprintf", scope: !102, file: !102, line: 580, type: !191, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!191 = !DISubroutineType(types: !192)
!192 = !{!11, !173, !182, null}
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !194, file: !96, line: 150)
!194 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !102, file: !102, line: 640, type: !191, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !196, file: !96, line: 151)
!196 = !DISubprogram(name: "getwc", scope: !102, file: !102, line: 727, type: !107, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !198, file: !96, line: 152)
!198 = !DISubprogram(name: "getwchar", scope: !102, file: !102, line: 733, type: !199, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!199 = !DISubroutineType(types: !200)
!200 = !{!98}
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !202, file: !96, line: 153)
!202 = !DISubprogram(name: "mbrlen", scope: !102, file: !102, line: 329, type: !203, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!203 = !DISubroutineType(types: !204)
!204 = !{!69, !205, !69, !208}
!205 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!208 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !211, file: !96, line: 154)
!211 = !DISubprogram(name: "mbrtowc", scope: !102, file: !102, line: 296, type: !212, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!212 = !DISubroutineType(types: !213)
!213 = !{!69, !172, !205, !69, !208}
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !215, file: !96, line: 155)
!215 = !DISubprogram(name: "mbsinit", scope: !102, file: !102, line: 292, type: !216, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!216 = !DISubroutineType(types: !217)
!217 = !{!11, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !221, file: !96, line: 156)
!221 = !DISubprogram(name: "mbsrtowcs", scope: !102, file: !102, line: 337, type: !222, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!222 = !DISubroutineType(types: !223)
!223 = !{!69, !172, !224, !69, !208}
!224 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !227, file: !96, line: 157)
!227 = !DISubprogram(name: "putwc", scope: !102, file: !102, line: 741, type: !176, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !229, file: !96, line: 158)
!229 = !DISubprogram(name: "putwchar", scope: !102, file: !102, line: 747, type: !230, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!230 = !DISubroutineType(types: !231)
!231 = !{!98, !171}
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !233, file: !96, line: 160)
!233 = !DISubprogram(name: "swprintf", scope: !102, file: !102, line: 590, type: !234, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!234 = !DISubroutineType(types: !235)
!235 = !{!11, !172, !69, !182, null}
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !237, file: !96, line: 162)
!237 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !102, file: !102, line: 647, type: !238, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!238 = !DISubroutineType(types: !239)
!239 = !{!11, !182, !182, null}
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !241, file: !96, line: 163)
!241 = !DISubprogram(name: "ungetwc", scope: !102, file: !102, line: 770, type: !242, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!242 = !DISubroutineType(types: !243)
!243 = !{!98, !98, !109}
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !245, file: !96, line: 164)
!245 = !DISubprogram(name: "vfwprintf", scope: !102, file: !102, line: 598, type: !246, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!246 = !DISubroutineType(types: !247)
!247 = !{!11, !173, !182, !248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !31, size: 192, flags: DIFlagTypePassByValue | DIFlagTrivial, elements: !250, identifier: "_ZTS13__va_list_tag")
!250 = !{!251, !252, !253, !254}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !249, file: !31, baseType: !91, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !249, file: !31, baseType: !91, size: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !249, file: !31, baseType: !159, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !249, file: !31, baseType: !159, size: 64, offset: 128)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !256, file: !96, line: 166)
!256 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !102, file: !102, line: 693, type: !246, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !258, file: !96, line: 169)
!258 = !DISubprogram(name: "vswprintf", scope: !102, file: !102, line: 611, type: !259, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!259 = !DISubroutineType(types: !260)
!260 = !{!11, !172, !69, !182, !248}
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !262, file: !96, line: 172)
!262 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !102, file: !102, line: 700, type: !263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!263 = !DISubroutineType(types: !264)
!264 = !{!11, !182, !182, !248}
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !266, file: !96, line: 174)
!266 = !DISubprogram(name: "vwprintf", scope: !102, file: !102, line: 606, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!267 = !DISubroutineType(types: !268)
!268 = !{!11, !182, !248}
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !270, file: !96, line: 176)
!270 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !102, file: !102, line: 697, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !272, file: !96, line: 178)
!272 = !DISubprogram(name: "wcrtomb", scope: !102, file: !102, line: 301, type: !273, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!273 = !DISubroutineType(types: !274)
!274 = !{!69, !275, !171, !208}
!275 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !117)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !277, file: !96, line: 179)
!277 = !DISubprogram(name: "wcscat", scope: !102, file: !102, line: 97, type: !278, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!278 = !DISubroutineType(types: !279)
!279 = !{!170, !172, !182}
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !281, file: !96, line: 180)
!281 = !DISubprogram(name: "wcscmp", scope: !102, file: !102, line: 106, type: !282, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!282 = !DISubroutineType(types: !283)
!283 = !{!11, !183, !183}
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !285, file: !96, line: 181)
!285 = !DISubprogram(name: "wcscoll", scope: !102, file: !102, line: 131, type: !282, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !287, file: !96, line: 182)
!287 = !DISubprogram(name: "wcscpy", scope: !102, file: !102, line: 87, type: !278, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !289, file: !96, line: 183)
!289 = !DISubprogram(name: "wcscspn", scope: !102, file: !102, line: 187, type: !290, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!290 = !DISubroutineType(types: !291)
!291 = !{!69, !183, !183}
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !293, file: !96, line: 184)
!293 = !DISubprogram(name: "wcsftime", scope: !102, file: !102, line: 834, type: !294, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!294 = !DISubroutineType(types: !295)
!295 = !{!69, !172, !69, !182, !296}
!296 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !102, line: 83, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !301, file: !96, line: 185)
!301 = !DISubprogram(name: "wcslen", scope: !102, file: !102, line: 222, type: !302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!302 = !DISubroutineType(types: !303)
!303 = !{!69, !183}
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !305, file: !96, line: 186)
!305 = !DISubprogram(name: "wcsncat", scope: !102, file: !102, line: 101, type: !306, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!306 = !DISubroutineType(types: !307)
!307 = !{!170, !172, !182, !69}
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !309, file: !96, line: 187)
!309 = !DISubprogram(name: "wcsncmp", scope: !102, file: !102, line: 109, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!310 = !DISubroutineType(types: !311)
!311 = !{!11, !183, !183, !69}
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !313, file: !96, line: 188)
!313 = !DISubprogram(name: "wcsncpy", scope: !102, file: !102, line: 92, type: !306, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !315, file: !96, line: 189)
!315 = !DISubprogram(name: "wcsrtombs", scope: !102, file: !102, line: 343, type: !316, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!316 = !DISubroutineType(types: !317)
!317 = !{!69, !275, !318, !69, !208}
!318 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !321, file: !96, line: 190)
!321 = !DISubprogram(name: "wcsspn", scope: !102, file: !102, line: 191, type: !290, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !323, file: !96, line: 191)
!323 = !DISubprogram(name: "wcstod", scope: !102, file: !102, line: 377, type: !324, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !182, !327}
!326 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!327 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !330, file: !96, line: 193)
!330 = !DISubprogram(name: "wcstof", scope: !102, file: !102, line: 382, type: !331, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!331 = !DISubroutineType(types: !332)
!332 = !{!333, !182, !327}
!333 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !335, file: !96, line: 195)
!335 = !DISubprogram(name: "wcstok", scope: !102, file: !102, line: 217, type: !336, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!336 = !DISubroutineType(types: !337)
!337 = !{!170, !172, !182, !327}
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !339, file: !96, line: 196)
!339 = !DISubprogram(name: "wcstol", scope: !102, file: !102, line: 428, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!340 = !DISubroutineType(types: !341)
!341 = !{!62, !182, !327, !11}
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !343, file: !96, line: 197)
!343 = !DISubprogram(name: "wcstoul", scope: !102, file: !102, line: 433, type: !344, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!344 = !DISubroutineType(types: !345)
!345 = !{!48, !182, !327, !11}
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !347, file: !96, line: 198)
!347 = !DISubprogram(name: "wcsxfrm", scope: !102, file: !102, line: 135, type: !348, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!348 = !DISubroutineType(types: !349)
!349 = !{!69, !172, !182, !69}
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !351, file: !96, line: 199)
!351 = !DISubprogram(name: "wctob", scope: !102, file: !102, line: 324, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!352 = !DISubroutineType(types: !353)
!353 = !{!11, !98}
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !355, file: !96, line: 200)
!355 = !DISubprogram(name: "wmemcmp", scope: !102, file: !102, line: 258, type: !310, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !357, file: !96, line: 201)
!357 = !DISubprogram(name: "wmemcpy", scope: !102, file: !102, line: 262, type: !306, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !359, file: !96, line: 202)
!359 = !DISubprogram(name: "wmemmove", scope: !102, file: !102, line: 267, type: !360, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!360 = !DISubroutineType(types: !361)
!361 = !{!170, !170, !183, !69}
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !363, file: !96, line: 203)
!363 = !DISubprogram(name: "wmemset", scope: !102, file: !102, line: 271, type: !364, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!364 = !DISubroutineType(types: !365)
!365 = !{!170, !170, !171, !69}
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !367, file: !96, line: 204)
!367 = !DISubprogram(name: "wprintf", scope: !102, file: !102, line: 587, type: !368, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!368 = !DISubroutineType(types: !369)
!369 = !{!11, !182, null}
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !371, file: !96, line: 205)
!371 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !102, file: !102, line: 644, type: !368, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !373, file: !96, line: 206)
!373 = !DISubprogram(name: "wcschr", scope: !102, file: !102, line: 164, type: !374, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!374 = !DISubroutineType(types: !375)
!375 = !{!170, !183, !171}
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !377, file: !96, line: 207)
!377 = !DISubprogram(name: "wcspbrk", scope: !102, file: !102, line: 201, type: !378, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!378 = !DISubroutineType(types: !379)
!379 = !{!170, !183, !183}
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !381, file: !96, line: 208)
!381 = !DISubprogram(name: "wcsrchr", scope: !102, file: !102, line: 174, type: !374, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !383, file: !96, line: 209)
!383 = !DISubprogram(name: "wcsstr", scope: !102, file: !102, line: 212, type: !378, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !385, file: !96, line: 210)
!385 = !DISubprogram(name: "wmemchr", scope: !102, file: !102, line: 253, type: !386, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!386 = !DISubroutineType(types: !387)
!387 = !{!170, !183, !171, !69}
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !390, file: !96, line: 251)
!389 = !DINamespace(name: "__gnu_cxx", scope: null)
!390 = !DISubprogram(name: "wcstold", scope: !102, file: !102, line: 384, type: !391, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!391 = !DISubroutineType(types: !392)
!392 = !{!393, !182, !327}
!393 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !395, file: !96, line: 260)
!395 = !DISubprogram(name: "wcstoll", scope: !102, file: !102, line: 441, type: !396, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!396 = !DISubroutineType(types: !397)
!397 = !{!398, !182, !327, !11}
!398 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !400, file: !96, line: 261)
!400 = !DISubprogram(name: "wcstoull", scope: !102, file: !102, line: 448, type: !401, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!401 = !DISubroutineType(types: !402)
!402 = !{!403, !182, !327, !11}
!403 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !390, file: !96, line: 267)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !395, file: !96, line: 268)
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !400, file: !96, line: 269)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !330, file: !96, line: 283)
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !256, file: !96, line: 286)
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !262, file: !96, line: 289)
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !270, file: !96, line: 292)
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !390, file: !96, line: 296)
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !395, file: !96, line: 297)
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !400, file: !96, line: 298)
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !415, file: !416, line: 57)
!415 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !417, file: !416, line: 79, size: 64, flags: DIFlagTypePassByReference, elements: !418, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!416 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/exception_ptr.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!417 = !DINamespace(name: "__exception_ptr", scope: !2)
!418 = !{!419, !420, !424, !427, !428, !433, !434, !438, !443, !447, !451, !454, !455, !458, !461}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !415, file: !416, line: 81, baseType: !159, size: 64)
!420 = !DISubprogram(name: "exception_ptr", scope: !415, file: !416, line: 83, type: !421, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !423, !159}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!424 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !415, file: !416, line: 85, type: !425, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !423}
!427 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !415, file: !416, line: 86, type: !425, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true)
!428 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !415, file: !416, line: 88, type: !429, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true)
!429 = !DISubroutineType(types: !430)
!430 = !{!159, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!433 = !DISubprogram(name: "exception_ptr", scope: !415, file: !416, line: 96, type: !425, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!434 = !DISubprogram(name: "exception_ptr", scope: !415, file: !416, line: 98, type: !435, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !423, !437}
!437 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !432, size: 64)
!438 = !DISubprogram(name: "exception_ptr", scope: !415, file: !416, line: 101, type: !439, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !423, !441}
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !2, file: !61, line: 258, baseType: !442)
!442 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!443 = !DISubprogram(name: "exception_ptr", scope: !415, file: !416, line: 105, type: !444, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !423, !446}
!446 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !415, size: 64)
!447 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !415, file: !416, line: 118, type: !448, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!448 = !DISubroutineType(types: !449)
!449 = !{!450, !423, !437}
!450 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !415, size: 64)
!451 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !415, file: !416, line: 122, type: !452, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!452 = !DISubroutineType(types: !453)
!453 = !{!450, !423, !446}
!454 = !DISubprogram(name: "~exception_ptr", scope: !415, file: !416, line: 129, type: !425, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!455 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !415, file: !416, line: 132, type: !456, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !423, !450}
!458 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !415, file: !416, line: 144, type: !459, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: true)
!459 = !DISubroutineType(types: !460)
!460 = !{!13, !431}
!461 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !415, file: !416, line: 153, type: !462, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!462 = !DISubroutineType(types: !463)
!463 = !{!464, !431}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!466 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !2, file: !467, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!467 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/typeinfo", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !417, entity: !469, file: !416, line: 73)
!469 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !416, line: 69, type: !470, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !415}
!472 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !473, entity: !474, file: !475, line: 58)
!473 = !DINamespace(name: "__gnu_debug", scope: null)
!474 = !DINamespace(name: "__debug", scope: !2)
!475 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/debug/debug.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !477, file: !480, line: 47)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !478, line: 24, baseType: !479)
!478 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !137, line: 37, baseType: !141)
!480 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdint", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !482, file: !480, line: 48)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !478, line: 25, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !137, line: 39, baseType: !484)
!484 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !486, file: !480, line: 49)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !478, line: 26, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !137, line: 41, baseType: !11)
!488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !489, file: !480, line: 50)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !478, line: 27, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !137, line: 44, baseType: !62)
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !492, file: !480, line: 52)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !51, line: 58, baseType: !141)
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !494, file: !480, line: 53)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !51, line: 60, baseType: !62)
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !496, file: !480, line: 54)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !51, line: 61, baseType: !62)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !498, file: !480, line: 55)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !51, line: 62, baseType: !62)
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !500, file: !480, line: 57)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !51, line: 43, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !137, line: 52, baseType: !479)
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !503, file: !480, line: 58)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !51, line: 44, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !137, line: 54, baseType: !483)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !506, file: !480, line: 59)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !51, line: 45, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !137, line: 56, baseType: !487)
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !509, file: !480, line: 60)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !51, line: 46, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !137, line: 58, baseType: !490)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !512, file: !480, line: 62)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !51, line: 101, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !137, line: 72, baseType: !62)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !515, file: !480, line: 63)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !51, line: 87, baseType: !62)
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !517, file: !480, line: 65)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !518, line: 24, baseType: !519)
!518 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !137, line: 38, baseType: !63)
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !521, file: !480, line: 66)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !518, line: 25, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !137, line: 40, baseType: !139)
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !524, file: !480, line: 67)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !518, line: 26, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !137, line: 42, baseType: !91)
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !527, file: !480, line: 68)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !518, line: 27, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !137, line: 45, baseType: !48)
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !530, file: !480, line: 70)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !51, line: 71, baseType: !63)
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !532, file: !480, line: 71)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !51, line: 73, baseType: !48)
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !534, file: !480, line: 72)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !51, line: 74, baseType: !48)
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !536, file: !480, line: 73)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !51, line: 75, baseType: !48)
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !538, file: !480, line: 75)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !51, line: 49, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !137, line: 53, baseType: !519)
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !541, file: !480, line: 76)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !51, line: 50, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !137, line: 55, baseType: !522)
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !544, file: !480, line: 77)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !51, line: 51, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !137, line: 57, baseType: !525)
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !547, file: !480, line: 78)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !51, line: 52, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !137, line: 59, baseType: !528)
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !550, file: !480, line: 80)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !51, line: 102, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !137, line: 73, baseType: !48)
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !50, file: !480, line: 81)
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !554, file: !556, line: 53)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !555, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!555 = !DIFile(filename: "/usr/include/locale.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!556 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/clocale", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !558, file: !556, line: 54)
!558 = !DISubprogram(name: "setlocale", scope: !555, file: !555, line: 122, type: !559, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!559 = !DISubroutineType(types: !560)
!560 = !{!117, !11, !206}
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !562, file: !556, line: 55)
!562 = !DISubprogram(name: "localeconv", scope: !555, file: !555, line: 125, type: !563, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!563 = !DISubroutineType(types: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !567, file: !571, line: 64)
!567 = !DISubprogram(name: "isalnum", scope: !568, file: !568, line: 108, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!568 = !DIFile(filename: "/usr/include/ctype.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!569 = !DISubroutineType(types: !570)
!570 = !{!11, !11}
!571 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cctype", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !573, file: !571, line: 65)
!573 = !DISubprogram(name: "isalpha", scope: !568, file: !568, line: 109, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !575, file: !571, line: 66)
!575 = !DISubprogram(name: "iscntrl", scope: !568, file: !568, line: 110, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !577, file: !571, line: 67)
!577 = !DISubprogram(name: "isdigit", scope: !568, file: !568, line: 111, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !579, file: !571, line: 68)
!579 = !DISubprogram(name: "isgraph", scope: !568, file: !568, line: 113, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !581, file: !571, line: 69)
!581 = !DISubprogram(name: "islower", scope: !568, file: !568, line: 112, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !583, file: !571, line: 70)
!583 = !DISubprogram(name: "isprint", scope: !568, file: !568, line: 114, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !585, file: !571, line: 71)
!585 = !DISubprogram(name: "ispunct", scope: !568, file: !568, line: 115, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !587, file: !571, line: 72)
!587 = !DISubprogram(name: "isspace", scope: !568, file: !568, line: 116, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !589, file: !571, line: 73)
!589 = !DISubprogram(name: "isupper", scope: !568, file: !568, line: 117, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !591, file: !571, line: 74)
!591 = !DISubprogram(name: "isxdigit", scope: !568, file: !568, line: 118, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !593, file: !571, line: 75)
!593 = !DISubprogram(name: "tolower", scope: !568, file: !568, line: 122, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !595, file: !571, line: 76)
!595 = !DISubprogram(name: "toupper", scope: !568, file: !568, line: 125, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !597, file: !571, line: 87)
!597 = !DISubprogram(name: "isblank", scope: !568, file: !568, line: 130, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !599, file: !600, line: 44)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !61, line: 254, baseType: !48)
!600 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/ext/new_allocator.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !60, file: !600, line: 45)
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !603, file: !605, line: 52)
!603 = !DISubprogram(name: "abs", scope: !604, file: !604, line: 840, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!604 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!605 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/std_abs.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !607, file: !609, line: 127)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !604, line: 62, baseType: !608)
!608 = !DICompositeType(tag: DW_TAG_structure_type, file: !604, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!609 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdlib", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !611, file: !609, line: 128)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !604, line: 70, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !604, line: 66, size: 128, flags: DIFlagTypePassByValue | DIFlagTrivial, elements: !613, identifier: "_ZTS6ldiv_t")
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !612, file: !604, line: 68, baseType: !62, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !612, file: !604, line: 69, baseType: !62, size: 64, offset: 64)
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !617, file: !609, line: 130)
!617 = !DISubprogram(name: "abort", scope: !604, file: !604, line: 591, type: !32, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !619, file: !609, line: 134)
!619 = !DISubprogram(name: "atexit", scope: !604, file: !604, line: 595, type: !620, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!620 = !DISubroutineType(types: !621)
!621 = !{!11, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !624, file: !609, line: 137)
!624 = !DISubprogram(name: "at_quick_exit", scope: !604, file: !604, line: 600, type: !620, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !626, file: !609, line: 140)
!626 = !DISubprogram(name: "atof", scope: !627, file: !627, line: 25, type: !628, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!627 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!628 = !DISubroutineType(types: !629)
!629 = !{!326, !206}
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !631, file: !609, line: 141)
!631 = !DISubprogram(name: "atoi", scope: !604, file: !604, line: 361, type: !632, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!632 = !DISubroutineType(types: !633)
!633 = !{!11, !206}
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !635, file: !609, line: 142)
!635 = !DISubprogram(name: "atol", scope: !604, file: !604, line: 366, type: !636, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!636 = !DISubroutineType(types: !637)
!637 = !{!62, !206}
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !639, file: !609, line: 143)
!639 = !DISubprogram(name: "bsearch", scope: !640, file: !640, line: 20, type: !641, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!640 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!641 = !DISubroutineType(types: !642)
!642 = !{!159, !52, !52, !69, !69, !643}
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !604, line: 808, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!11, !52, !52}
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !648, file: !609, line: 144)
!648 = !DISubprogram(name: "calloc", scope: !604, file: !604, line: 542, type: !649, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!649 = !DISubroutineType(types: !650)
!650 = !{!159, !69, !69}
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !652, file: !609, line: 145)
!652 = !DISubprogram(name: "div", scope: !604, file: !604, line: 852, type: !653, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!653 = !DISubroutineType(types: !654)
!654 = !{!607, !11, !11}
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !656, file: !609, line: 146)
!656 = !DISubprogram(name: "exit", scope: !604, file: !604, line: 617, type: !657, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !11}
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !660, file: !609, line: 147)
!660 = !DISubprogram(name: "free", scope: !604, file: !604, line: 565, type: !661, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !159}
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !664, file: !609, line: 148)
!664 = !DISubprogram(name: "getenv", scope: !604, file: !604, line: 634, type: !665, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!665 = !DISubroutineType(types: !666)
!666 = !{!117, !206}
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !668, file: !609, line: 149)
!668 = !DISubprogram(name: "labs", scope: !604, file: !604, line: 841, type: !669, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!669 = !DISubroutineType(types: !670)
!670 = !{!62, !62}
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !672, file: !609, line: 150)
!672 = !DISubprogram(name: "ldiv", scope: !604, file: !604, line: 854, type: !673, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!673 = !DISubroutineType(types: !674)
!674 = !{!611, !62, !62}
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !676, file: !609, line: 151)
!676 = !DISubprogram(name: "malloc", scope: !604, file: !604, line: 539, type: !677, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!677 = !DISubroutineType(types: !678)
!678 = !{!159, !69}
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !680, file: !609, line: 153)
!680 = !DISubprogram(name: "mblen", scope: !604, file: !604, line: 922, type: !681, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!681 = !DISubroutineType(types: !682)
!682 = !{!11, !206, !69}
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !684, file: !609, line: 154)
!684 = !DISubprogram(name: "mbstowcs", scope: !604, file: !604, line: 933, type: !685, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!685 = !DISubroutineType(types: !686)
!686 = !{!69, !172, !205, !69}
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !688, file: !609, line: 155)
!688 = !DISubprogram(name: "mbtowc", scope: !604, file: !604, line: 925, type: !689, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!689 = !DISubroutineType(types: !690)
!690 = !{!11, !172, !205, !69}
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !692, file: !609, line: 157)
!692 = !DISubprogram(name: "qsort", scope: !604, file: !604, line: 830, type: !693, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !159, !69, !69, !643}
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !696, file: !609, line: 160)
!696 = !DISubprogram(name: "quick_exit", scope: !604, file: !604, line: 623, type: !657, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !698, file: !609, line: 163)
!698 = !DISubprogram(name: "rand", scope: !604, file: !604, line: 453, type: !699, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!699 = !DISubroutineType(types: !700)
!700 = !{!11}
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !702, file: !609, line: 164)
!702 = !DISubprogram(name: "realloc", scope: !604, file: !604, line: 550, type: !703, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!703 = !DISubroutineType(types: !704)
!704 = !{!159, !159, !69}
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !706, file: !609, line: 165)
!706 = !DISubprogram(name: "srand", scope: !604, file: !604, line: 455, type: !707, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !91}
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !710, file: !609, line: 166)
!710 = !DISubprogram(name: "strtod", scope: !604, file: !604, line: 117, type: !711, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!711 = !DISubroutineType(types: !712)
!712 = !{!326, !205, !713}
!713 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !716, file: !609, line: 167)
!716 = !DISubprogram(name: "strtol", scope: !604, file: !604, line: 176, type: !717, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!717 = !DISubroutineType(types: !718)
!718 = !{!62, !205, !713, !11}
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !720, file: !609, line: 168)
!720 = !DISubprogram(name: "strtoul", scope: !604, file: !604, line: 180, type: !721, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!721 = !DISubroutineType(types: !722)
!722 = !{!48, !205, !713, !11}
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !724, file: !609, line: 169)
!724 = !DISubprogram(name: "system", scope: !604, file: !604, line: 784, type: !632, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !726, file: !609, line: 171)
!726 = !DISubprogram(name: "wcstombs", scope: !604, file: !604, line: 936, type: !727, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!727 = !DISubroutineType(types: !728)
!728 = !{!69, !275, !182, !69}
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !730, file: !609, line: 172)
!730 = !DISubprogram(name: "wctomb", scope: !604, file: !604, line: 929, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!731 = !DISubroutineType(types: !732)
!732 = !{!11, !117, !171}
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !734, file: !609, line: 200)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !604, line: 80, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !604, line: 76, size: 128, flags: DIFlagTypePassByValue | DIFlagTrivial, elements: !736, identifier: "_ZTS7lldiv_t")
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !735, file: !604, line: 78, baseType: !398, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !735, file: !604, line: 79, baseType: !398, size: 64, offset: 64)
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !740, file: !609, line: 206)
!740 = !DISubprogram(name: "_Exit", scope: !604, file: !604, line: 629, type: !657, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true)
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !742, file: !609, line: 210)
!742 = !DISubprogram(name: "llabs", scope: !604, file: !604, line: 844, type: !743, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!743 = !DISubroutineType(types: !744)
!744 = !{!398, !398}
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !746, file: !609, line: 216)
!746 = !DISubprogram(name: "lldiv", scope: !604, file: !604, line: 858, type: !747, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!747 = !DISubroutineType(types: !748)
!748 = !{!734, !398, !398}
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !750, file: !609, line: 227)
!750 = !DISubprogram(name: "atoll", scope: !604, file: !604, line: 373, type: !751, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!751 = !DISubroutineType(types: !752)
!752 = !{!398, !206}
!753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !754, file: !609, line: 228)
!754 = !DISubprogram(name: "strtoll", scope: !604, file: !604, line: 200, type: !755, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!755 = !DISubroutineType(types: !756)
!756 = !{!398, !205, !713, !11}
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !758, file: !609, line: 229)
!758 = !DISubprogram(name: "strtoull", scope: !604, file: !604, line: 205, type: !759, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!759 = !DISubroutineType(types: !760)
!760 = !{!403, !205, !713, !11}
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !762, file: !609, line: 231)
!762 = !DISubprogram(name: "strtof", scope: !604, file: !604, line: 123, type: !763, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!763 = !DISubroutineType(types: !764)
!764 = !{!333, !205, !713}
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !766, file: !609, line: 232)
!766 = !DISubprogram(name: "strtold", scope: !604, file: !604, line: 126, type: !767, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!767 = !DISubroutineType(types: !768)
!768 = !{!393, !205, !713}
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !734, file: !609, line: 240)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !740, file: !609, line: 242)
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !742, file: !609, line: 244)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !773, file: !609, line: 245)
!773 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !389, file: !609, line: 213, type: !747, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !746, file: !609, line: 246)
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !750, file: !609, line: 248)
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !762, file: !609, line: 249)
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !754, file: !609, line: 250)
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !758, file: !609, line: 251)
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !766, file: !609, line: 252)
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !781, file: !783, line: 98)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !782, line: 7, baseType: !112)
!782 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!783 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdio", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !785, file: !783, line: 99)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !786, line: 84, baseType: !787)
!786 = !DIFile(filename: "/usr/include/stdio.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !788, line: 14, baseType: !789)
!788 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !788, line: 10, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !791, file: !783, line: 101)
!791 = !DISubprogram(name: "clearerr", scope: !786, file: !786, line: 757, type: !792, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !794}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !796, file: !783, line: 102)
!796 = !DISubprogram(name: "fclose", scope: !786, file: !786, line: 213, type: !797, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!797 = !DISubroutineType(types: !798)
!798 = !{!11, !794}
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !800, file: !783, line: 103)
!800 = !DISubprogram(name: "feof", scope: !786, file: !786, line: 759, type: !797, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !802, file: !783, line: 104)
!802 = !DISubprogram(name: "ferror", scope: !786, file: !786, line: 761, type: !797, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !804, file: !783, line: 105)
!804 = !DISubprogram(name: "fflush", scope: !786, file: !786, line: 218, type: !797, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !806, file: !783, line: 106)
!806 = !DISubprogram(name: "fgetc", scope: !786, file: !786, line: 485, type: !797, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !808, file: !783, line: 107)
!808 = !DISubprogram(name: "fgetpos", scope: !786, file: !786, line: 731, type: !809, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!809 = !DISubroutineType(types: !810)
!810 = !{!11, !811, !812}
!811 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !794)
!812 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !815, file: !783, line: 108)
!815 = !DISubprogram(name: "fgets", scope: !786, file: !786, line: 564, type: !816, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!816 = !DISubroutineType(types: !817)
!817 = !{!117, !275, !11, !811}
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !819, file: !783, line: 109)
!819 = !DISubprogram(name: "fopen", scope: !786, file: !786, line: 246, type: !820, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!820 = !DISubroutineType(types: !821)
!821 = !{!794, !205, !205}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !823, file: !783, line: 110)
!823 = !DISubprogram(name: "fprintf", scope: !786, file: !786, line: 326, type: !824, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!824 = !DISubroutineType(types: !825)
!825 = !{!11, !811, !205, null}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !827, file: !783, line: 111)
!827 = !DISubprogram(name: "fputc", scope: !786, file: !786, line: 521, type: !828, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!828 = !DISubroutineType(types: !829)
!829 = !{!11, !11, !794}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !831, file: !783, line: 112)
!831 = !DISubprogram(name: "fputs", scope: !786, file: !786, line: 626, type: !832, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!832 = !DISubroutineType(types: !833)
!833 = !{!11, !205, !811}
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !835, file: !783, line: 113)
!835 = !DISubprogram(name: "fread", scope: !786, file: !786, line: 646, type: !836, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!836 = !DISubroutineType(types: !837)
!837 = !{!69, !838, !69, !69, !811}
!838 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !159)
!839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !840, file: !783, line: 114)
!840 = !DISubprogram(name: "freopen", scope: !786, file: !786, line: 252, type: !841, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!841 = !DISubroutineType(types: !842)
!842 = !{!794, !205, !205, !811}
!843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !844, file: !783, line: 115)
!844 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !786, file: !786, line: 407, type: !824, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !846, file: !783, line: 116)
!846 = !DISubprogram(name: "fseek", scope: !786, file: !786, line: 684, type: !847, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!847 = !DISubroutineType(types: !848)
!848 = !{!11, !794, !62, !11}
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !850, file: !783, line: 117)
!850 = !DISubprogram(name: "fsetpos", scope: !786, file: !786, line: 736, type: !851, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!851 = !DISubroutineType(types: !852)
!852 = !{!11, !794, !853}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !856, file: !783, line: 118)
!856 = !DISubprogram(name: "ftell", scope: !786, file: !786, line: 689, type: !857, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!857 = !DISubroutineType(types: !858)
!858 = !{!62, !794}
!859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !860, file: !783, line: 119)
!860 = !DISubprogram(name: "fwrite", scope: !786, file: !786, line: 652, type: !861, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!861 = !DISubroutineType(types: !862)
!862 = !{!69, !863, !69, !69, !811}
!863 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !865, file: !783, line: 120)
!865 = !DISubprogram(name: "getc", scope: !786, file: !786, line: 486, type: !797, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !867, file: !783, line: 121)
!867 = !DISubprogram(name: "getchar", scope: !868, file: !868, line: 47, type: !699, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!868 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !870, file: !783, line: 126)
!870 = !DISubprogram(name: "perror", scope: !786, file: !786, line: 775, type: !871, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !206}
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !874, file: !783, line: 127)
!874 = !DISubprogram(name: "printf", scope: !786, file: !786, line: 332, type: !875, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!875 = !DISubroutineType(types: !876)
!876 = !{!11, !205, null}
!877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !878, file: !783, line: 128)
!878 = !DISubprogram(name: "putc", scope: !786, file: !786, line: 522, type: !828, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !880, file: !783, line: 129)
!880 = !DISubprogram(name: "putchar", scope: !868, file: !868, line: 82, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !882, file: !783, line: 130)
!882 = !DISubprogram(name: "puts", scope: !786, file: !786, line: 632, type: !632, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !884, file: !783, line: 131)
!884 = !DISubprogram(name: "remove", scope: !786, file: !786, line: 146, type: !632, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !886, file: !783, line: 132)
!886 = !DISubprogram(name: "rename", scope: !786, file: !786, line: 148, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!887 = !DISubroutineType(types: !888)
!888 = !{!11, !206, !206}
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !890, file: !783, line: 133)
!890 = !DISubprogram(name: "rewind", scope: !786, file: !786, line: 694, type: !792, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !892, file: !783, line: 134)
!892 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !786, file: !786, line: 410, type: !875, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !894, file: !783, line: 135)
!894 = !DISubprogram(name: "setbuf", scope: !786, file: !786, line: 304, type: !895, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !811, !275}
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !898, file: !783, line: 136)
!898 = !DISubprogram(name: "setvbuf", scope: !786, file: !786, line: 308, type: !899, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!899 = !DISubroutineType(types: !900)
!900 = !{!11, !811, !275, !11, !69}
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !902, file: !783, line: 137)
!902 = !DISubprogram(name: "sprintf", scope: !786, file: !786, line: 334, type: !903, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!903 = !DISubroutineType(types: !904)
!904 = !{!11, !275, !205, null}
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !906, file: !783, line: 138)
!906 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !786, file: !786, line: 412, type: !907, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!907 = !DISubroutineType(types: !908)
!908 = !{!11, !205, !205, null}
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !910, file: !783, line: 139)
!910 = !DISubprogram(name: "tmpfile", scope: !786, file: !786, line: 173, type: !911, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!911 = !DISubroutineType(types: !912)
!912 = !{!794}
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !914, file: !783, line: 141)
!914 = !DISubprogram(name: "tmpnam", scope: !786, file: !786, line: 187, type: !915, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!915 = !DISubroutineType(types: !916)
!916 = !{!117, !117}
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !918, file: !783, line: 143)
!918 = !DISubprogram(name: "ungetc", scope: !786, file: !786, line: 639, type: !828, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !920, file: !783, line: 144)
!920 = !DISubprogram(name: "vfprintf", scope: !786, file: !786, line: 341, type: !921, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!921 = !DISubroutineType(types: !922)
!922 = !{!11, !811, !205, !248}
!923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !924, file: !783, line: 145)
!924 = !DISubprogram(name: "vprintf", scope: !868, file: !868, line: 39, type: !925, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!925 = !DISubroutineType(types: !926)
!926 = !{!11, !205, !248}
!927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !928, file: !783, line: 146)
!928 = !DISubprogram(name: "vsprintf", scope: !786, file: !786, line: 349, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!929 = !DISubroutineType(types: !930)
!930 = !{!11, !275, !205, !248}
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !932, file: !783, line: 175)
!932 = !DISubprogram(name: "snprintf", scope: !786, file: !786, line: 354, type: !933, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!933 = !DISubroutineType(types: !934)
!934 = !{!11, !275, !69, !205, null}
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !936, file: !783, line: 176)
!936 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !786, file: !786, line: 451, type: !921, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !938, file: !783, line: 177)
!938 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !786, file: !786, line: 456, type: !925, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !940, file: !783, line: 178)
!940 = !DISubprogram(name: "vsnprintf", scope: !786, file: !786, line: 358, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!941 = !DISubroutineType(types: !942)
!942 = !{!11, !275, !69, !205, !248}
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !389, entity: !944, file: !783, line: 179)
!944 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !786, file: !786, line: 459, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!945 = !DISubroutineType(types: !946)
!946 = !{!11, !205, !205, !248}
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !932, file: !783, line: 185)
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !936, file: !783, line: 186)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !938, file: !783, line: 187)
!950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !940, file: !783, line: 188)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !944, file: !783, line: 189)
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !953, file: !957, line: 82)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !954, line: 48, baseType: !955)
!954 = !DIFile(filename: "/usr/include/wctype.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!957 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cwctype", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !959, file: !957, line: 83)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !960, line: 38, baseType: !48)
!960 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !98, file: !957, line: 84)
!962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !963, file: !957, line: 86)
!963 = !DISubprogram(name: "iswalnum", scope: !960, file: !960, line: 95, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!964 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !965, file: !957, line: 87)
!965 = !DISubprogram(name: "iswalpha", scope: !960, file: !960, line: 101, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !967, file: !957, line: 89)
!967 = !DISubprogram(name: "iswblank", scope: !960, file: !960, line: 146, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!968 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !969, file: !957, line: 91)
!969 = !DISubprogram(name: "iswcntrl", scope: !960, file: !960, line: 104, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !971, file: !957, line: 92)
!971 = !DISubprogram(name: "iswctype", scope: !960, file: !960, line: 159, type: !972, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!972 = !DISubroutineType(types: !973)
!973 = !{!11, !98, !959}
!974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !975, file: !957, line: 93)
!975 = !DISubprogram(name: "iswdigit", scope: !960, file: !960, line: 108, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !977, file: !957, line: 94)
!977 = !DISubprogram(name: "iswgraph", scope: !960, file: !960, line: 112, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!978 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !979, file: !957, line: 95)
!979 = !DISubprogram(name: "iswlower", scope: !960, file: !960, line: 117, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!980 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !981, file: !957, line: 96)
!981 = !DISubprogram(name: "iswprint", scope: !960, file: !960, line: 120, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!982 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !983, file: !957, line: 97)
!983 = !DISubprogram(name: "iswpunct", scope: !960, file: !960, line: 125, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !985, file: !957, line: 98)
!985 = !DISubprogram(name: "iswspace", scope: !960, file: !960, line: 130, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!986 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !987, file: !957, line: 99)
!987 = !DISubprogram(name: "iswupper", scope: !960, file: !960, line: 135, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !989, file: !957, line: 100)
!989 = !DISubprogram(name: "iswxdigit", scope: !960, file: !960, line: 140, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !991, file: !957, line: 101)
!991 = !DISubprogram(name: "towctrans", scope: !954, file: !954, line: 55, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!992 = !DISubroutineType(types: !993)
!993 = !{!98, !98, !953}
!994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !995, file: !957, line: 102)
!995 = !DISubprogram(name: "towlower", scope: !960, file: !960, line: 166, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!996 = !DISubroutineType(types: !997)
!997 = !{!98, !98}
!998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !999, file: !957, line: 103)
!999 = !DISubprogram(name: "towupper", scope: !960, file: !960, line: 169, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1001, file: !957, line: 104)
!1001 = !DISubprogram(name: "wctrans", scope: !954, file: !954, line: 52, type: !1002, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!953, !206}
!1004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1005, file: !957, line: 105)
!1005 = !DISubprogram(name: "wctype", scope: !960, file: !960, line: 155, type: !1006, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!959, !206}
!1008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1009, file: !1013, line: 77)
!1009 = !DISubprogram(name: "memchr", scope: !1010, file: !1010, line: 84, type: !1011, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1010 = !DIFile(filename: "/usr/include/string.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!52, !52, !11, !69}
!1013 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstring", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!1014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1015, file: !1013, line: 78)
!1015 = !DISubprogram(name: "memcmp", scope: !1010, file: !1010, line: 64, type: !1016, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!11, !52, !52, !69}
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1019, file: !1013, line: 79)
!1019 = !DISubprogram(name: "memcpy", scope: !1010, file: !1010, line: 43, type: !1020, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!159, !838, !863, !69}
!1022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1023, file: !1013, line: 80)
!1023 = !DISubprogram(name: "memmove", scope: !1010, file: !1010, line: 47, type: !1024, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!159, !159, !52, !69}
!1026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1027, file: !1013, line: 81)
!1027 = !DISubprogram(name: "memset", scope: !1010, file: !1010, line: 61, type: !1028, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!159, !159, !11, !69}
!1030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1031, file: !1013, line: 82)
!1031 = !DISubprogram(name: "strcat", scope: !1010, file: !1010, line: 130, type: !1032, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!117, !275, !205}
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1035, file: !1013, line: 83)
!1035 = !DISubprogram(name: "strcmp", scope: !1010, file: !1010, line: 137, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1037, file: !1013, line: 84)
!1037 = !DISubprogram(name: "strcoll", scope: !1010, file: !1010, line: 144, type: !887, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1039, file: !1013, line: 85)
!1039 = !DISubprogram(name: "strcpy", scope: !1010, file: !1010, line: 122, type: !1032, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1041, file: !1013, line: 86)
!1041 = !DISubprogram(name: "strcspn", scope: !1010, file: !1010, line: 273, type: !1042, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!69, !206, !206}
!1044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1045, file: !1013, line: 87)
!1045 = !DISubprogram(name: "strerror", scope: !1010, file: !1010, line: 397, type: !1046, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!117, !11}
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1049, file: !1013, line: 88)
!1049 = !DISubprogram(name: "strlen", scope: !1010, file: !1010, line: 385, type: !1050, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!69, !206}
!1052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1053, file: !1013, line: 89)
!1053 = !DISubprogram(name: "strncat", scope: !1010, file: !1010, line: 133, type: !1054, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!117, !275, !205, !69}
!1056 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1057, file: !1013, line: 90)
!1057 = !DISubprogram(name: "strncmp", scope: !1010, file: !1010, line: 140, type: !1058, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!11, !206, !206, !69}
!1060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1061, file: !1013, line: 91)
!1061 = !DISubprogram(name: "strncpy", scope: !1010, file: !1010, line: 125, type: !1054, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1062 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1063, file: !1013, line: 92)
!1063 = !DISubprogram(name: "strspn", scope: !1010, file: !1010, line: 277, type: !1042, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1064 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1065, file: !1013, line: 93)
!1065 = !DISubprogram(name: "strtok", scope: !1010, file: !1010, line: 336, type: !1032, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1066 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1067, file: !1013, line: 94)
!1067 = !DISubprogram(name: "strxfrm", scope: !1010, file: !1010, line: 147, type: !1068, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!69, !275, !205, !69}
!1070 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1071, file: !1013, line: 95)
!1071 = !DISubprogram(name: "strchr", scope: !1010, file: !1010, line: 219, type: !1072, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!206, !206, !11}
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1075, file: !1013, line: 96)
!1075 = !DISubprogram(name: "strpbrk", scope: !1010, file: !1010, line: 296, type: !1076, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!206, !206, !206}
!1078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1079, file: !1013, line: 97)
!1079 = !DISubprogram(name: "strrchr", scope: !1010, file: !1010, line: 246, type: !1072, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1080 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1081, file: !1013, line: 98)
!1081 = !DISubprogram(name: "strstr", scope: !1010, file: !1010, line: 323, type: !1076, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !617, file: !1083, line: 38)
!1083 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/stdlib.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!1084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !619, file: !1083, line: 39)
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !656, file: !1083, line: 40)
!1086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !624, file: !1083, line: 43)
!1087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !696, file: !1083, line: 46)
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !607, file: !1083, line: 51)
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !611, file: !1083, line: 52)
!1090 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !1091, file: !1083, line: 54)
!1091 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !2, file: !605, line: 103, type: !1092, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: true)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!1094, !1094}
!1094 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!1095 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !626, file: !1083, line: 55)
!1096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !631, file: !1083, line: 56)
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !635, file: !1083, line: 57)
!1098 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !639, file: !1083, line: 58)
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !648, file: !1083, line: 59)
!1100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !773, file: !1083, line: 60)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !660, file: !1083, line: 61)
!1102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !664, file: !1083, line: 62)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !668, file: !1083, line: 63)
!1104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !672, file: !1083, line: 64)
!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !676, file: !1083, line: 65)
!1106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !680, file: !1083, line: 67)
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !684, file: !1083, line: 68)
!1108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !688, file: !1083, line: 69)
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !692, file: !1083, line: 71)
!1110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !698, file: !1083, line: 72)
!1111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !702, file: !1083, line: 73)
!1112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !706, file: !1083, line: 74)
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !710, file: !1083, line: 75)
!1114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !716, file: !1083, line: 76)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !720, file: !1083, line: 77)
!1116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !724, file: !1083, line: 78)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !726, file: !1083, line: 80)
!1118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !730, file: !1083, line: 81)
!1119 = !{!1120}
!1120 = !DILocalVariable(name: "read_offset", scope: !30, file: !31, line: 56, type: !206)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 98304, elements: !1122)
!1122 = !{!1123}
!1123 = !DISubrange(count: 12288)
!1124 = !{%"class.std::ios_base::Init"* getelementptr inbounds ({ %"class.std::ios_base::Init", [63 x i8] }, { %"class.std::ios_base::Init", [63 x i8] }* @_ZStL8__ioinit, i32 0, i32 0), !1125, !"std::__ioinit", i1 true, i1 false}
!1125 = !{!"/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/iostream", i32 74, i32 25}
!1126 = !{[12288 x i8]* getelementptr inbounds ({ [12288 x i8], [3072 x i8] }, { [12288 x i8], [3072 x i8] }* @_ZZ23ExtendSpeculationWindowvE6buffer, i32 0, i32 0), !1127, !"buffer", i1 false, i1 false}
!1127 = !{!"utils.cc", i32 55, i32 15}
!1128 = !{[27 x i8]* getelementptr inbounds ({ [27 x i8], [37 x i8] }, { [27 x i8], [37 x i8] }* @.str, i32 0, i32 0), !1129, !"<string literal>", i1 false, i1 false}
!1129 = !{!"utils.cc", i32 69, i32 18}
!1130 = !{i32 2, !"Dwarf Version", i32 4}
!1131 = !{i32 2, !"Debug Info Version", i32 3}
!1132 = !{i32 1, !"wchar_size", i32 4}
!1133 = !{!"clang version 7.0.1 (tags/RELEASE_701/final)"}
!1134 = distinct !DISubprogram(name: "FlushFromDataCache", linkageName: "_Z18FlushFromDataCachePKvS0_", scope: !31, file: !31, line: 39, type: !1135, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !34, retainedNodes: !1137)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !52, !52}
!1137 = !{!1138, !1139}
!1138 = !DILocalVariable(name: "begin", arg: 1, scope: !1134, file: !31, line: 39, type: !52)
!1139 = !DILocalVariable(name: "end", arg: 2, scope: !1134, file: !31, line: 39, type: !52)
!1140 = !DILocation(line: 39, column: 37, scope: !1134)
!1141 = !DILocation(line: 39, column: 56, scope: !1134)
!1142 = !DILocation(line: 40, column: 16, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !31, line: 40, column: 3)
!1144 = distinct !DILexicalBlock(scope: !1134, file: !31, line: 40, column: 3)
!1145 = !DILocation(line: 40, column: 3, scope: !1144)
!1146 = !DILocalVariable(name: "address", arg: 1, scope: !1147, file: !1148, line: 31, type: !52)
!1147 = distinct !DISubprogram(name: "FlushDataCacheLineNoBarrier", linkageName: "_Z27FlushDataCacheLineNoBarrierPKv", scope: !1148, file: !1148, line: 31, type: !1149, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !34, retainedNodes: !1151)
!1148 = !DIFile(filename: "./instr_x86.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null, !52}
!1151 = !{!1146}
!1152 = !DILocation(line: 31, column: 53, scope: !1147, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 41, column: 5, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1143, file: !31, line: 40, column: 60)
!1155 = !DILocation(line: 32, column: 3, scope: !1147, inlinedAt: !1153)
!1156 = !DILocalVariable(name: "addr", arg: 1, scope: !1157, file: !31, line: 28, type: !52)
!1157 = distinct !DISubprogram(name: "StartOfNextCacheLine", linkageName: "_ZN12_GLOBAL__N_120StartOfNextCacheLineEPKv", scope: !1158, file: !31, line: 28, type: !1159, isLocal: true, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !34, retainedNodes: !1161)
!1158 = !DINamespace(scope: null)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!52, !52}
!1161 = !{!1156, !1162, !1163}
!1162 = !DILocalVariable(name: "addr_n", scope: !1157, file: !31, line: 29, type: !48)
!1163 = !DILocalVariable(name: "next_n", scope: !1157, file: !31, line: 33, type: !48)
!1164 = !DILocation(line: 28, column: 46, scope: !1157, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 40, column: 31, scope: !1143)
!1166 = !DILocation(line: 29, column: 17, scope: !1157, inlinedAt: !1165)
!1167 = !DILocation(line: 29, column: 8, scope: !1157, inlinedAt: !1165)
!1168 = !DILocation(line: 33, column: 25, scope: !1157, inlinedAt: !1165)
!1169 = !DILocation(line: 33, column: 44, scope: !1157, inlinedAt: !1165)
!1170 = !DILocation(line: 33, column: 8, scope: !1157, inlinedAt: !1165)
!1171 = !DILocation(line: 34, column: 10, scope: !1157, inlinedAt: !1165)
!1172 = distinct !{!1172, !1145, !1173}
!1173 = !DILocation(line: 42, column: 3, scope: !1144)
!1174 = !DILocation(line: 27, column: 3, scope: !1175, inlinedAt: !1177)
!1175 = distinct !DISubprogram(name: "MemoryAndSpeculationBarrier", linkageName: "_Z27MemoryAndSpeculationBarrierv", scope: !1148, file: !1148, line: 25, type: !32, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !34, retainedNodes: !1176)
!1176 = !{}
!1177 = distinct !DILocation(line: 43, column: 3, scope: !1134)
!1178 = !DILocation(line: 28, column: 3, scope: !1175, inlinedAt: !1177)
!1179 = !DILocation(line: 44, column: 1, scope: !1134)
!1180 = !DILocation(line: 56, column: 15, scope: !30)
!1181 = !DILocation(line: 39, column: 37, scope: !1134, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 58, column: 3, scope: !30)
!1183 = !DILocation(line: 39, column: 56, scope: !1134, inlinedAt: !1182)
!1184 = !DILocation(line: 31, column: 53, scope: !1147, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 41, column: 5, scope: !1154, inlinedAt: !1182)
!1186 = !DILocation(line: 32, column: 3, scope: !1147, inlinedAt: !1185)
!1187 = !DILocation(line: 28, column: 46, scope: !1157, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 40, column: 31, scope: !1143, inlinedAt: !1182)
!1189 = !DILocation(line: 29, column: 17, scope: !1157, inlinedAt: !1188)
!1190 = !DILocation(line: 29, column: 8, scope: !1157, inlinedAt: !1188)
!1191 = !DILocation(line: 33, column: 25, scope: !1157, inlinedAt: !1188)
!1192 = !DILocation(line: 33, column: 44, scope: !1157, inlinedAt: !1188)
!1193 = !DILocation(line: 33, column: 8, scope: !1157, inlinedAt: !1188)
!1194 = !DILocation(line: 34, column: 10, scope: !1157, inlinedAt: !1188)
!1195 = !DILocation(line: 40, column: 16, scope: !1143, inlinedAt: !1182)
!1196 = !DILocation(line: 40, column: 3, scope: !1144, inlinedAt: !1182)
!1197 = !DILocation(line: 27, column: 3, scope: !1175, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 43, column: 3, scope: !1134, inlinedAt: !1182)
!1199 = !DILocation(line: 28, column: 3, scope: !1175, inlinedAt: !1198)
!1200 = !DILocalVariable(name: "p", arg: 1, scope: !1201, file: !1202, line: 20, type: !52)
!1201 = distinct !DISubprogram(name: "ForceRead", linkageName: "_Z9ForceReadPKv", scope: !1202, file: !1202, line: 20, type: !1149, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, unit: !34, retainedNodes: !1203)
!1202 = !DIFile(filename: "./utils.h", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!1203 = !{!1200}
!1204 = !DILocation(line: 20, column: 28, scope: !1201, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 59, column: 3, scope: !30)
!1206 = !DILocation(line: 21, column: 9, scope: !1201, inlinedAt: !1205)
!1207 = !{!1208, !1208, i64 0}
!1208 = !{!"omnipotent char", !1209, i64 0}
!1209 = !{!"Simple C++ TBAA"}
!1210 = !DILocation(line: 60, column: 1, scope: !30)
!1211 = distinct !DISubprogram(name: "PinToTheFirstCore", linkageName: "_Z17PinToTheFirstCorev", scope: !31, file: !31, line: 63, type: !32, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !34, retainedNodes: !1212)
!1212 = !{!1213, !1221, !1223}
!1213 = !DILocalVariable(name: "set", scope: !1211, file: !31, line: 64, type: !1214)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_set_t", file: !47, line: 42, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !47, line: 39, size: 1024, flags: DIFlagTypePassByValue | DIFlagTrivial, elements: !1216, identifier: "_ZTS9cpu_set_t")
!1216 = !{!1217}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "__bits", scope: !1215, file: !47, line: 41, baseType: !1218, size: 1024)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1024, elements: !1219)
!1219 = !{!1220}
!1220 = !DISubrange(count: 16)
!1221 = !DILocalVariable(name: "__cpu", scope: !1222, file: !31, line: 66, type: !69)
!1222 = distinct !DILexicalBlock(scope: !1211, file: !31, line: 66, column: 3)
!1223 = !DILocalVariable(name: "res", scope: !1211, file: !31, line: 67, type: !11)
!1224 = !DILocation(line: 63, scope: !1211)
!1225 = !DILocation(line: 64, column: 3, scope: !1211)
!1226 = !DILocation(line: 65, column: 3, scope: !1211)
!1227 = !DILocation(line: 66, column: 3, scope: !1222)
!1228 = !{!1229, !1229, i64 0}
!1229 = !{!"long", !1208, i64 0}
!1230 = !DILocation(line: 67, column: 31, scope: !1211)
!1231 = !DILocation(line: 64, column: 13, scope: !1211)
!1232 = !DILocation(line: 67, column: 13, scope: !1211)
!1233 = !DILocation(line: 67, column: 7, scope: !1211)
!1234 = !DILocation(line: 68, column: 11, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1211, file: !31, line: 68, column: 7)
!1236 = !DILocation(line: 68, column: 7, scope: !1211)
!1237 = !DILocation(line: 69, column: 15, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1235, file: !31, line: 68, column: 17)
!1239 = !DILocalVariable(name: "this", arg: 1, scope: !1240, type: !1255, flags: DIFlagArtificial | DIFlagObjectPointer)
!1240 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEPFRSoS_E", scope: !1242, file: !1241, line: 108, type: !1244, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !34, declaration: !1252, retainedNodes: !1253)
!1241 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/ostream", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!1242 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::char_traits<char> >", scope: !2, file: !1243, line: 359, flags: DIFlagFwdDecl, identifier: "_ZTSSo")
!1243 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/ostream.tcc", directory: "/usr/local/google/home/zbrid/sanitizer/safeside/demos/spectre_v1")
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!1246, !1248, !1249}
!1246 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ostream_type", scope: !1242, file: !1241, line: 71, baseType: !1242)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!1246, !1246}
!1252 = !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEPFRSoS_E", scope: !1242, file: !1241, line: 108, type: !1244, isLocal: false, isDefinition: false, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: true)
!1253 = !{!1239, !1254}
!1254 = !DILocalVariable(name: "__pf", arg: 2, scope: !1240, file: !1241, line: 108, type: !1249)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1256 = !DILocation(line: 0, scope: !1240, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 69, column: 47, scope: !1238)
!1258 = !DILocation(line: 108, column: 36, scope: !1240, inlinedAt: !1257)
!1259 = !DILocation(line: 113, column: 9, scope: !1240, inlinedAt: !1257)
!1260 = !DILocation(line: 70, column: 5, scope: !1238)
!1261 = !DILocation(line: 72, column: 1, scope: !1211)
!1262 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_utils.cc", scope: !31, file: !31, type: !1263, isLocal: true, isDefinition: true, flags: DIFlagArtificial, isOptimized: true, unit: !34, retainedNodes: !1176)
!1263 = !DISubroutineType(types: !1176)
!1264 = !DILocation(line: 74, column: 25, scope: !1265, inlinedAt: !1266)
!1265 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !3, file: !3, line: 74, type: !32, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !34, retainedNodes: !1176)
!1266 = distinct !DILocation(line: 0, scope: !1262)
