; ModuleID = 'pairecho.bc'
source_filename = "kp_kv_master.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.kp_kv_master_struct = type { i32, %struct.kp_kvstore_struct*, i32, i32 }
%struct.kp_kvstore_struct = type opaque
%struct.kp_ht_entry_struct = type { i8*, %struct.kp_vt_struct* }
%struct.kp_vt_struct = type opaque
%struct.kp_commit_record_struct = type opaque

@stdout = external global %struct._IO_FILE*, align 8
@stdin = external global %struct._IO_FILE*, align 8
@kp_master_id_count = global i32 0, align 4, !dbg !0
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [63 x i8] c"KP: Fatal error (%lu: %s): got use_nvm = false, unexpectedly!\0A\00", align 1
@__func__.kp_kv_master_create = private unnamed_addr constant [20 x i8] c"kp_kv_master_create\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"ERROR: %lu: %s: kp_calloc(kp_kv_master) returned error\0A\00", align 1
@mtm_enable_trace = external global i32, align 4
@tstr = external thread_local global [128 x i8], align 16
@.str.2 = private unnamed_addr constant [25 x i8] c"%d:%llu:%s:%p:%lu:%s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PM_W\00", align 1
@tsz = external thread_local global i64, align 8
@trace_marker = external global i32, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"ERROR: %lu: %s: hit maximum id count for kp_masters: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"ERROR: %lu: %s: kp_kvstore_create() returned error\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"pair-\00", section "llvm.metadata"
@.str.7 = private unnamed_addr constant [15 x i8] c"kp_kv_master.c\00", section "llvm.metadata"
@.str.8 = private unnamed_addr constant [8 x i8] c"NvmCode\00", section "llvm.metadata"
@.str.9 = private unnamed_addr constant [32 x i8] c"ERROR: %lu: %s: master is NULL\0A\00", align 1
@__func__.kp_master_get_id = private unnamed_addr constant [17 x i8] c"kp_master_get_id\00", align 1
@__func__.kp_master_get_mode = private unnamed_addr constant [19 x i8] c"kp_master_get_mode\00", align 1
@__func__.kp_master_get = private unnamed_addr constant [14 x i8] c"kp_master_get\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"ERROR: %lu: %s: kp_get() returned error=%d, passing it back up\0A\00", align 1
@.str.11 = private unnamed_addr constant [69 x i8] c"ERROR: %lu: %s: kp_get() returned unexpected value=%d, returning -1\0A\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"ERROR: %lu: %s: got a null argument: master=%p, lookup_entry=%p\0A\00", align 1
@__func__.kp_master_get_by_snapshot = private unnamed_addr constant [26 x i8] c"kp_master_get_by_snapshot\00", align 1
@.str.13 = private unnamed_addr constant [81 x i8] c"ERROR: %lu: %s: kp_get_version_snapshot() returned error=%d, passing it back up\0A\00", align 1
@__func__.kp_master_get_latest_snapshot = private unnamed_addr constant [30 x i8] c"kp_master_get_latest_snapshot\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"ERROR: %lu: %s: got a null argument: master=%p, cr=%p\0A\00", align 1
@__func__.kp_master_merge_commit = private unnamed_addr constant [23 x i8] c"kp_master_merge_commit\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"ERROR: %lu: %s: kp_commit(master->kv) returned error!\0A\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"KP: Fatal error (%lu: %s): invalid *new_snapshot here: %ju\0A\00", align 1
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* bitcast (i32 (%struct.kp_kv_master_struct**, i32, i64, i1, i1)* @kp_kv_master_create to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 66 }], section "llvm.metadata"

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) #0 !dbg !41 {
entry:
  %__fmt.addr = alloca i8*, align 8
  %__arg.addr = alloca %struct.__va_list_tag*, align 8
  store i8* %__fmt, i8** %__fmt.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %__fmt.addr, metadata !54, metadata !DIExpression()), !dbg !60
  store %struct.__va_list_tag* %__arg, %struct.__va_list_tag** %__arg.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %__arg.addr, metadata !55, metadata !DIExpression()), !dbg !61
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !62, !tbaa !56
  %1 = load i8*, i8** %__fmt.addr, align 8, !dbg !63, !tbaa !56
  %2 = load %struct.__va_list_tag*, %struct.__va_list_tag** %__arg.addr, align 8, !dbg !64, !tbaa !56
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %2), !dbg !65
  ret i32 %call, !dbg !66
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @getchar() #0 !dbg !67 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !71, !tbaa !56
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0), !dbg !72
  ret i32 %call, !dbg !73
}

declare i32 @_IO_getc(%struct._IO_FILE*) #2

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) #0 !dbg !74 {
entry:
  %__fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %__fp, %struct._IO_FILE** %__fp.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %__fp.addr, metadata !134, metadata !DIExpression()), !dbg !135
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %__fp.addr, align 8, !dbg !136, !tbaa !56
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 1, !dbg !136
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !136, !tbaa !137
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %__fp.addr, align 8, !dbg !136, !tbaa !56
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i32 0, i32 2, !dbg !136
  %3 = load i8*, i8** %_IO_read_end, align 8, !dbg !136, !tbaa !142
  %cmp = icmp uge i8* %1, %3, !dbg !136
  %conv = zext i1 %cmp to i32, !dbg !136
  %conv1 = sext i32 %conv to i64, !dbg !136
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !136
  %tobool = icmp ne i64 %expval, 0, !dbg !136
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !136

cond.true:                                        ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %__fp.addr, align 8, !dbg !136, !tbaa !56
  %call = call i32 @__uflow(%struct._IO_FILE* %4), !dbg !136
  br label %cond.end, !dbg !136

cond.false:                                       ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %__fp.addr, align 8, !dbg !136, !tbaa !56
  %_IO_read_ptr2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %5, i32 0, i32 1, !dbg !136
  %6 = load i8*, i8** %_IO_read_ptr2, align 8, !dbg !136, !tbaa !137
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1, !dbg !136
  store i8* %incdec.ptr, i8** %_IO_read_ptr2, align 8, !dbg !136, !tbaa !137
  %7 = load i8, i8* %6, align 1, !dbg !136, !tbaa !143
  %conv3 = zext i8 %7 to i32, !dbg !136
  br label %cond.end, !dbg !136

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !136
  ret i32 %cond, !dbg !144
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare i32 @__uflow(%struct._IO_FILE*) #2

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @getc_unlocked(%struct._IO_FILE* %__fp) #0 !dbg !145 {
entry:
  %__fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %__fp, %struct._IO_FILE** %__fp.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %__fp.addr, metadata !147, metadata !DIExpression()), !dbg !148
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %__fp.addr, align 8, !dbg !149, !tbaa !56
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 1, !dbg !149
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !149, !tbaa !137
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %__fp.addr, align 8, !dbg !149, !tbaa !56
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i32 0, i32 2, !dbg !149
  %3 = load i8*, i8** %_IO_read_end, align 8, !dbg !149, !tbaa !142
  %cmp = icmp uge i8* %1, %3, !dbg !149
  %conv = zext i1 %cmp to i32, !dbg !149
  %conv1 = sext i32 %conv to i64, !dbg !149
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !149
  %tobool = icmp ne i64 %expval, 0, !dbg !149
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !149

cond.true:                                        ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %__fp.addr, align 8, !dbg !149, !tbaa !56
  %call = call i32 @__uflow(%struct._IO_FILE* %4), !dbg !149
  br label %cond.end, !dbg !149

cond.false:                                       ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %__fp.addr, align 8, !dbg !149, !tbaa !56
  %_IO_read_ptr2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %5, i32 0, i32 1, !dbg !149
  %6 = load i8*, i8** %_IO_read_ptr2, align 8, !dbg !149, !tbaa !137
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1, !dbg !149
  store i8* %incdec.ptr, i8** %_IO_read_ptr2, align 8, !dbg !149, !tbaa !137
  %7 = load i8, i8* %6, align 1, !dbg !149, !tbaa !143
  %conv3 = zext i8 %7 to i32, !dbg !149
  br label %cond.end, !dbg !149

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !149
  ret i32 %cond, !dbg !150
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @getchar_unlocked() #0 !dbg !151 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !152, !tbaa !56
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 1, !dbg !152
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !152, !tbaa !137
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !152, !tbaa !56
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i32 0, i32 2, !dbg !152
  %3 = load i8*, i8** %_IO_read_end, align 8, !dbg !152, !tbaa !142
  %cmp = icmp uge i8* %1, %3, !dbg !152
  %conv = zext i1 %cmp to i32, !dbg !152
  %conv1 = sext i32 %conv to i64, !dbg !152
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !152
  %tobool = icmp ne i64 %expval, 0, !dbg !152
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !152

cond.true:                                        ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !152, !tbaa !56
  %call = call i32 @__uflow(%struct._IO_FILE* %4), !dbg !152
  br label %cond.end, !dbg !152

cond.false:                                       ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !152, !tbaa !56
  %_IO_read_ptr2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %5, i32 0, i32 1, !dbg !152
  %6 = load i8*, i8** %_IO_read_ptr2, align 8, !dbg !152, !tbaa !137
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1, !dbg !152
  store i8* %incdec.ptr, i8** %_IO_read_ptr2, align 8, !dbg !152, !tbaa !137
  %7 = load i8, i8* %6, align 1, !dbg !152, !tbaa !143
  %conv3 = zext i8 %7 to i32, !dbg !152
  br label %cond.end, !dbg !152

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !152
  ret i32 %cond, !dbg !153
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @putchar(i32 %__c) #0 !dbg !154 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, i32* %__c.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__c.addr, metadata !158, metadata !DIExpression()), !dbg !160
  %0 = load i32, i32* %__c.addr, align 4, !dbg !161, !tbaa !159
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !162, !tbaa !56
  %call = call i32 @_IO_putc(i32 %0, %struct._IO_FILE* %1), !dbg !163
  ret i32 %call, !dbg !164
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) #0 !dbg !165 {
entry:
  %__c.addr = alloca i32, align 4
  %__stream.addr = alloca %struct._IO_FILE*, align 8
  store i32 %__c, i32* %__c.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__c.addr, metadata !169, metadata !DIExpression()), !dbg !171
  store %struct._IO_FILE* %__stream, %struct._IO_FILE** %__stream.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %__stream.addr, metadata !170, metadata !DIExpression()), !dbg !172
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %__stream.addr, align 8, !dbg !173, !tbaa !56
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 5, !dbg !173
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !173, !tbaa !174
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %__stream.addr, align 8, !dbg !173, !tbaa !56
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i32 0, i32 6, !dbg !173
  %3 = load i8*, i8** %_IO_write_end, align 8, !dbg !173, !tbaa !175
  %cmp = icmp uge i8* %1, %3, !dbg !173
  %conv = zext i1 %cmp to i32, !dbg !173
  %conv1 = sext i32 %conv to i64, !dbg !173
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !173
  %tobool = icmp ne i64 %expval, 0, !dbg !173
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !173

cond.true:                                        ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %__stream.addr, align 8, !dbg !173, !tbaa !56
  %5 = load i32, i32* %__c.addr, align 4, !dbg !173, !tbaa !159
  %conv2 = trunc i32 %5 to i8, !dbg !173
  %conv3 = zext i8 %conv2 to i32, !dbg !173
  %call = call i32 @__overflow(%struct._IO_FILE* %4, i32 %conv3), !dbg !173
  br label %cond.end, !dbg !173

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %__c.addr, align 4, !dbg !173, !tbaa !159
  %conv4 = trunc i32 %6 to i8, !dbg !173
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %__stream.addr, align 8, !dbg !173, !tbaa !56
  %_IO_write_ptr5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %7, i32 0, i32 5, !dbg !173
  %8 = load i8*, i8** %_IO_write_ptr5, align 8, !dbg !173, !tbaa !174
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1, !dbg !173
  store i8* %incdec.ptr, i8** %_IO_write_ptr5, align 8, !dbg !173, !tbaa !174
  store i8 %conv4, i8* %8, align 1, !dbg !173, !tbaa !143
  %conv6 = zext i8 %conv4 to i32, !dbg !173
  br label %cond.end, !dbg !173

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !173
  ret i32 %cond, !dbg !176
}

declare i32 @__overflow(%struct._IO_FILE*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) #0 !dbg !177 {
entry:
  %__c.addr = alloca i32, align 4
  %__stream.addr = alloca %struct._IO_FILE*, align 8
  store i32 %__c, i32* %__c.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__c.addr, metadata !179, metadata !DIExpression()), !dbg !181
  store %struct._IO_FILE* %__stream, %struct._IO_FILE** %__stream.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %__stream.addr, metadata !180, metadata !DIExpression()), !dbg !182
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %__stream.addr, align 8, !dbg !183, !tbaa !56
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 5, !dbg !183
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !183, !tbaa !174
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %__stream.addr, align 8, !dbg !183, !tbaa !56
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i32 0, i32 6, !dbg !183
  %3 = load i8*, i8** %_IO_write_end, align 8, !dbg !183, !tbaa !175
  %cmp = icmp uge i8* %1, %3, !dbg !183
  %conv = zext i1 %cmp to i32, !dbg !183
  %conv1 = sext i32 %conv to i64, !dbg !183
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !183
  %tobool = icmp ne i64 %expval, 0, !dbg !183
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !183

cond.true:                                        ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %__stream.addr, align 8, !dbg !183, !tbaa !56
  %5 = load i32, i32* %__c.addr, align 4, !dbg !183, !tbaa !159
  %conv2 = trunc i32 %5 to i8, !dbg !183
  %conv3 = zext i8 %conv2 to i32, !dbg !183
  %call = call i32 @__overflow(%struct._IO_FILE* %4, i32 %conv3), !dbg !183
  br label %cond.end, !dbg !183

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %__c.addr, align 4, !dbg !183, !tbaa !159
  %conv4 = trunc i32 %6 to i8, !dbg !183
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %__stream.addr, align 8, !dbg !183, !tbaa !56
  %_IO_write_ptr5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %7, i32 0, i32 5, !dbg !183
  %8 = load i8*, i8** %_IO_write_ptr5, align 8, !dbg !183, !tbaa !174
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1, !dbg !183
  store i8* %incdec.ptr, i8** %_IO_write_ptr5, align 8, !dbg !183, !tbaa !174
  store i8 %conv4, i8* %8, align 1, !dbg !183, !tbaa !143
  %conv6 = zext i8 %conv4 to i32, !dbg !183
  br label %cond.end, !dbg !183

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !183
  ret i32 %cond, !dbg !184
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @putchar_unlocked(i32 %__c) #0 !dbg !185 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, i32* %__c.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__c.addr, metadata !187, metadata !DIExpression()), !dbg !188
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !189, !tbaa !56
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 5, !dbg !189
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !189, !tbaa !174
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !189, !tbaa !56
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i32 0, i32 6, !dbg !189
  %3 = load i8*, i8** %_IO_write_end, align 8, !dbg !189, !tbaa !175
  %cmp = icmp uge i8* %1, %3, !dbg !189
  %conv = zext i1 %cmp to i32, !dbg !189
  %conv1 = sext i32 %conv to i64, !dbg !189
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !189
  %tobool = icmp ne i64 %expval, 0, !dbg !189
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !189

cond.true:                                        ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !189, !tbaa !56
  %5 = load i32, i32* %__c.addr, align 4, !dbg !189, !tbaa !159
  %conv2 = trunc i32 %5 to i8, !dbg !189
  %conv3 = zext i8 %conv2 to i32, !dbg !189
  %call = call i32 @__overflow(%struct._IO_FILE* %4, i32 %conv3), !dbg !189
  br label %cond.end, !dbg !189

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %__c.addr, align 4, !dbg !189, !tbaa !159
  %conv4 = trunc i32 %6 to i8, !dbg !189
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !189, !tbaa !56
  %_IO_write_ptr5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %7, i32 0, i32 5, !dbg !189
  %8 = load i8*, i8** %_IO_write_ptr5, align 8, !dbg !189, !tbaa !174
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1, !dbg !189
  store i8* %incdec.ptr, i8** %_IO_write_ptr5, align 8, !dbg !189, !tbaa !174
  store i8 %conv4, i8* %8, align 1, !dbg !189, !tbaa !143
  %conv6 = zext i8 %conv4 to i32, !dbg !189
  br label %cond.end, !dbg !189

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !189
  ret i32 %cond, !dbg !190
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) #0 !dbg !191 {
entry:
  %__lineptr.addr = alloca i8**, align 8
  %__n.addr = alloca i64*, align 8
  %__stream.addr = alloca %struct._IO_FILE*, align 8
  store i8** %__lineptr, i8*** %__lineptr.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8*** %__lineptr.addr, metadata !197, metadata !DIExpression()), !dbg !200
  store i64* %__n, i64** %__n.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i64** %__n.addr, metadata !198, metadata !DIExpression()), !dbg !201
  store %struct._IO_FILE* %__stream, %struct._IO_FILE** %__stream.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %__stream.addr, metadata !199, metadata !DIExpression()), !dbg !202
  %0 = load i8**, i8*** %__lineptr.addr, align 8, !dbg !203, !tbaa !56
  %1 = load i64*, i64** %__n.addr, align 8, !dbg !204, !tbaa !56
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %__stream.addr, align 8, !dbg !205, !tbaa !56
  %call = call i64 @__getdelim(i8** %0, i64* %1, i32 10, %struct._IO_FILE* %2), !dbg !206
  ret i64 %call, !dbg !207
}

declare i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) #2

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @feof_unlocked(%struct._IO_FILE* %__stream) #0 !dbg !208 {
entry:
  %__stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %__stream, %struct._IO_FILE** %__stream.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %__stream.addr, metadata !210, metadata !DIExpression()), !dbg !211
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %__stream.addr, align 8, !dbg !212, !tbaa !56
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 0, !dbg !212
  %1 = load i32, i32* %_flags, align 8, !dbg !212, !tbaa !213
  %and = and i32 %1, 16, !dbg !212
  %cmp = icmp ne i32 %and, 0, !dbg !212
  %conv = zext i1 %cmp to i32, !dbg !212
  ret i32 %conv, !dbg !214
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @ferror_unlocked(%struct._IO_FILE* %__stream) #0 !dbg !215 {
entry:
  %__stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %__stream, %struct._IO_FILE** %__stream.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %__stream.addr, metadata !217, metadata !DIExpression()), !dbg !218
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %__stream.addr, align 8, !dbg !219, !tbaa !56
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 0, !dbg !219
  %1 = load i32, i32* %_flags, align 8, !dbg !219, !tbaa !213
  %and = and i32 %1, 32, !dbg !219
  %cmp = icmp ne i32 %and, 0, !dbg !219
  %conv = zext i1 %cmp to i32, !dbg !219
  ret i32 %conv, !dbg !220
}

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #4 !dbg !221 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !226, metadata !DIExpression()), !dbg !227
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !228, !tbaa !56
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #12, !dbg !229
  %conv = trunc i64 %call to i32, !dbg !230
  ret i32 %conv, !dbg !231
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #5

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i64 @atol(i8* nonnull %__nptr) #4 !dbg !232 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !236, metadata !DIExpression()), !dbg !237
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !238, !tbaa !56
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #12, !dbg !239
  ret i64 %call, !dbg !240
}

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i64 @atoll(i8* nonnull %__nptr) #4 !dbg !241 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !246, metadata !DIExpression()), !dbg !247
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !248, !tbaa !56
  %call = call i64 @strtoll(i8* %0, i8** null, i32 10) #12, !dbg !249
  ret i64 %call, !dbg !250
}

; Function Attrs: nounwind
declare i64 @strtoll(i8*, i8**, i32) #5

; Function Attrs: inlinehint nounwind readnone uwtable
define available_externally i32 @gnu_dev_major(i64 %__dev) #6 !dbg !251 {
entry:
  %__dev.addr = alloca i64, align 8
  store i64 %__dev, i64* %__dev.addr, align 8, !tbaa !257
  call void @llvm.dbg.declare(metadata i64* %__dev.addr, metadata !256, metadata !DIExpression()), !dbg !259
  %0 = load i64, i64* %__dev.addr, align 8, !dbg !260, !tbaa !257
  %shr = lshr i64 %0, 8, !dbg !261
  %and = and i64 %shr, 4095, !dbg !262
  %1 = load i64, i64* %__dev.addr, align 8, !dbg !263, !tbaa !257
  %shr1 = lshr i64 %1, 32, !dbg !264
  %conv = trunc i64 %shr1 to i32, !dbg !265
  %and2 = and i32 %conv, -4096, !dbg !266
  %conv3 = zext i32 %and2 to i64, !dbg !267
  %or = or i64 %and, %conv3, !dbg !268
  %conv4 = trunc i64 %or to i32, !dbg !269
  ret i32 %conv4, !dbg !270
}

; Function Attrs: inlinehint nounwind readnone uwtable
define available_externally i32 @gnu_dev_minor(i64 %__dev) #6 !dbg !271 {
entry:
  %__dev.addr = alloca i64, align 8
  store i64 %__dev, i64* %__dev.addr, align 8, !tbaa !257
  call void @llvm.dbg.declare(metadata i64* %__dev.addr, metadata !273, metadata !DIExpression()), !dbg !274
  %0 = load i64, i64* %__dev.addr, align 8, !dbg !275, !tbaa !257
  %and = and i64 %0, 255, !dbg !276
  %1 = load i64, i64* %__dev.addr, align 8, !dbg !277, !tbaa !257
  %shr = lshr i64 %1, 12, !dbg !278
  %conv = trunc i64 %shr to i32, !dbg !279
  %and1 = and i32 %conv, -256, !dbg !280
  %conv2 = zext i32 %and1 to i64, !dbg !281
  %or = or i64 %and, %conv2, !dbg !282
  %conv3 = trunc i64 %or to i32, !dbg !283
  ret i32 %conv3, !dbg !284
}

; Function Attrs: inlinehint nounwind readnone uwtable
define available_externally i64 @gnu_dev_makedev(i32 %__major, i32 %__minor) #6 !dbg !285 {
entry:
  %__major.addr = alloca i32, align 4
  %__minor.addr = alloca i32, align 4
  store i32 %__major, i32* %__major.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__major.addr, metadata !289, metadata !DIExpression()), !dbg !291
  store i32 %__minor, i32* %__minor.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__minor.addr, metadata !290, metadata !DIExpression()), !dbg !291
  %0 = load i32, i32* %__minor.addr, align 4, !dbg !292, !tbaa !159
  %and = and i32 %0, 255, !dbg !293
  %1 = load i32, i32* %__major.addr, align 4, !dbg !294, !tbaa !159
  %and1 = and i32 %1, 4095, !dbg !295
  %shl = shl i32 %and1, 8, !dbg !296
  %or = or i32 %and, %shl, !dbg !297
  %conv = zext i32 %or to i64, !dbg !298
  %2 = load i32, i32* %__minor.addr, align 4, !dbg !299, !tbaa !159
  %and2 = and i32 %2, -256, !dbg !300
  %conv3 = zext i32 %and2 to i64, !dbg !301
  %shl4 = shl i64 %conv3, 12, !dbg !302
  %or5 = or i64 %conv, %shl4, !dbg !303
  %3 = load i32, i32* %__major.addr, align 4, !dbg !304, !tbaa !159
  %and6 = and i32 %3, -4096, !dbg !305
  %conv7 = zext i32 %and6 to i64, !dbg !306
  %shl8 = shl i64 %conv7, 32, !dbg !307
  %or9 = or i64 %or5, %shl8, !dbg !308
  ret i64 %or9, !dbg !309
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i8* @bsearch(i8* nonnull %__key, i8* nonnull %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* nonnull %__compar) #0 !dbg !310 {
entry:
  %retval = alloca i8*, align 8
  %__key.addr = alloca i8*, align 8
  %__base.addr = alloca i8*, align 8
  %__nmemb.addr = alloca i64, align 8
  %__size.addr = alloca i64, align 8
  %__compar.addr = alloca i32 (i8*, i8*)*, align 8
  %__l = alloca i64, align 8
  %__u = alloca i64, align 8
  %__idx = alloca i64, align 8
  %__p = alloca i8*, align 8
  %__comparison = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8* %__key, i8** %__key.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %__key.addr, metadata !321, metadata !DIExpression()), !dbg !331
  store i8* %__base, i8** %__base.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %__base.addr, metadata !322, metadata !DIExpression()), !dbg !332
  store i64 %__nmemb, i64* %__nmemb.addr, align 8, !tbaa !333
  call void @llvm.dbg.declare(metadata i64* %__nmemb.addr, metadata !323, metadata !DIExpression()), !dbg !334
  store i64 %__size, i64* %__size.addr, align 8, !tbaa !333
  call void @llvm.dbg.declare(metadata i64* %__size.addr, metadata !324, metadata !DIExpression()), !dbg !335
  store i32 (i8*, i8*)* %__compar, i32 (i8*, i8*)** %__compar.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*)** %__compar.addr, metadata !325, metadata !DIExpression()), !dbg !336
  %0 = bitcast i64* %__l to i8*, !dbg !337
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #12, !dbg !337
  call void @llvm.dbg.declare(metadata i64* %__l, metadata !326, metadata !DIExpression()), !dbg !338
  %1 = bitcast i64* %__u to i8*, !dbg !337
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #12, !dbg !337
  call void @llvm.dbg.declare(metadata i64* %__u, metadata !327, metadata !DIExpression()), !dbg !339
  %2 = bitcast i64* %__idx to i8*, !dbg !337
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #12, !dbg !337
  call void @llvm.dbg.declare(metadata i64* %__idx, metadata !328, metadata !DIExpression()), !dbg !340
  %3 = bitcast i8** %__p to i8*, !dbg !341
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #12, !dbg !341
  call void @llvm.dbg.declare(metadata i8** %__p, metadata !329, metadata !DIExpression()), !dbg !342
  %4 = bitcast i32* %__comparison to i8*, !dbg !343
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #12, !dbg !343
  call void @llvm.dbg.declare(metadata i32* %__comparison, metadata !330, metadata !DIExpression()), !dbg !344
  store i64 0, i64* %__l, align 8, !dbg !345, !tbaa !333
  %5 = load i64, i64* %__nmemb.addr, align 8, !dbg !346, !tbaa !333
  store i64 %5, i64* %__u, align 8, !dbg !347, !tbaa !333
  br label %while.cond, !dbg !348

while.cond:                                       ; preds = %if.end6, %entry
  %6 = load i64, i64* %__l, align 8, !dbg !349, !tbaa !333
  %7 = load i64, i64* %__u, align 8, !dbg !350, !tbaa !333
  %cmp = icmp ult i64 %6, %7, !dbg !351
  br i1 %cmp, label %while.body, label %while.end, !dbg !348

while.body:                                       ; preds = %while.cond
  %8 = load i64, i64* %__l, align 8, !dbg !352, !tbaa !333
  %9 = load i64, i64* %__u, align 8, !dbg !354, !tbaa !333
  %add = add i64 %8, %9, !dbg !355
  %div = udiv i64 %add, 2, !dbg !356
  store i64 %div, i64* %__idx, align 8, !dbg !357, !tbaa !333
  %10 = load i8*, i8** %__base.addr, align 8, !dbg !358, !tbaa !56
  %11 = load i64, i64* %__idx, align 8, !dbg !359, !tbaa !333
  %12 = load i64, i64* %__size.addr, align 8, !dbg !360, !tbaa !333
  %mul = mul i64 %11, %12, !dbg !361
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %mul, !dbg !362
  store i8* %add.ptr, i8** %__p, align 8, !dbg !363, !tbaa !56
  %13 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %__compar.addr, align 8, !dbg !364, !tbaa !56
  %14 = load i8*, i8** %__key.addr, align 8, !dbg !365, !tbaa !56
  %15 = load i8*, i8** %__p, align 8, !dbg !366, !tbaa !56
  %call = call i32 %13(i8* %14, i8* %15), !dbg !367
  store i32 %call, i32* %__comparison, align 4, !dbg !368, !tbaa !159
  %16 = load i32, i32* %__comparison, align 4, !dbg !369, !tbaa !159
  %cmp1 = icmp slt i32 %16, 0, !dbg !371
  br i1 %cmp1, label %if.then, label %if.else, !dbg !372

if.then:                                          ; preds = %while.body
  %17 = load i64, i64* %__idx, align 8, !dbg !373, !tbaa !333
  store i64 %17, i64* %__u, align 8, !dbg !374, !tbaa !333
  br label %if.end6, !dbg !375

if.else:                                          ; preds = %while.body
  %18 = load i32, i32* %__comparison, align 4, !dbg !376, !tbaa !159
  %cmp2 = icmp sgt i32 %18, 0, !dbg !378
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !379

if.then3:                                         ; preds = %if.else
  %19 = load i64, i64* %__idx, align 8, !dbg !380, !tbaa !333
  %add4 = add i64 %19, 1, !dbg !381
  store i64 %add4, i64* %__l, align 8, !dbg !382, !tbaa !333
  br label %if.end, !dbg !383

if.else5:                                         ; preds = %if.else
  %20 = load i8*, i8** %__p, align 8, !dbg !384, !tbaa !56
  store i8* %20, i8** %retval, align 8, !dbg !385
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !385

if.end:                                           ; preds = %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  br label %while.cond, !dbg !348, !llvm.loop !386

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval, align 8, !dbg !388
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !388

cleanup:                                          ; preds = %while.end, %if.else5
  %21 = bitcast i32* %__comparison to i8*, !dbg !389
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #12, !dbg !389
  %22 = bitcast i8** %__p to i8*, !dbg !389
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %22) #12, !dbg !389
  %23 = bitcast i64* %__idx to i8*, !dbg !389
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %23) #12, !dbg !389
  %24 = bitcast i64* %__u to i8*, !dbg !389
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %24) #12, !dbg !389
  %25 = bitcast i64* %__l to i8*, !dbg !389
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %25) #12, !dbg !389
  %26 = load i8*, i8** %retval, align 8, !dbg !389
  ret i8* %26, !dbg !389
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #7

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally double @atof(i8* nonnull %__nptr) #4 !dbg !390 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !398, !tbaa !56
  %call = call double @strtod(i8* %0, i8** null) #12, !dbg !399
  ret double %call, !dbg !400
}

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #5

; Function Attrs: inlinehint nounwind uwtable
define available_externally i64 @__strcspn_c1(i8* %__s, i32 %__reject) #0 !dbg !401 {
entry:
  %__s.addr = alloca i8*, align 8
  %__reject.addr = alloca i32, align 4
  %__result = alloca i64, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !406, metadata !DIExpression()), !dbg !409
  store i32 %__reject, i32* %__reject.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__reject.addr, metadata !407, metadata !DIExpression()), !dbg !410
  %0 = bitcast i64* %__result to i8*, !dbg !411
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #12, !dbg !411
  call void @llvm.dbg.declare(metadata i64* %__result, metadata !408, metadata !DIExpression()), !dbg !412
  store i64 0, i64* %__result, align 8, !dbg !412, !tbaa !333
  br label %while.cond, !dbg !413

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !414, !tbaa !56
  %2 = load i64, i64* %__result, align 8, !dbg !415, !tbaa !333
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %2, !dbg !414
  %3 = load i8, i8* %arrayidx, align 1, !dbg !414, !tbaa !143
  %conv = sext i8 %3 to i32, !dbg !414
  %cmp = icmp ne i32 %conv, 0, !dbg !416
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !417

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %__s.addr, align 8, !dbg !418, !tbaa !56
  %5 = load i64, i64* %__result, align 8, !dbg !419, !tbaa !333
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !418
  %6 = load i8, i8* %arrayidx2, align 1, !dbg !418, !tbaa !143
  %conv3 = sext i8 %6 to i32, !dbg !418
  %7 = load i32, i32* %__reject.addr, align 4, !dbg !420, !tbaa !159
  %cmp4 = icmp ne i32 %conv3, %7, !dbg !421
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ], !dbg !422
  br i1 %8, label %while.body, label %while.end, !dbg !413

while.body:                                       ; preds = %land.end
  %9 = load i64, i64* %__result, align 8, !dbg !423, !tbaa !333
  %inc = add i64 %9, 1, !dbg !423
  store i64 %inc, i64* %__result, align 8, !dbg !423, !tbaa !333
  br label %while.cond, !dbg !413, !llvm.loop !424

while.end:                                        ; preds = %land.end
  %10 = load i64, i64* %__result, align 8, !dbg !426, !tbaa !333
  %11 = bitcast i64* %__result to i8*, !dbg !427
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #12, !dbg !427
  ret i64 %10, !dbg !428
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i64 @__strcspn_c2(i8* %__s, i32 %__reject1, i32 %__reject2) #0 !dbg !429 {
entry:
  %__s.addr = alloca i8*, align 8
  %__reject1.addr = alloca i32, align 4
  %__reject2.addr = alloca i32, align 4
  %__result = alloca i64, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !433, metadata !DIExpression()), !dbg !437
  store i32 %__reject1, i32* %__reject1.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__reject1.addr, metadata !434, metadata !DIExpression()), !dbg !438
  store i32 %__reject2, i32* %__reject2.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__reject2.addr, metadata !435, metadata !DIExpression()), !dbg !439
  %0 = bitcast i64* %__result to i8*, !dbg !440
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #12, !dbg !440
  call void @llvm.dbg.declare(metadata i64* %__result, metadata !436, metadata !DIExpression()), !dbg !441
  store i64 0, i64* %__result, align 8, !dbg !441, !tbaa !333
  br label %while.cond, !dbg !442

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !443, !tbaa !56
  %2 = load i64, i64* %__result, align 8, !dbg !444, !tbaa !333
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %2, !dbg !443
  %3 = load i8, i8* %arrayidx, align 1, !dbg !443, !tbaa !143
  %conv = sext i8 %3 to i32, !dbg !443
  %cmp = icmp ne i32 %conv, 0, !dbg !445
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !446

land.lhs.true:                                    ; preds = %while.cond
  %4 = load i8*, i8** %__s.addr, align 8, !dbg !447, !tbaa !56
  %5 = load i64, i64* %__result, align 8, !dbg !448, !tbaa !333
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !447
  %6 = load i8, i8* %arrayidx2, align 1, !dbg !447, !tbaa !143
  %conv3 = sext i8 %6 to i32, !dbg !447
  %7 = load i32, i32* %__reject1.addr, align 4, !dbg !449, !tbaa !159
  %cmp4 = icmp ne i32 %conv3, %7, !dbg !450
  br i1 %cmp4, label %land.rhs, label %land.end, !dbg !451

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i8*, i8** %__s.addr, align 8, !dbg !452, !tbaa !56
  %9 = load i64, i64* %__result, align 8, !dbg !453, !tbaa !333
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !452
  %10 = load i8, i8* %arrayidx6, align 1, !dbg !452, !tbaa !143
  %conv7 = sext i8 %10 to i32, !dbg !452
  %11 = load i32, i32* %__reject2.addr, align 4, !dbg !454, !tbaa !159
  %cmp8 = icmp ne i32 %conv7, %11, !dbg !455
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp8, %land.rhs ], !dbg !456
  br i1 %12, label %while.body, label %while.end, !dbg !442

while.body:                                       ; preds = %land.end
  %13 = load i64, i64* %__result, align 8, !dbg !457, !tbaa !333
  %inc = add i64 %13, 1, !dbg !457
  store i64 %inc, i64* %__result, align 8, !dbg !457, !tbaa !333
  br label %while.cond, !dbg !442, !llvm.loop !458

while.end:                                        ; preds = %land.end
  %14 = load i64, i64* %__result, align 8, !dbg !460, !tbaa !333
  %15 = bitcast i64* %__result to i8*, !dbg !461
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %15) #12, !dbg !461
  ret i64 %14, !dbg !462
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i64 @__strcspn_c3(i8* %__s, i32 %__reject1, i32 %__reject2, i32 %__reject3) #0 !dbg !463 {
entry:
  %__s.addr = alloca i8*, align 8
  %__reject1.addr = alloca i32, align 4
  %__reject2.addr = alloca i32, align 4
  %__reject3.addr = alloca i32, align 4
  %__result = alloca i64, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !467, metadata !DIExpression()), !dbg !472
  store i32 %__reject1, i32* %__reject1.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__reject1.addr, metadata !468, metadata !DIExpression()), !dbg !473
  store i32 %__reject2, i32* %__reject2.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__reject2.addr, metadata !469, metadata !DIExpression()), !dbg !474
  store i32 %__reject3, i32* %__reject3.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__reject3.addr, metadata !470, metadata !DIExpression()), !dbg !475
  %0 = bitcast i64* %__result to i8*, !dbg !476
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #12, !dbg !476
  call void @llvm.dbg.declare(metadata i64* %__result, metadata !471, metadata !DIExpression()), !dbg !477
  store i64 0, i64* %__result, align 8, !dbg !477, !tbaa !333
  br label %while.cond, !dbg !478

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !479, !tbaa !56
  %2 = load i64, i64* %__result, align 8, !dbg !480, !tbaa !333
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %2, !dbg !479
  %3 = load i8, i8* %arrayidx, align 1, !dbg !479, !tbaa !143
  %conv = sext i8 %3 to i32, !dbg !479
  %cmp = icmp ne i32 %conv, 0, !dbg !481
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !482

land.lhs.true:                                    ; preds = %while.cond
  %4 = load i8*, i8** %__s.addr, align 8, !dbg !483, !tbaa !56
  %5 = load i64, i64* %__result, align 8, !dbg !484, !tbaa !333
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !483
  %6 = load i8, i8* %arrayidx2, align 1, !dbg !483, !tbaa !143
  %conv3 = sext i8 %6 to i32, !dbg !483
  %7 = load i32, i32* %__reject1.addr, align 4, !dbg !485, !tbaa !159
  %cmp4 = icmp ne i32 %conv3, %7, !dbg !486
  br i1 %cmp4, label %land.lhs.true6, label %land.end, !dbg !487

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load i8*, i8** %__s.addr, align 8, !dbg !488, !tbaa !56
  %9 = load i64, i64* %__result, align 8, !dbg !489, !tbaa !333
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !488
  %10 = load i8, i8* %arrayidx7, align 1, !dbg !488, !tbaa !143
  %conv8 = sext i8 %10 to i32, !dbg !488
  %11 = load i32, i32* %__reject2.addr, align 4, !dbg !490, !tbaa !159
  %cmp9 = icmp ne i32 %conv8, %11, !dbg !491
  br i1 %cmp9, label %land.rhs, label %land.end, !dbg !492

land.rhs:                                         ; preds = %land.lhs.true6
  %12 = load i8*, i8** %__s.addr, align 8, !dbg !493, !tbaa !56
  %13 = load i64, i64* %__result, align 8, !dbg !494, !tbaa !333
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !493
  %14 = load i8, i8* %arrayidx11, align 1, !dbg !493, !tbaa !143
  %conv12 = sext i8 %14 to i32, !dbg !493
  %15 = load i32, i32* %__reject3.addr, align 4, !dbg !495, !tbaa !159
  %cmp13 = icmp ne i32 %conv12, %15, !dbg !496
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6, %land.lhs.true, %while.cond
  %16 = phi i1 [ false, %land.lhs.true6 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp13, %land.rhs ], !dbg !497
  br i1 %16, label %while.body, label %while.end, !dbg !478

while.body:                                       ; preds = %land.end
  %17 = load i64, i64* %__result, align 8, !dbg !498, !tbaa !333
  %inc = add i64 %17, 1, !dbg !498
  store i64 %inc, i64* %__result, align 8, !dbg !498, !tbaa !333
  br label %while.cond, !dbg !478, !llvm.loop !499

while.end:                                        ; preds = %land.end
  %18 = load i64, i64* %__result, align 8, !dbg !501, !tbaa !333
  %19 = bitcast i64* %__result to i8*, !dbg !502
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #12, !dbg !502
  ret i64 %18, !dbg !503
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i64 @__strspn_c1(i8* %__s, i32 %__accept) #0 !dbg !504 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept.addr = alloca i32, align 4
  %__result = alloca i64, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !506, metadata !DIExpression()), !dbg !509
  store i32 %__accept, i32* %__accept.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__accept.addr, metadata !507, metadata !DIExpression()), !dbg !510
  %0 = bitcast i64* %__result to i8*, !dbg !511
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #12, !dbg !511
  call void @llvm.dbg.declare(metadata i64* %__result, metadata !508, metadata !DIExpression()), !dbg !512
  store i64 0, i64* %__result, align 8, !dbg !512, !tbaa !333
  br label %while.cond, !dbg !513

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !514, !tbaa !56
  %2 = load i64, i64* %__result, align 8, !dbg !515, !tbaa !333
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %2, !dbg !514
  %3 = load i8, i8* %arrayidx, align 1, !dbg !514, !tbaa !143
  %conv = sext i8 %3 to i32, !dbg !514
  %4 = load i32, i32* %__accept.addr, align 4, !dbg !516, !tbaa !159
  %cmp = icmp eq i32 %conv, %4, !dbg !517
  br i1 %cmp, label %while.body, label %while.end, !dbg !513

while.body:                                       ; preds = %while.cond
  %5 = load i64, i64* %__result, align 8, !dbg !518, !tbaa !333
  %inc = add i64 %5, 1, !dbg !518
  store i64 %inc, i64* %__result, align 8, !dbg !518, !tbaa !333
  br label %while.cond, !dbg !513, !llvm.loop !519

while.end:                                        ; preds = %while.cond
  %6 = load i64, i64* %__result, align 8, !dbg !521, !tbaa !333
  %7 = bitcast i64* %__result to i8*, !dbg !522
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #12, !dbg !522
  ret i64 %6, !dbg !523
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i64 @__strspn_c2(i8* %__s, i32 %__accept1, i32 %__accept2) #0 !dbg !524 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept1.addr = alloca i32, align 4
  %__accept2.addr = alloca i32, align 4
  %__result = alloca i64, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !526, metadata !DIExpression()), !dbg !530
  store i32 %__accept1, i32* %__accept1.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__accept1.addr, metadata !527, metadata !DIExpression()), !dbg !531
  store i32 %__accept2, i32* %__accept2.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__accept2.addr, metadata !528, metadata !DIExpression()), !dbg !532
  %0 = bitcast i64* %__result to i8*, !dbg !533
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #12, !dbg !533
  call void @llvm.dbg.declare(metadata i64* %__result, metadata !529, metadata !DIExpression()), !dbg !534
  store i64 0, i64* %__result, align 8, !dbg !534, !tbaa !333
  br label %while.cond, !dbg !535

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !536, !tbaa !56
  %2 = load i64, i64* %__result, align 8, !dbg !537, !tbaa !333
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %2, !dbg !536
  %3 = load i8, i8* %arrayidx, align 1, !dbg !536, !tbaa !143
  %conv = sext i8 %3 to i32, !dbg !536
  %4 = load i32, i32* %__accept1.addr, align 4, !dbg !538, !tbaa !159
  %cmp = icmp eq i32 %conv, %4, !dbg !539
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !540

lor.rhs:                                          ; preds = %while.cond
  %5 = load i8*, i8** %__s.addr, align 8, !dbg !541, !tbaa !56
  %6 = load i64, i64* %__result, align 8, !dbg !542, !tbaa !333
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !541
  %7 = load i8, i8* %arrayidx2, align 1, !dbg !541, !tbaa !143
  %conv3 = sext i8 %7 to i32, !dbg !541
  %8 = load i32, i32* %__accept2.addr, align 4, !dbg !543, !tbaa !159
  %cmp4 = icmp eq i32 %conv3, %8, !dbg !544
  br label %lor.end, !dbg !540

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %9 = phi i1 [ true, %while.cond ], [ %cmp4, %lor.rhs ]
  br i1 %9, label %while.body, label %while.end, !dbg !535

while.body:                                       ; preds = %lor.end
  %10 = load i64, i64* %__result, align 8, !dbg !545, !tbaa !333
  %inc = add i64 %10, 1, !dbg !545
  store i64 %inc, i64* %__result, align 8, !dbg !545, !tbaa !333
  br label %while.cond, !dbg !535, !llvm.loop !546

while.end:                                        ; preds = %lor.end
  %11 = load i64, i64* %__result, align 8, !dbg !548, !tbaa !333
  %12 = bitcast i64* %__result to i8*, !dbg !549
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %12) #12, !dbg !549
  ret i64 %11, !dbg !550
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i64 @__strspn_c3(i8* %__s, i32 %__accept1, i32 %__accept2, i32 %__accept3) #0 !dbg !551 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept1.addr = alloca i32, align 4
  %__accept2.addr = alloca i32, align 4
  %__accept3.addr = alloca i32, align 4
  %__result = alloca i64, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !553, metadata !DIExpression()), !dbg !558
  store i32 %__accept1, i32* %__accept1.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__accept1.addr, metadata !554, metadata !DIExpression()), !dbg !559
  store i32 %__accept2, i32* %__accept2.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__accept2.addr, metadata !555, metadata !DIExpression()), !dbg !560
  store i32 %__accept3, i32* %__accept3.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__accept3.addr, metadata !556, metadata !DIExpression()), !dbg !561
  %0 = bitcast i64* %__result to i8*, !dbg !562
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #12, !dbg !562
  call void @llvm.dbg.declare(metadata i64* %__result, metadata !557, metadata !DIExpression()), !dbg !563
  store i64 0, i64* %__result, align 8, !dbg !563, !tbaa !333
  br label %while.cond, !dbg !564

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !565, !tbaa !56
  %2 = load i64, i64* %__result, align 8, !dbg !566, !tbaa !333
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %2, !dbg !565
  %3 = load i8, i8* %arrayidx, align 1, !dbg !565, !tbaa !143
  %conv = sext i8 %3 to i32, !dbg !565
  %4 = load i32, i32* %__accept1.addr, align 4, !dbg !567, !tbaa !159
  %cmp = icmp eq i32 %conv, %4, !dbg !568
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !569

lor.lhs.false:                                    ; preds = %while.cond
  %5 = load i8*, i8** %__s.addr, align 8, !dbg !570, !tbaa !56
  %6 = load i64, i64* %__result, align 8, !dbg !571, !tbaa !333
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !570
  %7 = load i8, i8* %arrayidx2, align 1, !dbg !570, !tbaa !143
  %conv3 = sext i8 %7 to i32, !dbg !570
  %8 = load i32, i32* %__accept2.addr, align 4, !dbg !572, !tbaa !159
  %cmp4 = icmp eq i32 %conv3, %8, !dbg !573
  br i1 %cmp4, label %lor.end, label %lor.rhs, !dbg !574

lor.rhs:                                          ; preds = %lor.lhs.false
  %9 = load i8*, i8** %__s.addr, align 8, !dbg !575, !tbaa !56
  %10 = load i64, i64* %__result, align 8, !dbg !576, !tbaa !333
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !575
  %11 = load i8, i8* %arrayidx6, align 1, !dbg !575, !tbaa !143
  %conv7 = sext i8 %11 to i32, !dbg !575
  %12 = load i32, i32* %__accept3.addr, align 4, !dbg !577, !tbaa !159
  %cmp8 = icmp eq i32 %conv7, %12, !dbg !578
  br label %lor.end, !dbg !574

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %13 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp8, %lor.rhs ]
  br i1 %13, label %while.body, label %while.end, !dbg !564

while.body:                                       ; preds = %lor.end
  %14 = load i64, i64* %__result, align 8, !dbg !579, !tbaa !333
  %inc = add i64 %14, 1, !dbg !579
  store i64 %inc, i64* %__result, align 8, !dbg !579, !tbaa !333
  br label %while.cond, !dbg !564, !llvm.loop !580

while.end:                                        ; preds = %lor.end
  %15 = load i64, i64* %__result, align 8, !dbg !582, !tbaa !333
  %16 = bitcast i64* %__result to i8*, !dbg !583
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %16) #12, !dbg !583
  ret i64 %15, !dbg !584
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i8* @__strpbrk_c2(i8* %__s, i32 %__accept1, i32 %__accept2) #0 !dbg !585 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept1.addr = alloca i32, align 4
  %__accept2.addr = alloca i32, align 4
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !589, metadata !DIExpression()), !dbg !592
  store i32 %__accept1, i32* %__accept1.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__accept1.addr, metadata !590, metadata !DIExpression()), !dbg !593
  store i32 %__accept2, i32* %__accept2.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__accept2.addr, metadata !591, metadata !DIExpression()), !dbg !594
  br label %while.cond, !dbg !595

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !596, !tbaa !56
  %1 = load i8, i8* %0, align 1, !dbg !597, !tbaa !143
  %conv = sext i8 %1 to i32, !dbg !597
  %cmp = icmp ne i32 %conv, 0, !dbg !598
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !599

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8*, i8** %__s.addr, align 8, !dbg !600, !tbaa !56
  %3 = load i8, i8* %2, align 1, !dbg !601, !tbaa !143
  %conv2 = sext i8 %3 to i32, !dbg !601
  %4 = load i32, i32* %__accept1.addr, align 4, !dbg !602, !tbaa !159
  %cmp3 = icmp ne i32 %conv2, %4, !dbg !603
  br i1 %cmp3, label %land.rhs, label %land.end, !dbg !604

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i8*, i8** %__s.addr, align 8, !dbg !605, !tbaa !56
  %6 = load i8, i8* %5, align 1, !dbg !606, !tbaa !143
  %conv5 = sext i8 %6 to i32, !dbg !606
  %7 = load i32, i32* %__accept2.addr, align 4, !dbg !607, !tbaa !159
  %cmp6 = icmp ne i32 %conv5, %7, !dbg !608
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp6, %land.rhs ], !dbg !609
  br i1 %8, label %while.body, label %while.end, !dbg !595

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %__s.addr, align 8, !dbg !610, !tbaa !56
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1, !dbg !610
  store i8* %incdec.ptr, i8** %__s.addr, align 8, !dbg !610, !tbaa !56
  br label %while.cond, !dbg !595, !llvm.loop !611

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %__s.addr, align 8, !dbg !613, !tbaa !56
  %11 = load i8, i8* %10, align 1, !dbg !614, !tbaa !143
  %conv8 = sext i8 %11 to i32, !dbg !614
  %cmp9 = icmp eq i32 %conv8, 0, !dbg !615
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !614

cond.true:                                        ; preds = %while.end
  br label %cond.end, !dbg !614

cond.false:                                       ; preds = %while.end
  %12 = load i8*, i8** %__s.addr, align 8, !dbg !616, !tbaa !56
  %13 = ptrtoint i8* %12 to i64, !dbg !617
  %14 = inttoptr i64 %13 to i8*, !dbg !618
  br label %cond.end, !dbg !614

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %14, %cond.false ], !dbg !614
  ret i8* %cond, !dbg !619
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i8* @__strpbrk_c3(i8* %__s, i32 %__accept1, i32 %__accept2, i32 %__accept3) #0 !dbg !620 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept1.addr = alloca i32, align 4
  %__accept2.addr = alloca i32, align 4
  %__accept3.addr = alloca i32, align 4
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !624, metadata !DIExpression()), !dbg !628
  store i32 %__accept1, i32* %__accept1.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__accept1.addr, metadata !625, metadata !DIExpression()), !dbg !629
  store i32 %__accept2, i32* %__accept2.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__accept2.addr, metadata !626, metadata !DIExpression()), !dbg !630
  store i32 %__accept3, i32* %__accept3.addr, align 4, !tbaa !159
  call void @llvm.dbg.declare(metadata i32* %__accept3.addr, metadata !627, metadata !DIExpression()), !dbg !631
  br label %while.cond, !dbg !632

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %__s.addr, align 8, !dbg !633, !tbaa !56
  %1 = load i8, i8* %0, align 1, !dbg !634, !tbaa !143
  %conv = sext i8 %1 to i32, !dbg !634
  %cmp = icmp ne i32 %conv, 0, !dbg !635
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !636

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8*, i8** %__s.addr, align 8, !dbg !637, !tbaa !56
  %3 = load i8, i8* %2, align 1, !dbg !638, !tbaa !143
  %conv2 = sext i8 %3 to i32, !dbg !638
  %4 = load i32, i32* %__accept1.addr, align 4, !dbg !639, !tbaa !159
  %cmp3 = icmp ne i32 %conv2, %4, !dbg !640
  br i1 %cmp3, label %land.lhs.true5, label %land.end, !dbg !641

land.lhs.true5:                                   ; preds = %land.lhs.true
  %5 = load i8*, i8** %__s.addr, align 8, !dbg !642, !tbaa !56
  %6 = load i8, i8* %5, align 1, !dbg !643, !tbaa !143
  %conv6 = sext i8 %6 to i32, !dbg !643
  %7 = load i32, i32* %__accept2.addr, align 4, !dbg !644, !tbaa !159
  %cmp7 = icmp ne i32 %conv6, %7, !dbg !645
  br i1 %cmp7, label %land.rhs, label %land.end, !dbg !646

land.rhs:                                         ; preds = %land.lhs.true5
  %8 = load i8*, i8** %__s.addr, align 8, !dbg !647, !tbaa !56
  %9 = load i8, i8* %8, align 1, !dbg !648, !tbaa !143
  %conv9 = sext i8 %9 to i32, !dbg !648
  %10 = load i32, i32* %__accept3.addr, align 4, !dbg !649, !tbaa !159
  %cmp10 = icmp ne i32 %conv9, %10, !dbg !650
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true5 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp10, %land.rhs ], !dbg !651
  br i1 %11, label %while.body, label %while.end, !dbg !632

while.body:                                       ; preds = %land.end
  %12 = load i8*, i8** %__s.addr, align 8, !dbg !652, !tbaa !56
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1, !dbg !652
  store i8* %incdec.ptr, i8** %__s.addr, align 8, !dbg !652, !tbaa !56
  br label %while.cond, !dbg !632, !llvm.loop !653

while.end:                                        ; preds = %land.end
  %13 = load i8*, i8** %__s.addr, align 8, !dbg !655, !tbaa !56
  %14 = load i8, i8* %13, align 1, !dbg !656, !tbaa !143
  %conv12 = sext i8 %14 to i32, !dbg !656
  %cmp13 = icmp eq i32 %conv12, 0, !dbg !657
  br i1 %cmp13, label %cond.true, label %cond.false, !dbg !656

cond.true:                                        ; preds = %while.end
  br label %cond.end, !dbg !656

cond.false:                                       ; preds = %while.end
  %15 = load i8*, i8** %__s.addr, align 8, !dbg !658, !tbaa !56
  %16 = ptrtoint i8* %15 to i64, !dbg !659
  %17 = inttoptr i64 %16 to i8*, !dbg !660
  br label %cond.end, !dbg !656

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %17, %cond.false ], !dbg !656
  ret i8* %cond, !dbg !661
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i8* @__strtok_r_1c(i8* %__s, i8 signext %__sep, i8** %__nextp) #0 !dbg !662 {
entry:
  %__s.addr = alloca i8*, align 8
  %__sep.addr = alloca i8, align 1
  %__nextp.addr = alloca i8**, align 8
  %__result = alloca i8*, align 8
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %__s.addr, metadata !666, metadata !DIExpression()), !dbg !670
  store i8 %__sep, i8* %__sep.addr, align 1, !tbaa !143
  call void @llvm.dbg.declare(metadata i8* %__sep.addr, metadata !667, metadata !DIExpression()), !dbg !671
  store i8** %__nextp, i8*** %__nextp.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8*** %__nextp.addr, metadata !668, metadata !DIExpression()), !dbg !672
  %0 = bitcast i8** %__result to i8*, !dbg !673
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #12, !dbg !673
  call void @llvm.dbg.declare(metadata i8** %__result, metadata !669, metadata !DIExpression()), !dbg !674
  %1 = load i8*, i8** %__s.addr, align 8, !dbg !675, !tbaa !56
  %cmp = icmp eq i8* %1, null, !dbg !677
  br i1 %cmp, label %if.then, label %if.end, !dbg !678

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %__nextp.addr, align 8, !dbg !679, !tbaa !56
  %3 = load i8*, i8** %2, align 8, !dbg !680, !tbaa !56
  store i8* %3, i8** %__s.addr, align 8, !dbg !681, !tbaa !56
  br label %if.end, !dbg !682

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond, !dbg !683

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i8*, i8** %__s.addr, align 8, !dbg !684, !tbaa !56
  %5 = load i8, i8* %4, align 1, !dbg !685, !tbaa !143
  %conv = sext i8 %5 to i32, !dbg !685
  %6 = load i8, i8* %__sep.addr, align 1, !dbg !686, !tbaa !143
  %conv1 = sext i8 %6 to i32, !dbg !686
  %cmp2 = icmp eq i32 %conv, %conv1, !dbg !687
  br i1 %cmp2, label %while.body, label %while.end, !dbg !683

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %__s.addr, align 8, !dbg !688, !tbaa !56
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1, !dbg !688
  store i8* %incdec.ptr, i8** %__s.addr, align 8, !dbg !688, !tbaa !56
  br label %while.cond, !dbg !683, !llvm.loop !689

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %__result, align 8, !dbg !691, !tbaa !56
  %8 = load i8*, i8** %__s.addr, align 8, !dbg !692, !tbaa !56
  %9 = load i8, i8* %8, align 1, !dbg !694, !tbaa !143
  %conv4 = sext i8 %9 to i32, !dbg !694
  %cmp5 = icmp ne i32 %conv4, 0, !dbg !695
  br i1 %cmp5, label %if.then7, label %if.end22, !dbg !696

if.then7:                                         ; preds = %while.end
  %10 = load i8*, i8** %__s.addr, align 8, !dbg !697, !tbaa !56
  %incdec.ptr8 = getelementptr inbounds i8, i8* %10, i32 1, !dbg !697
  store i8* %incdec.ptr8, i8** %__s.addr, align 8, !dbg !697, !tbaa !56
  store i8* %10, i8** %__result, align 8, !dbg !699, !tbaa !56
  br label %while.cond9, !dbg !700

while.cond9:                                      ; preds = %if.end20, %if.then7
  %11 = load i8*, i8** %__s.addr, align 8, !dbg !701, !tbaa !56
  %12 = load i8, i8* %11, align 1, !dbg !702, !tbaa !143
  %conv10 = sext i8 %12 to i32, !dbg !702
  %cmp11 = icmp ne i32 %conv10, 0, !dbg !703
  br i1 %cmp11, label %while.body13, label %while.end21, !dbg !700

while.body13:                                     ; preds = %while.cond9
  %13 = load i8*, i8** %__s.addr, align 8, !dbg !704, !tbaa !56
  %incdec.ptr14 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !704
  store i8* %incdec.ptr14, i8** %__s.addr, align 8, !dbg !704, !tbaa !56
  %14 = load i8, i8* %13, align 1, !dbg !706, !tbaa !143
  %conv15 = sext i8 %14 to i32, !dbg !706
  %15 = load i8, i8* %__sep.addr, align 1, !dbg !707, !tbaa !143
  %conv16 = sext i8 %15 to i32, !dbg !707
  %cmp17 = icmp eq i32 %conv15, %conv16, !dbg !708
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !709

if.then19:                                        ; preds = %while.body13
  %16 = load i8*, i8** %__s.addr, align 8, !dbg !710, !tbaa !56
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !710
  store i8 0, i8* %arrayidx, align 1, !dbg !712, !tbaa !143
  br label %while.end21, !dbg !713

if.end20:                                         ; preds = %while.body13
  br label %while.cond9, !dbg !700, !llvm.loop !714

while.end21:                                      ; preds = %if.then19, %while.cond9
  br label %if.end22, !dbg !716

if.end22:                                         ; preds = %while.end21, %while.end
  %17 = load i8*, i8** %__s.addr, align 8, !dbg !717, !tbaa !56
  %18 = load i8**, i8*** %__nextp.addr, align 8, !dbg !718, !tbaa !56
  store i8* %17, i8** %18, align 8, !dbg !719, !tbaa !56
  %19 = load i8*, i8** %__result, align 8, !dbg !720, !tbaa !56
  %20 = bitcast i8** %__result to i8*, !dbg !721
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #12, !dbg !721
  ret i8* %19, !dbg !722
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i8* @__strsep_1c(i8** %__s, i8 signext %__reject) #0 !dbg !723 {
entry:
  %__s.addr = alloca i8**, align 8
  %__reject.addr = alloca i8, align 1
  %__retval = alloca i8*, align 8
  store i8** %__s, i8*** %__s.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8*** %__s.addr, metadata !727, metadata !DIExpression()), !dbg !730
  store i8 %__reject, i8* %__reject.addr, align 1, !tbaa !143
  call void @llvm.dbg.declare(metadata i8* %__reject.addr, metadata !728, metadata !DIExpression()), !dbg !731
  %0 = bitcast i8** %__retval to i8*, !dbg !732
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #12, !dbg !732
  call void @llvm.dbg.declare(metadata i8** %__retval, metadata !729, metadata !DIExpression()), !dbg !733
  %1 = load i8**, i8*** %__s.addr, align 8, !dbg !734, !tbaa !56
  %2 = load i8*, i8** %1, align 8, !dbg !735, !tbaa !56
  store i8* %2, i8** %__retval, align 8, !dbg !733, !tbaa !56
  %3 = load i8*, i8** %__retval, align 8, !dbg !736, !tbaa !56
  %cmp = icmp ne i8* %3, null, !dbg !738
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !739

land.lhs.true:                                    ; preds = %entry
  %4 = load i8, i8* %__reject.addr, align 1, !dbg !740, !tbaa !143
  %5 = call i1 @llvm.is.constant.i8(i8 %4), !dbg !740
  br i1 %5, label %land.lhs.true1, label %cond.false, !dbg !740

land.lhs.true1:                                   ; preds = %land.lhs.true
  %6 = load i8, i8* %__reject.addr, align 1, !dbg !740, !tbaa !143
  %conv = sext i8 %6 to i32, !dbg !740
  %cmp2 = icmp eq i32 %conv, 0, !dbg !740
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !740

cond.true:                                        ; preds = %land.lhs.true1
  %7 = load i8*, i8** %__retval, align 8, !dbg !740, !tbaa !56
  %8 = load i8, i8* %__reject.addr, align 1, !dbg !740, !tbaa !143
  %conv4 = sext i8 %8 to i32, !dbg !740
  %call = call i8* @__rawmemchr(i8* %7, i32 %conv4), !dbg !740
  br label %cond.end, !dbg !740

cond.false:                                       ; preds = %land.lhs.true1, %land.lhs.true
  %9 = load i8*, i8** %__retval, align 8, !dbg !740, !tbaa !56
  %10 = load i8, i8* %__reject.addr, align 1, !dbg !740, !tbaa !143
  %conv5 = sext i8 %10 to i32, !dbg !740
  %call6 = call i8* @strchr(i8* %9, i32 %conv5) #12, !dbg !740
  br label %cond.end, !dbg !740

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call6, %cond.false ], !dbg !740
  %11 = load i8**, i8*** %__s.addr, align 8, !dbg !741, !tbaa !56
  store i8* %cond, i8** %11, align 8, !dbg !742, !tbaa !56
  %cmp7 = icmp ne i8* %cond, null, !dbg !743
  br i1 %cmp7, label %if.then, label %if.end, !dbg !744

if.then:                                          ; preds = %cond.end
  %12 = load i8**, i8*** %__s.addr, align 8, !dbg !745, !tbaa !56
  %13 = load i8*, i8** %12, align 8, !dbg !746, !tbaa !56
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1, !dbg !746
  store i8* %incdec.ptr, i8** %12, align 8, !dbg !746, !tbaa !56
  store i8 0, i8* %13, align 1, !dbg !747, !tbaa !143
  br label %if.end, !dbg !748

if.end:                                           ; preds = %if.then, %cond.end, %entry
  %14 = load i8*, i8** %__retval, align 8, !dbg !749, !tbaa !56
  %15 = bitcast i8** %__retval to i8*, !dbg !750
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %15) #12, !dbg !750
  ret i8* %14, !dbg !751
}

; Function Attrs: nounwind readnone
declare i1 @llvm.is.constant.i8(i8) #3

declare i8* @__rawmemchr(i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #5

; Function Attrs: inlinehint nounwind uwtable
define available_externally i8* @__strsep_2c(i8** %__s, i8 signext %__reject1, i8 signext %__reject2) #0 !dbg !752 {
entry:
  %__s.addr = alloca i8**, align 8
  %__reject1.addr = alloca i8, align 1
  %__reject2.addr = alloca i8, align 1
  %__retval = alloca i8*, align 8
  %__cp = alloca i8*, align 8
  store i8** %__s, i8*** %__s.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8*** %__s.addr, metadata !756, metadata !DIExpression()), !dbg !763
  store i8 %__reject1, i8* %__reject1.addr, align 1, !tbaa !143
  call void @llvm.dbg.declare(metadata i8* %__reject1.addr, metadata !757, metadata !DIExpression()), !dbg !764
  store i8 %__reject2, i8* %__reject2.addr, align 1, !tbaa !143
  call void @llvm.dbg.declare(metadata i8* %__reject2.addr, metadata !758, metadata !DIExpression()), !dbg !765
  %0 = bitcast i8** %__retval to i8*, !dbg !766
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #12, !dbg !766
  call void @llvm.dbg.declare(metadata i8** %__retval, metadata !759, metadata !DIExpression()), !dbg !767
  %1 = load i8**, i8*** %__s.addr, align 8, !dbg !768, !tbaa !56
  %2 = load i8*, i8** %1, align 8, !dbg !769, !tbaa !56
  store i8* %2, i8** %__retval, align 8, !dbg !767, !tbaa !56
  %3 = load i8*, i8** %__retval, align 8, !dbg !770, !tbaa !56
  %cmp = icmp ne i8* %3, null, !dbg !771
  br i1 %cmp, label %if.then, label %if.end15, !dbg !772

if.then:                                          ; preds = %entry
  %4 = bitcast i8** %__cp to i8*, !dbg !773
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #12, !dbg !773
  call void @llvm.dbg.declare(metadata i8** %__cp, metadata !760, metadata !DIExpression()), !dbg !774
  %5 = load i8*, i8** %__retval, align 8, !dbg !775, !tbaa !56
  store i8* %5, i8** %__cp, align 8, !dbg !774, !tbaa !56
  br label %while.cond, !dbg !776

while.cond:                                       ; preds = %if.end13, %if.then
  br label %while.body, !dbg !776

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %__cp, align 8, !dbg !777, !tbaa !56
  %7 = load i8, i8* %6, align 1, !dbg !780, !tbaa !143
  %conv = sext i8 %7 to i32, !dbg !780
  %cmp1 = icmp eq i32 %conv, 0, !dbg !781
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !782

if.then3:                                         ; preds = %while.body
  store i8* null, i8** %__cp, align 8, !dbg !783, !tbaa !56
  br label %while.end, !dbg !785

if.end:                                           ; preds = %while.body
  %8 = load i8*, i8** %__cp, align 8, !dbg !786, !tbaa !56
  %9 = load i8, i8* %8, align 1, !dbg !788, !tbaa !143
  %conv4 = sext i8 %9 to i32, !dbg !788
  %10 = load i8, i8* %__reject1.addr, align 1, !dbg !789, !tbaa !143
  %conv5 = sext i8 %10 to i32, !dbg !789
  %cmp6 = icmp eq i32 %conv4, %conv5, !dbg !790
  br i1 %cmp6, label %if.then12, label %lor.lhs.false, !dbg !791

lor.lhs.false:                                    ; preds = %if.end
  %11 = load i8*, i8** %__cp, align 8, !dbg !792, !tbaa !56
  %12 = load i8, i8* %11, align 1, !dbg !793, !tbaa !143
  %conv8 = sext i8 %12 to i32, !dbg !793
  %13 = load i8, i8* %__reject2.addr, align 1, !dbg !794, !tbaa !143
  %conv9 = sext i8 %13 to i32, !dbg !794
  %cmp10 = icmp eq i32 %conv8, %conv9, !dbg !795
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !796

if.then12:                                        ; preds = %lor.lhs.false, %if.end
  %14 = load i8*, i8** %__cp, align 8, !dbg !797, !tbaa !56
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1, !dbg !797
  store i8* %incdec.ptr, i8** %__cp, align 8, !dbg !797, !tbaa !56
  store i8 0, i8* %14, align 1, !dbg !799, !tbaa !143
  br label %while.end, !dbg !800

if.end13:                                         ; preds = %lor.lhs.false
  %15 = load i8*, i8** %__cp, align 8, !dbg !801, !tbaa !56
  %incdec.ptr14 = getelementptr inbounds i8, i8* %15, i32 1, !dbg !801
  store i8* %incdec.ptr14, i8** %__cp, align 8, !dbg !801, !tbaa !56
  br label %while.cond, !dbg !776, !llvm.loop !802

while.end:                                        ; preds = %if.then12, %if.then3
  %16 = load i8*, i8** %__cp, align 8, !dbg !804, !tbaa !56
  %17 = load i8**, i8*** %__s.addr, align 8, !dbg !805, !tbaa !56
  store i8* %16, i8** %17, align 8, !dbg !806, !tbaa !56
  %18 = bitcast i8** %__cp to i8*, !dbg !807
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #12, !dbg !807
  br label %if.end15, !dbg !808

if.end15:                                         ; preds = %while.end, %entry
  %19 = load i8*, i8** %__retval, align 8, !dbg !809, !tbaa !56
  %20 = bitcast i8** %__retval to i8*, !dbg !810
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #12, !dbg !810
  ret i8* %19, !dbg !811
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i8* @__strsep_3c(i8** %__s, i8 signext %__reject1, i8 signext %__reject2, i8 signext %__reject3) #0 !dbg !812 {
entry:
  %__s.addr = alloca i8**, align 8
  %__reject1.addr = alloca i8, align 1
  %__reject2.addr = alloca i8, align 1
  %__reject3.addr = alloca i8, align 1
  %__retval = alloca i8*, align 8
  %__cp = alloca i8*, align 8
  store i8** %__s, i8*** %__s.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8*** %__s.addr, metadata !816, metadata !DIExpression()), !dbg !824
  store i8 %__reject1, i8* %__reject1.addr, align 1, !tbaa !143
  call void @llvm.dbg.declare(metadata i8* %__reject1.addr, metadata !817, metadata !DIExpression()), !dbg !825
  store i8 %__reject2, i8* %__reject2.addr, align 1, !tbaa !143
  call void @llvm.dbg.declare(metadata i8* %__reject2.addr, metadata !818, metadata !DIExpression()), !dbg !826
  store i8 %__reject3, i8* %__reject3.addr, align 1, !tbaa !143
  call void @llvm.dbg.declare(metadata i8* %__reject3.addr, metadata !819, metadata !DIExpression()), !dbg !827
  %0 = bitcast i8** %__retval to i8*, !dbg !828
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #12, !dbg !828
  call void @llvm.dbg.declare(metadata i8** %__retval, metadata !820, metadata !DIExpression()), !dbg !829
  %1 = load i8**, i8*** %__s.addr, align 8, !dbg !830, !tbaa !56
  %2 = load i8*, i8** %1, align 8, !dbg !831, !tbaa !56
  store i8* %2, i8** %__retval, align 8, !dbg !829, !tbaa !56
  %3 = load i8*, i8** %__retval, align 8, !dbg !832, !tbaa !56
  %cmp = icmp ne i8* %3, null, !dbg !833
  br i1 %cmp, label %if.then, label %if.end20, !dbg !834

if.then:                                          ; preds = %entry
  %4 = bitcast i8** %__cp to i8*, !dbg !835
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #12, !dbg !835
  call void @llvm.dbg.declare(metadata i8** %__cp, metadata !821, metadata !DIExpression()), !dbg !836
  %5 = load i8*, i8** %__retval, align 8, !dbg !837, !tbaa !56
  store i8* %5, i8** %__cp, align 8, !dbg !836, !tbaa !56
  br label %while.cond, !dbg !838

while.cond:                                       ; preds = %if.end18, %if.then
  br label %while.body, !dbg !838

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %__cp, align 8, !dbg !839, !tbaa !56
  %7 = load i8, i8* %6, align 1, !dbg !842, !tbaa !143
  %conv = sext i8 %7 to i32, !dbg !842
  %cmp1 = icmp eq i32 %conv, 0, !dbg !843
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !844

if.then3:                                         ; preds = %while.body
  store i8* null, i8** %__cp, align 8, !dbg !845, !tbaa !56
  br label %while.end, !dbg !847

if.end:                                           ; preds = %while.body
  %8 = load i8*, i8** %__cp, align 8, !dbg !848, !tbaa !56
  %9 = load i8, i8* %8, align 1, !dbg !850, !tbaa !143
  %conv4 = sext i8 %9 to i32, !dbg !850
  %10 = load i8, i8* %__reject1.addr, align 1, !dbg !851, !tbaa !143
  %conv5 = sext i8 %10 to i32, !dbg !851
  %cmp6 = icmp eq i32 %conv4, %conv5, !dbg !852
  br i1 %cmp6, label %if.then17, label %lor.lhs.false, !dbg !853

lor.lhs.false:                                    ; preds = %if.end
  %11 = load i8*, i8** %__cp, align 8, !dbg !854, !tbaa !56
  %12 = load i8, i8* %11, align 1, !dbg !855, !tbaa !143
  %conv8 = sext i8 %12 to i32, !dbg !855
  %13 = load i8, i8* %__reject2.addr, align 1, !dbg !856, !tbaa !143
  %conv9 = sext i8 %13 to i32, !dbg !856
  %cmp10 = icmp eq i32 %conv8, %conv9, !dbg !857
  br i1 %cmp10, label %if.then17, label %lor.lhs.false12, !dbg !858

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %14 = load i8*, i8** %__cp, align 8, !dbg !859, !tbaa !56
  %15 = load i8, i8* %14, align 1, !dbg !860, !tbaa !143
  %conv13 = sext i8 %15 to i32, !dbg !860
  %16 = load i8, i8* %__reject3.addr, align 1, !dbg !861, !tbaa !143
  %conv14 = sext i8 %16 to i32, !dbg !861
  %cmp15 = icmp eq i32 %conv13, %conv14, !dbg !862
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !863

if.then17:                                        ; preds = %lor.lhs.false12, %lor.lhs.false, %if.end
  %17 = load i8*, i8** %__cp, align 8, !dbg !864, !tbaa !56
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1, !dbg !864
  store i8* %incdec.ptr, i8** %__cp, align 8, !dbg !864, !tbaa !56
  store i8 0, i8* %17, align 1, !dbg !866, !tbaa !143
  br label %while.end, !dbg !867

if.end18:                                         ; preds = %lor.lhs.false12
  %18 = load i8*, i8** %__cp, align 8, !dbg !868, !tbaa !56
  %incdec.ptr19 = getelementptr inbounds i8, i8* %18, i32 1, !dbg !868
  store i8* %incdec.ptr19, i8** %__cp, align 8, !dbg !868, !tbaa !56
  br label %while.cond, !dbg !838, !llvm.loop !869

while.end:                                        ; preds = %if.then17, %if.then3
  %19 = load i8*, i8** %__cp, align 8, !dbg !871, !tbaa !56
  %20 = load i8**, i8*** %__s.addr, align 8, !dbg !872, !tbaa !56
  store i8* %19, i8** %20, align 8, !dbg !873, !tbaa !56
  %21 = bitcast i8** %__cp to i8*, !dbg !874
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #12, !dbg !874
  br label %if.end20, !dbg !875

if.end20:                                         ; preds = %while.end, %entry
  %22 = load i8*, i8** %__retval, align 8, !dbg !876, !tbaa !56
  %23 = bitcast i8** %__retval to i8*, !dbg !877
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %23) #12, !dbg !877
  ret i8* %22, !dbg !878
}

; Function Attrs: inlinehint nounwind readnone uwtable
define available_externally i32 @pthread_equal(i64 %__thread1, i64 %__thread2) #6 !dbg !879 {
entry:
  %__thread1.addr = alloca i64, align 8
  %__thread2.addr = alloca i64, align 8
  store i64 %__thread1, i64* %__thread1.addr, align 8, !tbaa !333
  call void @llvm.dbg.declare(metadata i64* %__thread1.addr, metadata !886, metadata !DIExpression()), !dbg !888
  store i64 %__thread2, i64* %__thread2.addr, align 8, !tbaa !333
  call void @llvm.dbg.declare(metadata i64* %__thread2.addr, metadata !887, metadata !DIExpression()), !dbg !888
  %0 = load i64, i64* %__thread1.addr, align 8, !dbg !889, !tbaa !333
  %1 = load i64, i64* %__thread2.addr, align 8, !dbg !890, !tbaa !333
  %cmp = icmp eq i64 %0, %1, !dbg !891
  %conv = zext i1 %cmp to i32, !dbg !891
  ret i32 %conv, !dbg !892
}

; Function Attrs: nounwind uwtable
define i32 @kp_kv_master_create(%struct.kp_kv_master_struct** %master, i32 %mode, i64 %expected_max_keys, i1 zeroext %do_conflict_detection, i1 zeroext %use_nvm) #8 !dbg !893 {
entry:
  %retval = alloca i32, align 4
  %master.addr = alloca %struct.kp_kv_master_struct**, align 8
  %mode.addr = alloca i32, align 4
  %expected_max_keys.addr = alloca i64, align 8
  %do_conflict_detection.addr = alloca i8, align 1
  %use_nvm.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  %tmp74 = alloca i32, align 4
  store %struct.kp_kv_master_struct** %master, %struct.kp_kv_master_struct*** %master.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.kp_kv_master_struct*** %master.addr, metadata !913, metadata !DIExpression()), !dbg !919
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !143
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !914, metadata !DIExpression()), !dbg !920
  store i64 %expected_max_keys, i64* %expected_max_keys.addr, align 8, !tbaa !333
  call void @llvm.dbg.declare(metadata i64* %expected_max_keys.addr, metadata !915, metadata !DIExpression()), !dbg !921
  %frombool = zext i1 %do_conflict_detection to i8
  store i8 %frombool, i8* %do_conflict_detection.addr, align 1, !tbaa !922
  call void @llvm.dbg.declare(metadata i8* %do_conflict_detection.addr, metadata !916, metadata !DIExpression()), !dbg !924
  %frombool1 = zext i1 %use_nvm to i8
  store i8 %frombool1, i8* %use_nvm.addr, align 1, !tbaa !922
  call void @llvm.dbg.declare(metadata i8* %use_nvm.addr, metadata !917, metadata !DIExpression()), !dbg !925
  %0 = bitcast i32* %ret to i8*, !dbg !926
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #12, !dbg !926
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !918, metadata !DIExpression()), !dbg !927
  %1 = load i8, i8* %use_nvm.addr, align 1, !dbg !928, !tbaa !922, !range !930
  %tobool = trunc i8 %1 to i1, !dbg !928
  br i1 %tobool, label %if.end, label %if.then, !dbg !931

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !932

do.body:                                          ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !934, !tbaa !56
  %call = call i64 @pthread_self() #3, !dbg !934
  %rem = urem i64 %call, 10000, !dbg !934
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i32 0, i32 0), i64 %rem, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.kp_kv_master_create, i32 0, i32 0)), !dbg !934
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !934, !tbaa !56
  %call3 = call i32 @fflush(%struct._IO_FILE* %3), !dbg !934
  call void @abort() #13, !dbg !934
  unreachable, !dbg !934

do.cond:                                          ; No predecessors!
  br label %do.end, !dbg !934

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !936

if.end:                                           ; preds = %do.end, %entry
  %4 = load %struct.kp_kv_master_struct**, %struct.kp_kv_master_struct*** %master.addr, align 8, !dbg !937, !tbaa !56
  %5 = bitcast %struct.kp_kv_master_struct** %4 to i8**, !dbg !938
  %6 = load i8, i8* %use_nvm.addr, align 1, !dbg !939, !tbaa !922, !range !930
  %tobool4 = trunc i8 %6 to i1, !dbg !939
  call void @kp_kpalloc(i8** %5, i64 24, i1 zeroext %tobool4), !dbg !940
  %7 = load %struct.kp_kv_master_struct**, %struct.kp_kv_master_struct*** %master.addr, align 8, !dbg !941, !tbaa !56
  %8 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %7, align 8, !dbg !943, !tbaa !56
  %cmp = icmp eq %struct.kp_kv_master_struct* %8, null, !dbg !944
  br i1 %cmp, label %if.then5, label %if.end13, !dbg !945

if.then5:                                         ; preds = %if.end
  br label %do.body6, !dbg !946

do.body6:                                         ; preds = %if.then5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !948, !tbaa !56
  %call7 = call i64 @pthread_self() #3, !dbg !948
  %rem8 = urem i64 %call7, 10000, !dbg !948
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0), i64 %rem8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.kp_kv_master_create, i32 0, i32 0)), !dbg !948
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !948, !tbaa !56
  %call10 = call i32 @fflush(%struct._IO_FILE* %10), !dbg !948
  br label %do.cond11, !dbg !948

do.cond11:                                        ; preds = %do.body6
  br label %do.end12, !dbg !948

do.end12:                                         ; preds = %do.cond11
  store i32 -1, i32* %retval, align 4, !dbg !950
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !950

if.end13:                                         ; preds = %if.end
  %11 = load i32, i32* @mtm_enable_trace, align 4, !dbg !951, !tbaa !159
  %tobool14 = icmp ne i32 %11, 0, !dbg !951
  br i1 %tobool14, label %if.then15, label %if.end19, !dbg !955

if.then15:                                        ; preds = %if.end13
  %12 = load %struct.kp_kv_master_struct**, %struct.kp_kv_master_struct*** %master.addr, align 8, !dbg !956, !tbaa !56
  %13 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %12, align 8, !dbg !956, !tbaa !56
  %id = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %13, i32 0, i32 0, !dbg !956
  %call16 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i32 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32* %id, i64 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.kp_kv_master_create, i32 0, i32 0), i32 84) #12, !dbg !956
  %call17 = call i64 @strlen(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i32 0, i32 0)) #14, !dbg !956
  store i64 %call17, i64* @tsz, align 8, !dbg !956, !tbaa !257
  %14 = load i32, i32* @trace_marker, align 4, !dbg !956, !tbaa !159
  %15 = load i64, i64* @tsz, align 8, !dbg !956, !tbaa !257
  %sub = sub i64 %15, 4, !dbg !956
  %call18 = call i64 @write(i32 %14, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i32 0, i64 4), i64 %sub), !dbg !956
  br label %if.end19, !dbg !956

if.end19:                                         ; preds = %if.then15, %if.end13
  %16 = load i32, i32* @kp_master_id_count, align 4, !dbg !958, !tbaa !159
  %17 = load %struct.kp_kv_master_struct**, %struct.kp_kv_master_struct*** %master.addr, align 8, !dbg !958, !tbaa !56
  %18 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %17, align 8, !dbg !958, !tbaa !56
  %id20 = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %18, i32 0, i32 0, !dbg !958
  store i32 %16, i32* %id20, align 8, !dbg !958, !tbaa !959
  store i32 %16, i32* %tmp, align 4, !dbg !955, !tbaa !159
  %19 = load i32, i32* %tmp, align 4, !dbg !958, !tbaa !159
  %20 = load i32, i32* @kp_master_id_count, align 4, !dbg !961, !tbaa !159
  %inc = add i32 %20, 1, !dbg !961
  store i32 %inc, i32* @kp_master_id_count, align 4, !dbg !961, !tbaa !159
  %21 = load i32, i32* @kp_master_id_count, align 4, !dbg !962, !tbaa !159
  %cmp21 = icmp eq i32 %21, -1, !dbg !964
  br i1 %cmp21, label %if.then22, label %if.end31, !dbg !965

if.then22:                                        ; preds = %if.end19
  br label %do.body23, !dbg !966

do.body23:                                        ; preds = %if.then22
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !968, !tbaa !56
  %call24 = call i64 @pthread_self() #3, !dbg !968
  %rem25 = urem i64 %call24, 10000, !dbg !968
  %23 = load i32, i32* @kp_master_id_count, align 4, !dbg !968, !tbaa !159
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i32 0, i32 0), i64 %rem25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.kp_kv_master_create, i32 0, i32 0), i32 %23), !dbg !968
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !968, !tbaa !56
  %call27 = call i32 @fflush(%struct._IO_FILE* %24), !dbg !968
  br label %do.cond28, !dbg !968

do.cond28:                                        ; preds = %do.body23
  br label %do.end29, !dbg !968

do.end29:                                         ; preds = %do.cond28
  %25 = load %struct.kp_kv_master_struct**, %struct.kp_kv_master_struct*** %master.addr, align 8, !dbg !970, !tbaa !56
  %26 = bitcast %struct.kp_kv_master_struct** %25 to i8**, !dbg !971
  %27 = load i8, i8* %use_nvm.addr, align 1, !dbg !972, !tbaa !922, !range !930
  %tobool30 = trunc i8 %27 to i1, !dbg !972
  call void @kp_free(i8** %26, i1 zeroext %tobool30), !dbg !973
  store i32 -1, i32* %retval, align 4, !dbg !974
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !974

if.end31:                                         ; preds = %if.end19
  br label %do.body32, !dbg !975

do.body32:                                        ; preds = %if.end31
  br label %do.cond33, !dbg !976

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !976

do.end34:                                         ; preds = %do.cond33
  %28 = load %struct.kp_kv_master_struct**, %struct.kp_kv_master_struct*** %master.addr, align 8, !dbg !978, !tbaa !56
  %29 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %28, align 8, !dbg !979, !tbaa !56
  %kv = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %29, i32 0, i32 1, !dbg !980
  %30 = load i64, i64* %expected_max_keys.addr, align 8, !dbg !981, !tbaa !333
  %31 = load i8, i8* %do_conflict_detection.addr, align 1, !dbg !982, !tbaa !922, !range !930
  %tobool35 = trunc i8 %31 to i1, !dbg !982
  %call36 = call i32 @kp_kvstore_create(%struct.kp_kvstore_struct** %kv, i1 zeroext true, i64 %30, i1 zeroext %tobool35, i1 zeroext true), !dbg !983
  store i32 %call36, i32* %ret, align 4, !dbg !984, !tbaa !159
  %32 = load i32, i32* %ret, align 4, !dbg !985, !tbaa !159
  %cmp37 = icmp ne i32 %32, 0, !dbg !987
  br i1 %cmp37, label %if.then40, label %lor.lhs.false, !dbg !988

lor.lhs.false:                                    ; preds = %do.end34
  %33 = load %struct.kp_kv_master_struct**, %struct.kp_kv_master_struct*** %master.addr, align 8, !dbg !989, !tbaa !56
  %34 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %33, align 8, !dbg !990, !tbaa !56
  %kv38 = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %34, i32 0, i32 1, !dbg !991
  %35 = load %struct.kp_kvstore_struct*, %struct.kp_kvstore_struct** %kv38, align 8, !dbg !991, !tbaa !992
  %cmp39 = icmp eq %struct.kp_kvstore_struct* %35, null, !dbg !993
  br i1 %cmp39, label %if.then40, label %if.end49, !dbg !994

if.then40:                                        ; preds = %lor.lhs.false, %do.end34
  br label %do.body41, !dbg !995

do.body41:                                        ; preds = %if.then40
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !997, !tbaa !56
  %call42 = call i64 @pthread_self() #3, !dbg !997
  %rem43 = urem i64 %call42, 10000, !dbg !997
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i32 0, i32 0), i64 %rem43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.kp_kv_master_create, i32 0, i32 0)), !dbg !997
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !997, !tbaa !56
  %call45 = call i32 @fflush(%struct._IO_FILE* %37), !dbg !997
  br label %do.cond46, !dbg !997

do.cond46:                                        ; preds = %do.body41
  br label %do.end47, !dbg !997

do.end47:                                         ; preds = %do.cond46
  %38 = load %struct.kp_kv_master_struct**, %struct.kp_kv_master_struct*** %master.addr, align 8, !dbg !999, !tbaa !56
  %39 = bitcast %struct.kp_kv_master_struct** %38 to i8**, !dbg !1000
  %40 = load i8, i8* %use_nvm.addr, align 1, !dbg !1001, !tbaa !922, !range !930
  %tobool48 = trunc i8 %40 to i1, !dbg !1001
  call void @kp_free(i8** %39, i1 zeroext %tobool48), !dbg !1002
  store i32 -1, i32* %retval, align 4, !dbg !1003
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1003

if.end49:                                         ; preds = %lor.lhs.false
  %41 = load i32, i32* @mtm_enable_trace, align 4, !dbg !1004, !tbaa !159
  %tobool50 = icmp ne i32 %41, 0, !dbg !1004
  br i1 %tobool50, label %if.then51, label %if.end57, !dbg !1008

if.then51:                                        ; preds = %if.end49
  %42 = load %struct.kp_kv_master_struct**, %struct.kp_kv_master_struct*** %master.addr, align 8, !dbg !1009, !tbaa !56
  %43 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %42, align 8, !dbg !1009, !tbaa !56
  %mode52 = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %43, i32 0, i32 2, !dbg !1009
  %call53 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i32 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32* %mode52, i64 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.kp_kv_master_create, i32 0, i32 0), i32 104) #12, !dbg !1009
  %call54 = call i64 @strlen(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i32 0, i32 0)) #14, !dbg !1009
  store i64 %call54, i64* @tsz, align 8, !dbg !1009, !tbaa !257
  %44 = load i32, i32* @trace_marker, align 4, !dbg !1009, !tbaa !159
  %45 = load i64, i64* @tsz, align 8, !dbg !1009, !tbaa !257
  %sub55 = sub i64 %45, 4, !dbg !1009
  %call56 = call i64 @write(i32 %44, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i32 0, i64 4), i64 %sub55), !dbg !1009
  br label %if.end57, !dbg !1009

if.end57:                                         ; preds = %if.then51, %if.end49
  %46 = load i32, i32* %mode.addr, align 4, !dbg !1011, !tbaa !143
  %47 = load %struct.kp_kv_master_struct**, %struct.kp_kv_master_struct*** %master.addr, align 8, !dbg !1011, !tbaa !56
  %48 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %47, align 8, !dbg !1011, !tbaa !56
  %mode59 = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %48, i32 0, i32 2, !dbg !1011
  store i32 %46, i32* %mode59, align 8, !dbg !1011, !tbaa !1012
  store i32 %46, i32* %tmp58, align 4, !dbg !1008, !tbaa !143
  %49 = load i32, i32* %tmp58, align 4, !dbg !1011, !tbaa !143
  call void (...) @kp_reset_mem_accounting(), !dbg !1013
  br label %do.body60, !dbg !1014

do.body60:                                        ; preds = %if.end57
  %50 = load i8, i8* %use_nvm.addr, align 1, !dbg !1015, !tbaa !922, !range !930
  %tobool61 = trunc i8 %50 to i1, !dbg !1015
  br i1 %tobool61, label %if.then62, label %if.end64, !dbg !1018

if.then62:                                        ; preds = %do.body60
  %51 = load %struct.kp_kv_master_struct**, %struct.kp_kv_master_struct*** %master.addr, align 8, !dbg !1019, !tbaa !56
  %52 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %51, align 8, !dbg !1019, !tbaa !56
  %53 = bitcast %struct.kp_kv_master_struct* %52 to i8*, !dbg !1019
  %call63 = call i32 @flush_range(i8* %53, i64 20), !dbg !1019
  br label %if.end64, !dbg !1019

if.end64:                                         ; preds = %if.then62, %do.body60
  br label %do.cond65, !dbg !1018

do.cond65:                                        ; preds = %if.end64
  br label %do.end66, !dbg !1018

do.end66:                                         ; preds = %do.cond65
  %54 = load i32, i32* @mtm_enable_trace, align 4, !dbg !1021, !tbaa !159
  %tobool67 = icmp ne i32 %54, 0, !dbg !1021
  br i1 %tobool67, label %if.then68, label %if.end73, !dbg !1025

if.then68:                                        ; preds = %do.end66
  %55 = load %struct.kp_kv_master_struct**, %struct.kp_kv_master_struct*** %master.addr, align 8, !dbg !1026, !tbaa !56
  %56 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %55, align 8, !dbg !1026, !tbaa !56
  %state = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %56, i32 0, i32 3, !dbg !1026
  %57 = bitcast i32* %state to i8*, !dbg !1026
  %58 = call i8* @llvm.ptr.annotation.p0i8(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 63), !dbg !1026
  %59 = bitcast i8* %58 to i32*, !dbg !1026
  %call69 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i32 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32* %59, i64 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.kp_kv_master_create, i32 0, i32 0), i32 122) #12, !dbg !1026
  %call70 = call i64 @strlen(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i32 0, i32 0)) #14, !dbg !1026
  store i64 %call70, i64* @tsz, align 8, !dbg !1026, !tbaa !257
  %60 = load i32, i32* @trace_marker, align 4, !dbg !1026, !tbaa !159
  %61 = load i64, i64* @tsz, align 8, !dbg !1026, !tbaa !257
  %sub71 = sub i64 %61, 4, !dbg !1026
  %call72 = call i64 @write(i32 %60, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i32 0, i64 4), i64 %sub71), !dbg !1026
  br label %if.end73, !dbg !1026

if.end73:                                         ; preds = %if.then68, %do.end66
  %62 = load %struct.kp_kv_master_struct**, %struct.kp_kv_master_struct*** %master.addr, align 8, !dbg !1028, !tbaa !56
  %63 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %62, align 8, !dbg !1028, !tbaa !56
  %state75 = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %63, i32 0, i32 3, !dbg !1028
  %64 = bitcast i32* %state75 to i8*, !dbg !1028
  %65 = call i8* @llvm.ptr.annotation.p0i8(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 63), !dbg !1028
  %66 = bitcast i8* %65 to i32*, !dbg !1028
  store i32 1, i32* %66, align 4, !dbg !1028, !tbaa !1029
  store i32 1, i32* %tmp74, align 4, !dbg !1025, !tbaa !143
  %67 = load i32, i32* %tmp74, align 4, !dbg !1028, !tbaa !143
  br label %do.body76, !dbg !1030

do.body76:                                        ; preds = %if.end73
  %68 = load i8, i8* %use_nvm.addr, align 1, !dbg !1031, !tbaa !922, !range !930
  %tobool77 = trunc i8 %68 to i1, !dbg !1031
  br i1 %tobool77, label %if.then78, label %if.end81, !dbg !1034

if.then78:                                        ; preds = %do.body76
  %69 = load %struct.kp_kv_master_struct**, %struct.kp_kv_master_struct*** %master.addr, align 8, !dbg !1035, !tbaa !56
  %70 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %69, align 8, !dbg !1035, !tbaa !56
  %state79 = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %70, i32 0, i32 3, !dbg !1035
  %71 = bitcast i32* %state79 to i8*, !dbg !1035
  %72 = call i8* @llvm.ptr.annotation.p0i8(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 63), !dbg !1035
  %73 = bitcast i8* %72 to i32*, !dbg !1035
  %74 = bitcast i32* %73 to i8*, !dbg !1035
  %call80 = call i32 @flush_range(i8* %74, i64 4), !dbg !1035
  br label %if.end81, !dbg !1035

if.end81:                                         ; preds = %if.then78, %do.body76
  br label %do.cond82, !dbg !1034

do.cond82:                                        ; preds = %if.end81
  br label %do.end83, !dbg !1034

do.end83:                                         ; preds = %do.cond82
  br label %do.body84, !dbg !1037

do.body84:                                        ; preds = %do.end83
  br label %do.cond85, !dbg !1038

do.cond85:                                        ; preds = %do.body84
  br label %do.end86, !dbg !1038

do.end86:                                         ; preds = %do.cond85
  store i32 0, i32* %retval, align 4, !dbg !1040
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1040

cleanup:                                          ; preds = %do.end86, %do.end47, %do.end29, %do.end12
  %75 = bitcast i32* %ret to i8*, !dbg !1041
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #12, !dbg !1041
  %76 = load i32, i32* %retval, align 4, !dbg !1041
  ret i32 %76, !dbg !1041
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i64 @pthread_self() #9

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare void @abort() #10

declare void @kp_kpalloc(i8**, i64, i1 zeroext) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #11

declare i64 @write(i32, i8*, i64) #2

declare void @kp_free(i8**, i1 zeroext) #2

declare i32 @kp_kvstore_create(%struct.kp_kvstore_struct**, i1 zeroext, i64, i1 zeroext, i1 zeroext) #2

declare void @kp_reset_mem_accounting(...) #2

declare i32 @flush_range(i8*, i64) #2

; Function Attrs: nounwind
declare i8* @llvm.ptr.annotation.p0i8(i8*, i8*, i8*, i32) #12

; Function Attrs: nounwind uwtable
define i32 @kp_kv_master_destroy(%struct.kp_kv_master_struct* %master) #8 !dbg !1042 {
entry:
  %master.addr = alloca %struct.kp_kv_master_struct*, align 8
  %ret = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %use_nvm = alloca i8, align 1
  store %struct.kp_kv_master_struct* %master, %struct.kp_kv_master_struct** %master.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.kp_kv_master_struct** %master.addr, metadata !1046, metadata !DIExpression()), !dbg !1050
  %0 = bitcast i32* %ret to i8*, !dbg !1051
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #12, !dbg !1051
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1047, metadata !DIExpression()), !dbg !1052
  %1 = bitcast i32* %retval1 to i8*, !dbg !1051
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #12, !dbg !1051
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !1048, metadata !DIExpression()), !dbg !1053
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %use_nvm) #12, !dbg !1054
  call void @llvm.dbg.declare(metadata i8* %use_nvm, metadata !1049, metadata !DIExpression()), !dbg !1055
  br label %do.body, !dbg !1056

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1057

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1057

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %use_nvm) #12, !dbg !1059
  %2 = bitcast i32* %retval1 to i8*, !dbg !1059
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #12, !dbg !1059
  %3 = bitcast i32* %ret to i8*, !dbg !1059
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #12, !dbg !1059
  ret i32 0, !dbg !1060
}

; Function Attrs: nounwind uwtable
define i32 @kp_master_get_id(%struct.kp_kv_master_struct* %master) #8 !dbg !1061 {
entry:
  %retval = alloca i32, align 4
  %master.addr = alloca %struct.kp_kv_master_struct*, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.kp_kv_master_struct* %master, %struct.kp_kv_master_struct** %master.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.kp_kv_master_struct** %master.addr, metadata !1065, metadata !DIExpression()), !dbg !1067
  %0 = bitcast i32* %ret to i8*, !dbg !1068
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #12, !dbg !1068
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1066, metadata !DIExpression()), !dbg !1069
  %1 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master.addr, align 8, !dbg !1070, !tbaa !56
  %cmp = icmp eq %struct.kp_kv_master_struct* %1, null, !dbg !1072
  br i1 %cmp, label %if.then, label %if.end, !dbg !1073

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1074

do.body:                                          ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1076, !tbaa !56
  %call = call i64 @pthread_self() #3, !dbg !1076
  %rem = urem i64 %call, 10000, !dbg !1076
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0), i64 %rem, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.kp_master_get_id, i32 0, i32 0)), !dbg !1076
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1076, !tbaa !56
  %call2 = call i32 @fflush(%struct._IO_FILE* %3), !dbg !1076
  br label %do.cond, !dbg !1076

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1076

do.end:                                           ; preds = %do.cond
  store i32 -1, i32* %retval, align 4, !dbg !1078
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1078

if.end:                                           ; preds = %entry
  %4 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master.addr, align 8, !dbg !1079, !tbaa !56
  %id = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %4, i32 0, i32 0, !dbg !1080
  %5 = load i32, i32* %id, align 8, !dbg !1080, !tbaa !959
  store i32 %5, i32* %ret, align 4, !dbg !1081, !tbaa !159
  %6 = load i32, i32* %ret, align 4, !dbg !1082, !tbaa !159
  store i32 %6, i32* %retval, align 4, !dbg !1083
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1083

cleanup:                                          ; preds = %if.end, %do.end
  %7 = bitcast i32* %ret to i8*, !dbg !1084
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #12, !dbg !1084
  %8 = load i32, i32* %retval, align 4, !dbg !1084
  ret i32 %8, !dbg !1084
}

; Function Attrs: nounwind uwtable
define i32 @kp_master_get_mode(%struct.kp_kv_master_struct* %master) #8 !dbg !1085 {
entry:
  %retval = alloca i32, align 4
  %master.addr = alloca %struct.kp_kv_master_struct*, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.kp_kv_master_struct* %master, %struct.kp_kv_master_struct** %master.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.kp_kv_master_struct** %master.addr, metadata !1089, metadata !DIExpression()), !dbg !1091
  %0 = bitcast i32* %ret to i8*, !dbg !1092
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #12, !dbg !1092
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1090, metadata !DIExpression()), !dbg !1093
  %1 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master.addr, align 8, !dbg !1094, !tbaa !56
  %cmp = icmp eq %struct.kp_kv_master_struct* %1, null, !dbg !1096
  br i1 %cmp, label %if.then, label %if.end, !dbg !1097

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1098

do.body:                                          ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1100, !tbaa !56
  %call = call i64 @pthread_self() #3, !dbg !1100
  %rem = urem i64 %call, 10000, !dbg !1100
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0), i64 %rem, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.kp_master_get_mode, i32 0, i32 0)), !dbg !1100
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1100, !tbaa !56
  %call2 = call i32 @fflush(%struct._IO_FILE* %3), !dbg !1100
  br label %do.cond, !dbg !1100

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1100

do.end:                                           ; preds = %do.cond
  store i32 -1, i32* %retval, align 4, !dbg !1102
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1102

if.end:                                           ; preds = %entry
  %4 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master.addr, align 8, !dbg !1103, !tbaa !56
  %mode = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %4, i32 0, i32 2, !dbg !1104
  %5 = load i32, i32* %mode, align 8, !dbg !1104, !tbaa !1012
  store i32 %5, i32* %ret, align 4, !dbg !1105, !tbaa !143
  %6 = load i32, i32* %ret, align 4, !dbg !1106, !tbaa !143
  store i32 %6, i32* %retval, align 4, !dbg !1107
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1107

cleanup:                                          ; preds = %if.end, %do.end
  %7 = bitcast i32* %ret to i8*, !dbg !1108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #12, !dbg !1108
  %8 = load i32, i32* %retval, align 4, !dbg !1108
  ret i32 %8, !dbg !1108
}

; Function Attrs: nounwind uwtable
define i32 @kp_master_get(%struct.kp_kv_master_struct* %master, %struct.kp_ht_entry_struct* %lookup_entry, i8** %value, i64* %size) #8 !dbg !1109 {
entry:
  %retval = alloca i32, align 4
  %master.addr = alloca %struct.kp_kv_master_struct*, align 8
  %lookup_entry.addr = alloca %struct.kp_ht_entry_struct*, align 8
  %value.addr = alloca i8**, align 8
  %size.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.kp_kv_master_struct* %master, %struct.kp_kv_master_struct** %master.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.kp_kv_master_struct** %master.addr, metadata !1123, metadata !DIExpression()), !dbg !1128
  store %struct.kp_ht_entry_struct* %lookup_entry, %struct.kp_ht_entry_struct** %lookup_entry.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.kp_ht_entry_struct** %lookup_entry.addr, metadata !1124, metadata !DIExpression()), !dbg !1129
  store i8** %value, i8*** %value.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8*** %value.addr, metadata !1125, metadata !DIExpression()), !dbg !1130
  store i64* %size, i64** %size.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i64** %size.addr, metadata !1126, metadata !DIExpression()), !dbg !1131
  %0 = bitcast i32* %ret to i8*, !dbg !1132
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #12, !dbg !1132
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1127, metadata !DIExpression()), !dbg !1133
  %1 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master.addr, align 8, !dbg !1134, !tbaa !56
  %cmp = icmp eq %struct.kp_kv_master_struct* %1, null, !dbg !1136
  br i1 %cmp, label %if.then, label %if.end, !dbg !1137

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1138

do.body:                                          ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1140, !tbaa !56
  %call = call i64 @pthread_self() #3, !dbg !1140
  %rem = urem i64 %call, 10000, !dbg !1140
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0), i64 %rem, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.kp_master_get, i32 0, i32 0)), !dbg !1140
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1140, !tbaa !56
  %call2 = call i32 @fflush(%struct._IO_FILE* %3), !dbg !1140
  br label %do.cond, !dbg !1140

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1140

do.end:                                           ; preds = %do.cond
  store i32 -1, i32* %retval, align 4, !dbg !1142
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1142

if.end:                                           ; preds = %entry
  br label %do.body3, !dbg !1143

do.body3:                                         ; preds = %if.end
  br label %do.cond4, !dbg !1144

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !1144

do.end5:                                          ; preds = %do.cond4
  %4 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master.addr, align 8, !dbg !1146, !tbaa !56
  %kv = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %4, i32 0, i32 1, !dbg !1147
  %5 = load %struct.kp_kvstore_struct*, %struct.kp_kvstore_struct** %kv, align 8, !dbg !1147, !tbaa !992
  %6 = load %struct.kp_ht_entry_struct*, %struct.kp_ht_entry_struct** %lookup_entry.addr, align 8, !dbg !1148, !tbaa !56
  %7 = load i8**, i8*** %value.addr, align 8, !dbg !1149, !tbaa !56
  %8 = load i64*, i64** %size.addr, align 8, !dbg !1150, !tbaa !56
  %call6 = call i32 @kp_get(%struct.kp_kvstore_struct* %5, %struct.kp_ht_entry_struct* %6, i8** %7, i64* %8), !dbg !1151
  store i32 %call6, i32* %ret, align 4, !dbg !1152, !tbaa !159
  br label %do.body7, !dbg !1153

do.body7:                                         ; preds = %do.end5
  br label %do.cond8, !dbg !1154

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !1154

do.end9:                                          ; preds = %do.cond8
  %9 = load i32, i32* %ret, align 4, !dbg !1156, !tbaa !159
  %cmp10 = icmp slt i32 %9, 0, !dbg !1158
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !1159

if.then11:                                        ; preds = %do.end9
  br label %do.body12, !dbg !1160

do.body12:                                        ; preds = %if.then11
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1162, !tbaa !56
  %call13 = call i64 @pthread_self() #3, !dbg !1162
  %rem14 = urem i64 %call13, 10000, !dbg !1162
  %11 = load i32, i32* %ret, align 4, !dbg !1162, !tbaa !159
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i32 0, i32 0), i64 %rem14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.kp_master_get, i32 0, i32 0), i32 %11), !dbg !1162
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1162, !tbaa !56
  %call16 = call i32 @fflush(%struct._IO_FILE* %12), !dbg !1162
  br label %do.cond17, !dbg !1162

do.cond17:                                        ; preds = %do.body12
  br label %do.end18, !dbg !1162

do.end18:                                         ; preds = %do.cond17
  br label %if.end32, !dbg !1164

if.else:                                          ; preds = %do.end9
  %13 = load i32, i32* %ret, align 4, !dbg !1165, !tbaa !159
  %cmp19 = icmp ne i32 %13, 0, !dbg !1167
  br i1 %cmp19, label %land.lhs.true, label %if.end31, !dbg !1168

land.lhs.true:                                    ; preds = %if.else
  %14 = load i32, i32* %ret, align 4, !dbg !1169, !tbaa !159
  %cmp20 = icmp ne i32 %14, 1, !dbg !1170
  br i1 %cmp20, label %land.lhs.true21, label %if.end31, !dbg !1171

land.lhs.true21:                                  ; preds = %land.lhs.true
  %15 = load i32, i32* %ret, align 4, !dbg !1172, !tbaa !159
  %cmp22 = icmp ne i32 %15, 3, !dbg !1173
  br i1 %cmp22, label %if.then23, label %if.end31, !dbg !1174

if.then23:                                        ; preds = %land.lhs.true21
  br label %do.body24, !dbg !1175

do.body24:                                        ; preds = %if.then23
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1177, !tbaa !56
  %call25 = call i64 @pthread_self() #3, !dbg !1177
  %rem26 = urem i64 %call25, 10000, !dbg !1177
  %17 = load i32, i32* %ret, align 4, !dbg !1177, !tbaa !159
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i32 0, i32 0), i64 %rem26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.kp_master_get, i32 0, i32 0), i32 %17), !dbg !1177
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1177, !tbaa !56
  %call28 = call i32 @fflush(%struct._IO_FILE* %18), !dbg !1177
  br label %do.cond29, !dbg !1177

do.cond29:                                        ; preds = %do.body24
  br label %do.end30, !dbg !1177

do.end30:                                         ; preds = %do.cond29
  store i32 -1, i32* %ret, align 4, !dbg !1179, !tbaa !159
  br label %if.end31, !dbg !1180

if.end31:                                         ; preds = %do.end30, %land.lhs.true21, %land.lhs.true, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %do.end18
  %19 = load i32, i32* %ret, align 4, !dbg !1181, !tbaa !159
  store i32 %19, i32* %retval, align 4, !dbg !1182
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1182

cleanup:                                          ; preds = %if.end32, %do.end
  %20 = bitcast i32* %ret to i8*, !dbg !1183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #12, !dbg !1183
  %21 = load i32, i32* %retval, align 4, !dbg !1183
  ret i32 %21, !dbg !1183
}

declare i32 @kp_get(%struct.kp_kvstore_struct*, %struct.kp_ht_entry_struct*, i8**, i64*) #2

; Function Attrs: nounwind uwtable
define i32 @kp_master_get_by_snapshot(%struct.kp_kv_master_struct* %master, i64 %snapshot, %struct.kp_ht_entry_struct* %lookup_entry, i8** %value, i64* %size) #8 !dbg !1184 {
entry:
  %retval = alloca i32, align 4
  %master.addr = alloca %struct.kp_kv_master_struct*, align 8
  %snapshot.addr = alloca i64, align 8
  %lookup_entry.addr = alloca %struct.kp_ht_entry_struct*, align 8
  %value.addr = alloca i8**, align 8
  %size.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.kp_kv_master_struct* %master, %struct.kp_kv_master_struct** %master.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.kp_kv_master_struct** %master.addr, metadata !1189, metadata !DIExpression()), !dbg !1195
  store i64 %snapshot, i64* %snapshot.addr, align 8, !tbaa !333
  call void @llvm.dbg.declare(metadata i64* %snapshot.addr, metadata !1190, metadata !DIExpression()), !dbg !1196
  store %struct.kp_ht_entry_struct* %lookup_entry, %struct.kp_ht_entry_struct** %lookup_entry.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.kp_ht_entry_struct** %lookup_entry.addr, metadata !1191, metadata !DIExpression()), !dbg !1197
  store i8** %value, i8*** %value.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8*** %value.addr, metadata !1192, metadata !DIExpression()), !dbg !1198
  store i64* %size, i64** %size.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i64** %size.addr, metadata !1193, metadata !DIExpression()), !dbg !1199
  %0 = bitcast i32* %ret to i8*, !dbg !1200
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #12, !dbg !1200
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1194, metadata !DIExpression()), !dbg !1201
  %1 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master.addr, align 8, !dbg !1202, !tbaa !56
  %tobool = icmp ne %struct.kp_kv_master_struct* %1, null, !dbg !1202
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1204

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.kp_ht_entry_struct*, %struct.kp_ht_entry_struct** %lookup_entry.addr, align 8, !dbg !1205, !tbaa !56
  %tobool1 = icmp ne %struct.kp_ht_entry_struct* %2, null, !dbg !1205
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1206

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body, !dbg !1207

do.body:                                          ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1209, !tbaa !56
  %call = call i64 @pthread_self() #3, !dbg !1209
  %rem = urem i64 %call, 10000, !dbg !1209
  %4 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master.addr, align 8, !dbg !1209, !tbaa !56
  %5 = load %struct.kp_ht_entry_struct*, %struct.kp_ht_entry_struct** %lookup_entry.addr, align 8, !dbg !1209, !tbaa !56
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i32 0, i32 0), i64 %rem, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.kp_master_get_by_snapshot, i32 0, i32 0), %struct.kp_kv_master_struct* %4, %struct.kp_ht_entry_struct* %5), !dbg !1209
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1209, !tbaa !56
  %call3 = call i32 @fflush(%struct._IO_FILE* %6), !dbg !1209
  br label %do.cond, !dbg !1209

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1209

do.end:                                           ; preds = %do.cond
  store i32 -1, i32* %retval, align 4, !dbg !1211
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1211

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body4, !dbg !1212

do.body4:                                         ; preds = %if.end
  br label %do.cond5, !dbg !1213

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1213

do.end6:                                          ; preds = %do.cond5
  %7 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master.addr, align 8, !dbg !1215, !tbaa !56
  %kv = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %7, i32 0, i32 1, !dbg !1216
  %8 = load %struct.kp_kvstore_struct*, %struct.kp_kvstore_struct** %kv, align 8, !dbg !1216, !tbaa !992
  %9 = load %struct.kp_ht_entry_struct*, %struct.kp_ht_entry_struct** %lookup_entry.addr, align 8, !dbg !1217, !tbaa !56
  %10 = load i64, i64* %snapshot.addr, align 8, !dbg !1218, !tbaa !333
  %11 = load i8**, i8*** %value.addr, align 8, !dbg !1219, !tbaa !56
  %12 = load i64*, i64** %size.addr, align 8, !dbg !1220, !tbaa !56
  %call7 = call i32 @kp_get_version_snapshot(%struct.kp_kvstore_struct* %8, %struct.kp_ht_entry_struct* %9, i64 %10, i8** %11, i64* %12), !dbg !1221
  store i32 %call7, i32* %ret, align 4, !dbg !1222, !tbaa !159
  %13 = load i32, i32* %ret, align 4, !dbg !1223, !tbaa !159
  %cmp = icmp slt i32 %13, 0, !dbg !1225
  br i1 %cmp, label %if.then8, label %if.end16, !dbg !1226

if.then8:                                         ; preds = %do.end6
  br label %do.body9, !dbg !1227

do.body9:                                         ; preds = %if.then8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1229, !tbaa !56
  %call10 = call i64 @pthread_self() #3, !dbg !1229
  %rem11 = urem i64 %call10, 10000, !dbg !1229
  %15 = load i32, i32* %ret, align 4, !dbg !1229, !tbaa !159
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.13, i32 0, i32 0), i64 %rem11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.kp_master_get_by_snapshot, i32 0, i32 0), i32 %15), !dbg !1229
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1229, !tbaa !56
  %call13 = call i32 @fflush(%struct._IO_FILE* %16), !dbg !1229
  br label %do.cond14, !dbg !1229

do.cond14:                                        ; preds = %do.body9
  br label %do.end15, !dbg !1229

do.end15:                                         ; preds = %do.cond14
  br label %if.end16, !dbg !1231

if.end16:                                         ; preds = %do.end15, %do.end6
  br label %do.body17, !dbg !1232

do.body17:                                        ; preds = %if.end16
  br label %do.cond18, !dbg !1233

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !1233

do.end19:                                         ; preds = %do.cond18
  %17 = load i32, i32* %ret, align 4, !dbg !1235, !tbaa !159
  store i32 %17, i32* %retval, align 4, !dbg !1236
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1236

cleanup:                                          ; preds = %do.end19, %do.end
  %18 = bitcast i32* %ret to i8*, !dbg !1237
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #12, !dbg !1237
  %19 = load i32, i32* %retval, align 4, !dbg !1237
  ret i32 %19, !dbg !1237
}

declare i32 @kp_get_version_snapshot(%struct.kp_kvstore_struct*, %struct.kp_ht_entry_struct*, i64, i8**, i64*) #2

; Function Attrs: nounwind uwtable
define i64 @kp_master_get_latest_snapshot(%struct.kp_kv_master_struct* %master) #8 !dbg !1238 {
entry:
  %retval = alloca i64, align 8
  %master.addr = alloca %struct.kp_kv_master_struct*, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.kp_kv_master_struct* %master, %struct.kp_kv_master_struct** %master.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.kp_kv_master_struct** %master.addr, metadata !1242, metadata !DIExpression()), !dbg !1244
  %0 = bitcast i64* %ret to i8*, !dbg !1245
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #12, !dbg !1245
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !1243, metadata !DIExpression()), !dbg !1246
  %1 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master.addr, align 8, !dbg !1247, !tbaa !56
  %tobool = icmp ne %struct.kp_kv_master_struct* %1, null, !dbg !1247
  br i1 %tobool, label %if.end, label %if.then, !dbg !1249

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1250

do.body:                                          ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1252, !tbaa !56
  %call = call i64 @pthread_self() #3, !dbg !1252
  %rem = urem i64 %call, 10000, !dbg !1252
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0), i64 %rem, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.kp_master_get_latest_snapshot, i32 0, i32 0)), !dbg !1252
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1252, !tbaa !56
  %call2 = call i32 @fflush(%struct._IO_FILE* %3), !dbg !1252
  br label %do.cond, !dbg !1252

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1252

do.end:                                           ; preds = %do.cond
  store i64 -1, i64* %retval, align 8, !dbg !1254
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1254

if.end:                                           ; preds = %entry
  %4 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master.addr, align 8, !dbg !1255, !tbaa !56
  %kv = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %4, i32 0, i32 1, !dbg !1256
  %5 = load %struct.kp_kvstore_struct*, %struct.kp_kvstore_struct** %kv, align 8, !dbg !1256, !tbaa !992
  %call3 = call i64 @kp_get_latest_snapshot(%struct.kp_kvstore_struct* %5), !dbg !1257
  store i64 %call3, i64* %ret, align 8, !dbg !1258, !tbaa !333
  %6 = load i64, i64* %ret, align 8, !dbg !1259, !tbaa !333
  store i64 %6, i64* %retval, align 8, !dbg !1260
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1260

cleanup:                                          ; preds = %if.end, %do.end
  %7 = bitcast i64* %ret to i8*, !dbg !1261
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #12, !dbg !1261
  %8 = load i64, i64* %retval, align 8, !dbg !1261
  ret i64 %8, !dbg !1261
}

declare i64 @kp_get_latest_snapshot(%struct.kp_kvstore_struct*) #2

; Function Attrs: nounwind uwtable
define i64 @kp_master_get_initial_snapshot(%struct.kp_kv_master_struct* %master) #8 !dbg !1262 {
entry:
  %master.addr = alloca %struct.kp_kv_master_struct*, align 8
  %ret = alloca i64, align 8
  store %struct.kp_kv_master_struct* %master, %struct.kp_kv_master_struct** %master.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.kp_kv_master_struct** %master.addr, metadata !1264, metadata !DIExpression()), !dbg !1266
  %0 = bitcast i64* %ret to i8*, !dbg !1267
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #12, !dbg !1267
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !1265, metadata !DIExpression()), !dbg !1268
  %1 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master.addr, align 8, !dbg !1269, !tbaa !56
  %kv = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %1, i32 0, i32 1, !dbg !1270
  %2 = load %struct.kp_kvstore_struct*, %struct.kp_kvstore_struct** %kv, align 8, !dbg !1270, !tbaa !992
  %call = call i64 @kp_increment_snapshot_mark_in_use(%struct.kp_kvstore_struct* %2), !dbg !1271
  store i64 %call, i64* %ret, align 8, !dbg !1268, !tbaa !333
  %3 = load i64, i64* %ret, align 8, !dbg !1272, !tbaa !333
  %4 = bitcast i64* %ret to i8*, !dbg !1273
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #12, !dbg !1273
  ret i64 %3, !dbg !1274
}

declare i64 @kp_increment_snapshot_mark_in_use(%struct.kp_kvstore_struct*) #2

; Function Attrs: nounwind uwtable
define zeroext i1 @kp_master_uses_nvm(%struct.kp_kv_master_struct* %master) #8 !dbg !1275 {
entry:
  %master.addr = alloca %struct.kp_kv_master_struct*, align 8
  %ret = alloca i8, align 1
  store %struct.kp_kv_master_struct* %master, %struct.kp_kv_master_struct** %master.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.kp_kv_master_struct** %master.addr, metadata !1279, metadata !DIExpression()), !dbg !1281
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %ret) #12, !dbg !1282
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !1280, metadata !DIExpression()), !dbg !1283
  %0 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master.addr, align 8, !dbg !1284, !tbaa !56
  %kv = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %0, i32 0, i32 1, !dbg !1285
  %1 = load %struct.kp_kvstore_struct*, %struct.kp_kvstore_struct** %kv, align 8, !dbg !1285, !tbaa !992
  %call = call zeroext i1 @kp_uses_nvm(%struct.kp_kvstore_struct* %1), !dbg !1286
  %frombool = zext i1 %call to i8, !dbg !1283
  store i8 %frombool, i8* %ret, align 1, !dbg !1283, !tbaa !922
  %2 = load i8, i8* %ret, align 1, !dbg !1287, !tbaa !922, !range !930
  %tobool = trunc i8 %2 to i1, !dbg !1287
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %ret) #12, !dbg !1288
  ret i1 %tobool, !dbg !1289
}

declare zeroext i1 @kp_uses_nvm(%struct.kp_kvstore_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @kp_master_merge_commit(%struct.kp_kv_master_struct* %master, %struct.kp_commit_record_struct* %cr, i8** %conflict_list, i64* %new_snapshot) #8 !dbg !1290 {
entry:
  %retval = alloca i32, align 4
  %master.addr = alloca %struct.kp_kv_master_struct*, align 8
  %cr.addr = alloca %struct.kp_commit_record_struct*, align 8
  %conflict_list.addr = alloca i8**, align 8
  %new_snapshot.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.kp_kv_master_struct* %master, %struct.kp_kv_master_struct** %master.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.kp_kv_master_struct** %master.addr, metadata !1298, metadata !DIExpression()), !dbg !1303
  store %struct.kp_commit_record_struct* %cr, %struct.kp_commit_record_struct** %cr.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.kp_commit_record_struct** %cr.addr, metadata !1299, metadata !DIExpression()), !dbg !1304
  store i8** %conflict_list, i8*** %conflict_list.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8*** %conflict_list.addr, metadata !1300, metadata !DIExpression()), !dbg !1305
  store i64* %new_snapshot, i64** %new_snapshot.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i64** %new_snapshot.addr, metadata !1301, metadata !DIExpression()), !dbg !1306
  %0 = bitcast i32* %ret to i8*, !dbg !1307
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #12, !dbg !1307
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1302, metadata !DIExpression()), !dbg !1308
  %1 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master.addr, align 8, !dbg !1309, !tbaa !56
  %tobool = icmp ne %struct.kp_kv_master_struct* %1, null, !dbg !1309
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1311

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.kp_commit_record_struct*, %struct.kp_commit_record_struct** %cr.addr, align 8, !dbg !1312, !tbaa !56
  %tobool1 = icmp ne %struct.kp_commit_record_struct* %2, null, !dbg !1312
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1313

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body, !dbg !1314

do.body:                                          ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1316, !tbaa !56
  %call = call i64 @pthread_self() #3, !dbg !1316
  %rem = urem i64 %call, 10000, !dbg !1316
  %4 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master.addr, align 8, !dbg !1316, !tbaa !56
  %5 = load %struct.kp_commit_record_struct*, %struct.kp_commit_record_struct** %cr.addr, align 8, !dbg !1316, !tbaa !56
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i32 0, i32 0), i64 %rem, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.kp_master_merge_commit, i32 0, i32 0), %struct.kp_kv_master_struct* %4, %struct.kp_commit_record_struct* %5), !dbg !1316
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1316, !tbaa !56
  %call3 = call i32 @fflush(%struct._IO_FILE* %6), !dbg !1316
  br label %do.cond, !dbg !1316

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1316

do.end:                                           ; preds = %do.cond
  store i32 -1, i32* %retval, align 4, !dbg !1318
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1318

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body4, !dbg !1319

do.body4:                                         ; preds = %if.end
  br label %do.cond5, !dbg !1320

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1320

do.end6:                                          ; preds = %do.cond5
  %7 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master.addr, align 8, !dbg !1322, !tbaa !56
  %kv = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %7, i32 0, i32 1, !dbg !1323
  %8 = load %struct.kp_kvstore_struct*, %struct.kp_kvstore_struct** %kv, align 8, !dbg !1323, !tbaa !992
  %9 = load %struct.kp_commit_record_struct*, %struct.kp_commit_record_struct** %cr.addr, align 8, !dbg !1324, !tbaa !56
  %10 = load i8**, i8*** %conflict_list.addr, align 8, !dbg !1325, !tbaa !56
  %11 = load i64*, i64** %new_snapshot.addr, align 8, !dbg !1326, !tbaa !56
  %call7 = call i32 @kp_commit(%struct.kp_kvstore_struct* %8, %struct.kp_commit_record_struct* %9, i8** %10, i64* %11), !dbg !1327
  store i32 %call7, i32* %ret, align 4, !dbg !1328, !tbaa !159
  %12 = load i32, i32* %ret, align 4, !dbg !1329, !tbaa !159
  %cmp = icmp eq i32 %12, -1, !dbg !1331
  br i1 %cmp, label %if.then8, label %if.else, !dbg !1332

if.then8:                                         ; preds = %do.end6
  br label %do.body9, !dbg !1333

do.body9:                                         ; preds = %if.then8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1335, !tbaa !56
  %call10 = call i64 @pthread_self() #3, !dbg !1335
  %rem11 = urem i64 %call10, 10000, !dbg !1335
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i32 0, i32 0), i64 %rem11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.kp_master_merge_commit, i32 0, i32 0)), !dbg !1335
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1335, !tbaa !56
  %call13 = call i32 @fflush(%struct._IO_FILE* %14), !dbg !1335
  br label %do.cond14, !dbg !1335

do.cond14:                                        ; preds = %do.body9
  br label %do.end15, !dbg !1335

do.end15:                                         ; preds = %do.cond14
  store i32 -1, i32* %retval, align 4, !dbg !1337
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1337

if.else:                                          ; preds = %do.end6
  %15 = load i32, i32* %ret, align 4, !dbg !1338, !tbaa !159
  %cmp16 = icmp eq i32 %15, 1, !dbg !1340
  br i1 %cmp16, label %if.then17, label %if.end31, !dbg !1341

if.then17:                                        ; preds = %if.else
  br label %do.body18, !dbg !1342

do.body18:                                        ; preds = %if.then17
  br label %do.cond19, !dbg !1344

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !1344

do.end20:                                         ; preds = %do.cond19
  %16 = load i64*, i64** %new_snapshot.addr, align 8, !dbg !1346, !tbaa !56
  %17 = load i64, i64* %16, align 8, !dbg !1348, !tbaa !333
  %cmp21 = icmp eq i64 %17, -1, !dbg !1349
  br i1 %cmp21, label %if.then22, label %if.end30, !dbg !1350

if.then22:                                        ; preds = %do.end20
  br label %do.body23, !dbg !1351

do.body23:                                        ; preds = %if.then22
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1353, !tbaa !56
  %call24 = call i64 @pthread_self() #3, !dbg !1353
  %rem25 = urem i64 %call24, 10000, !dbg !1353
  %19 = load i64*, i64** %new_snapshot.addr, align 8, !dbg !1353, !tbaa !56
  %20 = load i64, i64* %19, align 8, !dbg !1353, !tbaa !333
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i32 0, i32 0), i64 %rem25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.kp_master_merge_commit, i32 0, i32 0), i64 %20), !dbg !1353
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1353, !tbaa !56
  %call27 = call i32 @fflush(%struct._IO_FILE* %21), !dbg !1353
  call void @abort() #13, !dbg !1353
  unreachable, !dbg !1353

do.cond28:                                        ; No predecessors!
  br label %do.end29, !dbg !1353

do.end29:                                         ; preds = %do.cond28
  br label %if.end30, !dbg !1355

if.end30:                                         ; preds = %do.end29, %do.end20
  store i32 1, i32* %retval, align 4, !dbg !1356
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1356

if.end31:                                         ; preds = %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  %22 = load i64*, i64** %new_snapshot.addr, align 8, !dbg !1357, !tbaa !56
  %23 = load i64, i64* %22, align 8, !dbg !1359, !tbaa !333
  %cmp33 = icmp eq i64 %23, -1, !dbg !1360
  br i1 %cmp33, label %if.then34, label %if.end42, !dbg !1361

if.then34:                                        ; preds = %if.end32
  br label %do.body35, !dbg !1362

do.body35:                                        ; preds = %if.then34
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1364, !tbaa !56
  %call36 = call i64 @pthread_self() #3, !dbg !1364
  %rem37 = urem i64 %call36, 10000, !dbg !1364
  %25 = load i64*, i64** %new_snapshot.addr, align 8, !dbg !1364, !tbaa !56
  %26 = load i64, i64* %25, align 8, !dbg !1364, !tbaa !333
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i32 0, i32 0), i64 %rem37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.kp_master_merge_commit, i32 0, i32 0), i64 %26), !dbg !1364
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1364, !tbaa !56
  %call39 = call i32 @fflush(%struct._IO_FILE* %27), !dbg !1364
  call void @abort() #13, !dbg !1364
  unreachable, !dbg !1364

do.cond40:                                        ; No predecessors!
  br label %do.end41, !dbg !1364

do.end41:                                         ; preds = %do.cond40
  br label %if.end42, !dbg !1366

if.end42:                                         ; preds = %do.end41, %if.end32
  br label %do.body43, !dbg !1367

do.body43:                                        ; preds = %if.end42
  br label %do.cond44, !dbg !1368

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !1368

do.end45:                                         ; preds = %do.cond44
  store i32 0, i32* %retval, align 4, !dbg !1370
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1370

cleanup:                                          ; preds = %do.end45, %if.end30, %do.end15, %do.end
  %28 = bitcast i32* %ret to i8*, !dbg !1371
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #12, !dbg !1371
  %29 = load i32, i32* %retval, align 4, !dbg !1371
  ret i32 %29, !dbg !1371
}

declare i32 @kp_commit(%struct.kp_kvstore_struct*, %struct.kp_commit_record_struct*, i8**, i64*) #2

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { inlinehint nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "kp_master_id_count", scope: !2, file: !3, line: 41, type: !34, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !18, globals: !33, nameTableKind: None)
!3 = !DIFile(filename: "kp_kv_master.c", directory: "/home/aksun/git/NvmBenchmarks/echo/src")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "consistency_mode_enum", file: !6, line: 37, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../include/kp_kv_master.h", directory: "/home/aksun/git/NvmBenchmarks/echo/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "MODE_WEAK", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MODE_SNAPSHOT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MODE_SEQUENTIAL", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ds_state_enum", file: !13, line: 53, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./kp_recovery.h", directory: "/home/aksun/git/NvmBenchmarks/echo/src")
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "STATE_ALLOCATED", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "STATE_ACTIVE", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "STATE_DEAD", value: 2, isUnsigned: true)
!18 = !{!19, !20, !21, !22, !25, !7, !26, !27, !23, !29, !32}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 62, baseType: !31)
!30 = !DIFile(filename: "llvm_compiler8/lib/clang/8.0.0/include/stddef.h", directory: "/home/aksun")
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!33 = !{!0}
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !35, line: 51, baseType: !7)
!35 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!36 = !{i32 2, !"Dwarf Version", i32 4}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 4}
!39 = !{i32 7, !"PIC Level", i32 2}
!40 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!41 = distinct !DISubprogram(name: "vprintf", scope: !42, file: !42, line: 36, type: !43, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !53)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!43 = !DISubroutineType(types: !44)
!44 = !{!21, !45, !46}
!45 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !27)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !48)
!48 = !{!49, !50, !51, !52}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !47, file: !3, baseType: !7, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !47, file: !3, baseType: !7, size: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !47, file: !3, baseType: !25, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !47, file: !3, baseType: !25, size: 64, offset: 128)
!53 = !{!54, !55}
!54 = !DILocalVariable(name: "__fmt", arg: 1, scope: !41, file: !42, line: 36, type: !45)
!55 = !DILocalVariable(name: "__arg", arg: 2, scope: !41, file: !42, line: 36, type: !46)
!56 = !{!57, !57, i64 0}
!57 = !{!"any pointer", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !DILocation(line: 36, column: 33, scope: !41)
!61 = !DILocation(line: 36, column: 51, scope: !41)
!62 = !DILocation(line: 38, column: 20, scope: !41)
!63 = !DILocation(line: 38, column: 28, scope: !41)
!64 = !DILocation(line: 38, column: 35, scope: !41)
!65 = !DILocation(line: 38, column: 10, scope: !41)
!66 = !DILocation(line: 38, column: 3, scope: !41)
!67 = distinct !DISubprogram(name: "getchar", scope: !42, file: !42, line: 44, type: !68, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !70)
!68 = !DISubroutineType(types: !69)
!69 = !{!21}
!70 = !{}
!71 = !DILocation(line: 46, column: 20, scope: !67)
!72 = !DILocation(line: 46, column: 10, scope: !67)
!73 = !DILocation(line: 46, column: 3, scope: !67)
!74 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !42, file: !42, line: 53, type: !75, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!75 = !DISubroutineType(types: !76)
!76 = !{!21, !77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 48, baseType: !80)
!79 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 241, size: 1728, elements: !82)
!81 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !103, !104, !105, !106, !110, !112, !114, !118, !121, !123, !124, !125, !126, !127, !128, !129}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !80, file: !81, line: 242, baseType: !21, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !80, file: !81, line: 247, baseType: !23, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !80, file: !81, line: 248, baseType: !23, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !80, file: !81, line: 249, baseType: !23, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !80, file: !81, line: 250, baseType: !23, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !80, file: !81, line: 251, baseType: !23, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !80, file: !81, line: 252, baseType: !23, size: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !80, file: !81, line: 253, baseType: !23, size: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !80, file: !81, line: 254, baseType: !23, size: 64, offset: 512)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !80, file: !81, line: 256, baseType: !23, size: 64, offset: 576)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !80, file: !81, line: 257, baseType: !23, size: 64, offset: 640)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !80, file: !81, line: 258, baseType: !23, size: 64, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !80, file: !81, line: 260, baseType: !96, size: 64, offset: 768)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !81, line: 156, size: 192, elements: !98)
!98 = !{!99, !100, !102}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !97, file: !81, line: 157, baseType: !96, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !97, file: !81, line: 158, baseType: !101, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !97, file: !81, line: 162, baseType: !21, size: 32, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !80, file: !81, line: 262, baseType: !101, size: 64, offset: 832)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !80, file: !81, line: 264, baseType: !21, size: 32, offset: 896)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !80, file: !81, line: 268, baseType: !21, size: 32, offset: 928)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !80, file: !81, line: 270, baseType: !107, size: 64, offset: 960)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !108, line: 131, baseType: !109)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!109 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !80, file: !81, line: 274, baseType: !111, size: 16, offset: 1024)
!111 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !80, file: !81, line: 275, baseType: !113, size: 8, offset: 1040)
!113 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !80, file: !81, line: 276, baseType: !115, size: 8, offset: 1048)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 1)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !80, file: !81, line: 280, baseType: !119, size: 64, offset: 1088)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !81, line: 150, baseType: null)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !80, file: !81, line: 289, baseType: !122, size: 64, offset: 1152)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !108, line: 132, baseType: !109)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !80, file: !81, line: 297, baseType: !25, size: 64, offset: 1216)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !80, file: !81, line: 298, baseType: !25, size: 64, offset: 1280)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !80, file: !81, line: 299, baseType: !25, size: 64, offset: 1344)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !80, file: !81, line: 300, baseType: !25, size: 64, offset: 1408)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !80, file: !81, line: 302, baseType: !29, size: 64, offset: 1472)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !80, file: !81, line: 303, baseType: !21, size: 32, offset: 1536)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !80, file: !81, line: 305, baseType: !130, size: 160, offset: 1568)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 160, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 20)
!133 = !{!134}
!134 = !DILocalVariable(name: "__fp", arg: 1, scope: !74, file: !42, line: 53, type: !77)
!135 = !DILocation(line: 53, column: 23, scope: !74)
!136 = !DILocation(line: 55, column: 10, scope: !74)
!137 = !{!138, !57, i64 8}
!138 = !{!"_IO_FILE", !139, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !57, i64 104, !139, i64 112, !139, i64 116, !140, i64 120, !141, i64 128, !58, i64 130, !58, i64 131, !57, i64 136, !140, i64 144, !57, i64 152, !57, i64 160, !57, i64 168, !57, i64 176, !140, i64 184, !139, i64 192, !58, i64 196}
!139 = !{!"int", !58, i64 0}
!140 = !{!"long", !58, i64 0}
!141 = !{!"short", !58, i64 0}
!142 = !{!138, !57, i64 16}
!143 = !{!58, !58, i64 0}
!144 = !DILocation(line: 55, column: 3, scope: !74)
!145 = distinct !DISubprogram(name: "getc_unlocked", scope: !42, file: !42, line: 63, type: !75, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !146)
!146 = !{!147}
!147 = !DILocalVariable(name: "__fp", arg: 1, scope: !145, file: !42, line: 63, type: !77)
!148 = !DILocation(line: 63, column: 22, scope: !145)
!149 = !DILocation(line: 65, column: 10, scope: !145)
!150 = !DILocation(line: 65, column: 3, scope: !145)
!151 = distinct !DISubprogram(name: "getchar_unlocked", scope: !42, file: !42, line: 70, type: !68, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !70)
!152 = !DILocation(line: 72, column: 10, scope: !151)
!153 = !DILocation(line: 72, column: 3, scope: !151)
!154 = distinct !DISubprogram(name: "putchar", scope: !42, file: !42, line: 79, type: !155, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !157)
!155 = !DISubroutineType(types: !156)
!156 = !{!21, !21}
!157 = !{!158}
!158 = !DILocalVariable(name: "__c", arg: 1, scope: !154, file: !42, line: 79, type: !21)
!159 = !{!139, !139, i64 0}
!160 = !DILocation(line: 79, column: 14, scope: !154)
!161 = !DILocation(line: 81, column: 20, scope: !154)
!162 = !DILocation(line: 81, column: 25, scope: !154)
!163 = !DILocation(line: 81, column: 10, scope: !154)
!164 = !DILocation(line: 81, column: 3, scope: !154)
!165 = distinct !DISubprogram(name: "fputc_unlocked", scope: !42, file: !42, line: 88, type: !166, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !168)
!166 = !DISubroutineType(types: !167)
!167 = !{!21, !21, !77}
!168 = !{!169, !170}
!169 = !DILocalVariable(name: "__c", arg: 1, scope: !165, file: !42, line: 88, type: !21)
!170 = !DILocalVariable(name: "__stream", arg: 2, scope: !165, file: !42, line: 88, type: !77)
!171 = !DILocation(line: 88, column: 21, scope: !165)
!172 = !DILocation(line: 88, column: 32, scope: !165)
!173 = !DILocation(line: 90, column: 10, scope: !165)
!174 = !{!138, !57, i64 40}
!175 = !{!138, !57, i64 48}
!176 = !DILocation(line: 90, column: 3, scope: !165)
!177 = distinct !DISubprogram(name: "putc_unlocked", scope: !42, file: !42, line: 98, type: !166, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !178)
!178 = !{!179, !180}
!179 = !DILocalVariable(name: "__c", arg: 1, scope: !177, file: !42, line: 98, type: !21)
!180 = !DILocalVariable(name: "__stream", arg: 2, scope: !177, file: !42, line: 98, type: !77)
!181 = !DILocation(line: 98, column: 20, scope: !177)
!182 = !DILocation(line: 98, column: 31, scope: !177)
!183 = !DILocation(line: 100, column: 10, scope: !177)
!184 = !DILocation(line: 100, column: 3, scope: !177)
!185 = distinct !DISubprogram(name: "putchar_unlocked", scope: !42, file: !42, line: 105, type: !155, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !186)
!186 = !{!187}
!187 = !DILocalVariable(name: "__c", arg: 1, scope: !185, file: !42, line: 105, type: !21)
!188 = !DILocation(line: 105, column: 23, scope: !185)
!189 = !DILocation(line: 107, column: 10, scope: !185)
!190 = !DILocation(line: 107, column: 3, scope: !185)
!191 = distinct !DISubprogram(name: "getline", scope: !42, file: !42, line: 115, type: !192, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !196)
!192 = !DISubroutineType(types: !193)
!193 = !{!194, !22, !195, !77}
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !108, line: 172, baseType: !109)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!196 = !{!197, !198, !199}
!197 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !191, file: !42, line: 115, type: !22)
!198 = !DILocalVariable(name: "__n", arg: 2, scope: !191, file: !42, line: 115, type: !195)
!199 = !DILocalVariable(name: "__stream", arg: 3, scope: !191, file: !42, line: 115, type: !77)
!200 = !DILocation(line: 115, column: 17, scope: !191)
!201 = !DILocation(line: 115, column: 36, scope: !191)
!202 = !DILocation(line: 115, column: 47, scope: !191)
!203 = !DILocation(line: 117, column: 22, scope: !191)
!204 = !DILocation(line: 117, column: 33, scope: !191)
!205 = !DILocation(line: 117, column: 44, scope: !191)
!206 = !DILocation(line: 117, column: 10, scope: !191)
!207 = !DILocation(line: 117, column: 3, scope: !191)
!208 = distinct !DISubprogram(name: "feof_unlocked", scope: !42, file: !42, line: 125, type: !75, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !209)
!209 = !{!210}
!210 = !DILocalVariable(name: "__stream", arg: 1, scope: !208, file: !42, line: 125, type: !77)
!211 = !DILocation(line: 125, column: 1, scope: !208)
!212 = !DILocation(line: 127, column: 10, scope: !208)
!213 = !{!138, !139, i64 0}
!214 = !DILocation(line: 127, column: 3, scope: !208)
!215 = distinct !DISubprogram(name: "ferror_unlocked", scope: !42, file: !42, line: 132, type: !75, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !216)
!216 = !{!217}
!217 = !DILocalVariable(name: "__stream", arg: 1, scope: !215, file: !42, line: 132, type: !77)
!218 = !DILocation(line: 132, column: 1, scope: !215)
!219 = !DILocation(line: 134, column: 10, scope: !215)
!220 = !DILocation(line: 134, column: 3, scope: !215)
!221 = distinct !DISubprogram(name: "atoi", scope: !222, file: !222, line: 278, type: !223, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !225)
!222 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!223 = !DISubroutineType(types: !224)
!224 = !{!21, !27}
!225 = !{!226}
!226 = !DILocalVariable(name: "__nptr", arg: 1, scope: !221, file: !222, line: 278, type: !27)
!227 = !DILocation(line: 278, column: 1, scope: !221)
!228 = !DILocation(line: 280, column: 24, scope: !221)
!229 = !DILocation(line: 280, column: 16, scope: !221)
!230 = !DILocation(line: 280, column: 10, scope: !221)
!231 = !DILocation(line: 280, column: 3, scope: !221)
!232 = distinct !DISubprogram(name: "atol", scope: !222, file: !222, line: 283, type: !233, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !235)
!233 = !DISubroutineType(types: !234)
!234 = !{!109, !27}
!235 = !{!236}
!236 = !DILocalVariable(name: "__nptr", arg: 1, scope: !232, file: !222, line: 283, type: !27)
!237 = !DILocation(line: 283, column: 1, scope: !232)
!238 = !DILocation(line: 285, column: 18, scope: !232)
!239 = !DILocation(line: 285, column: 10, scope: !232)
!240 = !DILocation(line: 285, column: 3, scope: !232)
!241 = distinct !DISubprogram(name: "atoll", scope: !222, file: !222, line: 292, type: !242, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !245)
!242 = !DISubroutineType(types: !243)
!243 = !{!244, !27}
!244 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!245 = !{!246}
!246 = !DILocalVariable(name: "__nptr", arg: 1, scope: !241, file: !222, line: 292, type: !27)
!247 = !DILocation(line: 292, column: 1, scope: !241)
!248 = !DILocation(line: 294, column: 19, scope: !241)
!249 = !DILocation(line: 294, column: 10, scope: !241)
!250 = !DILocation(line: 294, column: 3, scope: !241)
!251 = distinct !DISubprogram(name: "gnu_dev_major", scope: !252, file: !252, line: 39, type: !253, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !255)
!252 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/sysmacros.h", directory: "")
!253 = !DISubroutineType(types: !254)
!254 = !{!7, !26}
!255 = !{!256}
!256 = !DILocalVariable(name: "__dev", arg: 1, scope: !251, file: !252, line: 39, type: !26)
!257 = !{!258, !258, i64 0}
!258 = !{!"long long", !58, i64 0}
!259 = !DILocation(line: 39, column: 1, scope: !251)
!260 = !DILocation(line: 41, column: 12, scope: !251)
!261 = !DILocation(line: 41, column: 18, scope: !251)
!262 = !DILocation(line: 41, column: 24, scope: !251)
!263 = !DILocation(line: 41, column: 52, scope: !251)
!264 = !DILocation(line: 41, column: 58, scope: !251)
!265 = !DILocation(line: 41, column: 36, scope: !251)
!266 = !DILocation(line: 41, column: 65, scope: !251)
!267 = !DILocation(line: 41, column: 35, scope: !251)
!268 = !DILocation(line: 41, column: 33, scope: !251)
!269 = !DILocation(line: 41, column: 10, scope: !251)
!270 = !DILocation(line: 41, column: 3, scope: !251)
!271 = distinct !DISubprogram(name: "gnu_dev_minor", scope: !252, file: !252, line: 45, type: !253, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !272)
!272 = !{!273}
!273 = !DILocalVariable(name: "__dev", arg: 1, scope: !271, file: !252, line: 45, type: !26)
!274 = !DILocation(line: 45, column: 1, scope: !271)
!275 = !DILocation(line: 47, column: 11, scope: !271)
!276 = !DILocation(line: 47, column: 17, scope: !271)
!277 = !DILocation(line: 47, column: 44, scope: !271)
!278 = !DILocation(line: 47, column: 50, scope: !271)
!279 = !DILocation(line: 47, column: 28, scope: !271)
!280 = !DILocation(line: 47, column: 57, scope: !271)
!281 = !DILocation(line: 47, column: 27, scope: !271)
!282 = !DILocation(line: 47, column: 25, scope: !271)
!283 = !DILocation(line: 47, column: 10, scope: !271)
!284 = !DILocation(line: 47, column: 3, scope: !271)
!285 = distinct !DISubprogram(name: "gnu_dev_makedev", scope: !252, file: !252, line: 51, type: !286, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !288)
!286 = !DISubroutineType(types: !287)
!287 = !{!26, !7, !7}
!288 = !{!289, !290}
!289 = !DILocalVariable(name: "__major", arg: 1, scope: !285, file: !252, line: 51, type: !7)
!290 = !DILocalVariable(name: "__minor", arg: 2, scope: !285, file: !252, line: 51, type: !7)
!291 = !DILocation(line: 51, column: 1, scope: !285)
!292 = !DILocation(line: 53, column: 12, scope: !285)
!293 = !DILocation(line: 53, column: 20, scope: !285)
!294 = !DILocation(line: 53, column: 32, scope: !285)
!295 = !DILocation(line: 53, column: 40, scope: !285)
!296 = !DILocation(line: 53, column: 49, scope: !285)
!297 = !DILocation(line: 53, column: 28, scope: !285)
!298 = !DILocation(line: 53, column: 11, scope: !285)
!299 = !DILocation(line: 54, column: 34, scope: !285)
!300 = !DILocation(line: 54, column: 42, scope: !285)
!301 = !DILocation(line: 54, column: 8, scope: !285)
!302 = !DILocation(line: 54, column: 52, scope: !285)
!303 = !DILocation(line: 54, column: 4, scope: !285)
!304 = !DILocation(line: 55, column: 34, scope: !285)
!305 = !DILocation(line: 55, column: 42, scope: !285)
!306 = !DILocation(line: 55, column: 8, scope: !285)
!307 = !DILocation(line: 55, column: 53, scope: !285)
!308 = !DILocation(line: 55, column: 4, scope: !285)
!309 = !DILocation(line: 53, column: 3, scope: !285)
!310 = distinct !DISubprogram(name: "bsearch", scope: !311, file: !311, line: 20, type: !312, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !320)
!311 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!312 = !DISubroutineType(types: !313)
!313 = !{!25, !314, !314, !29, !29, !316}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !222, line: 741, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!21, !314, !314}
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!321 = !DILocalVariable(name: "__key", arg: 1, scope: !310, file: !311, line: 20, type: !314)
!322 = !DILocalVariable(name: "__base", arg: 2, scope: !310, file: !311, line: 20, type: !314)
!323 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !310, file: !311, line: 20, type: !29)
!324 = !DILocalVariable(name: "__size", arg: 4, scope: !310, file: !311, line: 20, type: !29)
!325 = !DILocalVariable(name: "__compar", arg: 5, scope: !310, file: !311, line: 21, type: !316)
!326 = !DILocalVariable(name: "__l", scope: !310, file: !311, line: 23, type: !29)
!327 = !DILocalVariable(name: "__u", scope: !310, file: !311, line: 23, type: !29)
!328 = !DILocalVariable(name: "__idx", scope: !310, file: !311, line: 23, type: !29)
!329 = !DILocalVariable(name: "__p", scope: !310, file: !311, line: 24, type: !314)
!330 = !DILocalVariable(name: "__comparison", scope: !310, file: !311, line: 25, type: !21)
!331 = !DILocation(line: 20, column: 22, scope: !310)
!332 = !DILocation(line: 20, column: 41, scope: !310)
!333 = !{!140, !140, i64 0}
!334 = !DILocation(line: 20, column: 56, scope: !310)
!335 = !DILocation(line: 20, column: 72, scope: !310)
!336 = !DILocation(line: 21, column: 17, scope: !310)
!337 = !DILocation(line: 23, column: 3, scope: !310)
!338 = !DILocation(line: 23, column: 10, scope: !310)
!339 = !DILocation(line: 23, column: 15, scope: !310)
!340 = !DILocation(line: 23, column: 20, scope: !310)
!341 = !DILocation(line: 24, column: 3, scope: !310)
!342 = !DILocation(line: 24, column: 15, scope: !310)
!343 = !DILocation(line: 25, column: 3, scope: !310)
!344 = !DILocation(line: 25, column: 7, scope: !310)
!345 = !DILocation(line: 27, column: 7, scope: !310)
!346 = !DILocation(line: 28, column: 9, scope: !310)
!347 = !DILocation(line: 28, column: 7, scope: !310)
!348 = !DILocation(line: 29, column: 3, scope: !310)
!349 = !DILocation(line: 29, column: 10, scope: !310)
!350 = !DILocation(line: 29, column: 16, scope: !310)
!351 = !DILocation(line: 29, column: 14, scope: !310)
!352 = !DILocation(line: 31, column: 16, scope: !353)
!353 = distinct !DILexicalBlock(scope: !310, file: !311, line: 30, column: 5)
!354 = !DILocation(line: 31, column: 22, scope: !353)
!355 = !DILocation(line: 31, column: 20, scope: !353)
!356 = !DILocation(line: 31, column: 27, scope: !353)
!357 = !DILocation(line: 31, column: 13, scope: !353)
!358 = !DILocation(line: 32, column: 39, scope: !353)
!359 = !DILocation(line: 32, column: 50, scope: !353)
!360 = !DILocation(line: 32, column: 58, scope: !353)
!361 = !DILocation(line: 32, column: 56, scope: !353)
!362 = !DILocation(line: 32, column: 47, scope: !353)
!363 = !DILocation(line: 32, column: 11, scope: !353)
!364 = !DILocation(line: 33, column: 24, scope: !353)
!365 = !DILocation(line: 33, column: 35, scope: !353)
!366 = !DILocation(line: 33, column: 42, scope: !353)
!367 = !DILocation(line: 33, column: 22, scope: !353)
!368 = !DILocation(line: 33, column: 20, scope: !353)
!369 = !DILocation(line: 34, column: 11, scope: !370)
!370 = distinct !DILexicalBlock(scope: !353, file: !311, line: 34, column: 11)
!371 = !DILocation(line: 34, column: 24, scope: !370)
!372 = !DILocation(line: 34, column: 11, scope: !353)
!373 = !DILocation(line: 35, column: 8, scope: !370)
!374 = !DILocation(line: 35, column: 6, scope: !370)
!375 = !DILocation(line: 35, column: 2, scope: !370)
!376 = !DILocation(line: 36, column: 16, scope: !377)
!377 = distinct !DILexicalBlock(scope: !370, file: !311, line: 36, column: 16)
!378 = !DILocation(line: 36, column: 29, scope: !377)
!379 = !DILocation(line: 36, column: 16, scope: !370)
!380 = !DILocation(line: 37, column: 8, scope: !377)
!381 = !DILocation(line: 37, column: 14, scope: !377)
!382 = !DILocation(line: 37, column: 6, scope: !377)
!383 = !DILocation(line: 37, column: 2, scope: !377)
!384 = !DILocation(line: 39, column: 18, scope: !377)
!385 = !DILocation(line: 39, column: 2, scope: !377)
!386 = distinct !{!386, !348, !387}
!387 = !DILocation(line: 40, column: 5, scope: !310)
!388 = !DILocation(line: 42, column: 3, scope: !310)
!389 = !DILocation(line: 43, column: 1, scope: !310)
!390 = distinct !DISubprogram(name: "atof", scope: !391, file: !391, line: 26, type: !392, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !395)
!391 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!392 = !DISubroutineType(types: !393)
!393 = !{!394, !27}
!394 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!395 = !{!396}
!396 = !DILocalVariable(name: "__nptr", arg: 1, scope: !390, file: !391, line: 26, type: !27)
!397 = !DILocation(line: 26, column: 1, scope: !390)
!398 = !DILocation(line: 28, column: 18, scope: !390)
!399 = !DILocation(line: 28, column: 10, scope: !390)
!400 = !DILocation(line: 28, column: 3, scope: !390)
!401 = distinct !DISubprogram(name: "__strcspn_c1", scope: !402, file: !402, line: 947, type: !403, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !405)
!402 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string2.h", directory: "")
!403 = !DISubroutineType(types: !404)
!404 = !{!29, !27, !21}
!405 = !{!406, !407, !408}
!406 = !DILocalVariable(name: "__s", arg: 1, scope: !401, file: !402, line: 947, type: !27)
!407 = !DILocalVariable(name: "__reject", arg: 2, scope: !401, file: !402, line: 947, type: !21)
!408 = !DILocalVariable(name: "__result", scope: !401, file: !402, line: 949, type: !29)
!409 = !DILocation(line: 947, column: 27, scope: !401)
!410 = !DILocation(line: 947, column: 36, scope: !401)
!411 = !DILocation(line: 949, column: 3, scope: !401)
!412 = !DILocation(line: 949, column: 10, scope: !401)
!413 = !DILocation(line: 950, column: 3, scope: !401)
!414 = !DILocation(line: 950, column: 10, scope: !401)
!415 = !DILocation(line: 950, column: 14, scope: !401)
!416 = !DILocation(line: 950, column: 24, scope: !401)
!417 = !DILocation(line: 950, column: 32, scope: !401)
!418 = !DILocation(line: 950, column: 35, scope: !401)
!419 = !DILocation(line: 950, column: 39, scope: !401)
!420 = !DILocation(line: 950, column: 52, scope: !401)
!421 = !DILocation(line: 950, column: 49, scope: !401)
!422 = !DILocation(line: 0, scope: !401)
!423 = !DILocation(line: 951, column: 5, scope: !401)
!424 = distinct !{!424, !413, !425}
!425 = !DILocation(line: 951, column: 7, scope: !401)
!426 = !DILocation(line: 952, column: 10, scope: !401)
!427 = !DILocation(line: 953, column: 1, scope: !401)
!428 = !DILocation(line: 952, column: 3, scope: !401)
!429 = distinct !DISubprogram(name: "__strcspn_c2", scope: !402, file: !402, line: 958, type: !430, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{!29, !27, !21, !21}
!432 = !{!433, !434, !435, !436}
!433 = !DILocalVariable(name: "__s", arg: 1, scope: !429, file: !402, line: 958, type: !27)
!434 = !DILocalVariable(name: "__reject1", arg: 2, scope: !429, file: !402, line: 958, type: !21)
!435 = !DILocalVariable(name: "__reject2", arg: 3, scope: !429, file: !402, line: 958, type: !21)
!436 = !DILocalVariable(name: "__result", scope: !429, file: !402, line: 960, type: !29)
!437 = !DILocation(line: 958, column: 27, scope: !429)
!438 = !DILocation(line: 958, column: 36, scope: !429)
!439 = !DILocation(line: 958, column: 51, scope: !429)
!440 = !DILocation(line: 960, column: 3, scope: !429)
!441 = !DILocation(line: 960, column: 10, scope: !429)
!442 = !DILocation(line: 961, column: 3, scope: !429)
!443 = !DILocation(line: 961, column: 10, scope: !429)
!444 = !DILocation(line: 961, column: 14, scope: !429)
!445 = !DILocation(line: 961, column: 24, scope: !429)
!446 = !DILocation(line: 961, column: 32, scope: !429)
!447 = !DILocation(line: 961, column: 35, scope: !429)
!448 = !DILocation(line: 961, column: 39, scope: !429)
!449 = !DILocation(line: 961, column: 52, scope: !429)
!450 = !DILocation(line: 961, column: 49, scope: !429)
!451 = !DILocation(line: 962, column: 3, scope: !429)
!452 = !DILocation(line: 962, column: 6, scope: !429)
!453 = !DILocation(line: 962, column: 10, scope: !429)
!454 = !DILocation(line: 962, column: 23, scope: !429)
!455 = !DILocation(line: 962, column: 20, scope: !429)
!456 = !DILocation(line: 0, scope: !429)
!457 = !DILocation(line: 963, column: 5, scope: !429)
!458 = distinct !{!458, !442, !459}
!459 = !DILocation(line: 963, column: 7, scope: !429)
!460 = !DILocation(line: 964, column: 10, scope: !429)
!461 = !DILocation(line: 965, column: 1, scope: !429)
!462 = !DILocation(line: 964, column: 3, scope: !429)
!463 = distinct !DISubprogram(name: "__strcspn_c3", scope: !402, file: !402, line: 970, type: !464, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !466)
!464 = !DISubroutineType(types: !465)
!465 = !{!29, !27, !21, !21, !21}
!466 = !{!467, !468, !469, !470, !471}
!467 = !DILocalVariable(name: "__s", arg: 1, scope: !463, file: !402, line: 970, type: !27)
!468 = !DILocalVariable(name: "__reject1", arg: 2, scope: !463, file: !402, line: 970, type: !21)
!469 = !DILocalVariable(name: "__reject2", arg: 3, scope: !463, file: !402, line: 970, type: !21)
!470 = !DILocalVariable(name: "__reject3", arg: 4, scope: !463, file: !402, line: 971, type: !21)
!471 = !DILocalVariable(name: "__result", scope: !463, file: !402, line: 973, type: !29)
!472 = !DILocation(line: 970, column: 27, scope: !463)
!473 = !DILocation(line: 970, column: 36, scope: !463)
!474 = !DILocation(line: 970, column: 51, scope: !463)
!475 = !DILocation(line: 971, column: 12, scope: !463)
!476 = !DILocation(line: 973, column: 3, scope: !463)
!477 = !DILocation(line: 973, column: 10, scope: !463)
!478 = !DILocation(line: 974, column: 3, scope: !463)
!479 = !DILocation(line: 974, column: 10, scope: !463)
!480 = !DILocation(line: 974, column: 14, scope: !463)
!481 = !DILocation(line: 974, column: 24, scope: !463)
!482 = !DILocation(line: 974, column: 32, scope: !463)
!483 = !DILocation(line: 974, column: 35, scope: !463)
!484 = !DILocation(line: 974, column: 39, scope: !463)
!485 = !DILocation(line: 974, column: 52, scope: !463)
!486 = !DILocation(line: 974, column: 49, scope: !463)
!487 = !DILocation(line: 975, column: 3, scope: !463)
!488 = !DILocation(line: 975, column: 6, scope: !463)
!489 = !DILocation(line: 975, column: 10, scope: !463)
!490 = !DILocation(line: 975, column: 23, scope: !463)
!491 = !DILocation(line: 975, column: 20, scope: !463)
!492 = !DILocation(line: 975, column: 33, scope: !463)
!493 = !DILocation(line: 975, column: 36, scope: !463)
!494 = !DILocation(line: 975, column: 40, scope: !463)
!495 = !DILocation(line: 975, column: 53, scope: !463)
!496 = !DILocation(line: 975, column: 50, scope: !463)
!497 = !DILocation(line: 0, scope: !463)
!498 = !DILocation(line: 976, column: 5, scope: !463)
!499 = distinct !{!499, !478, !500}
!500 = !DILocation(line: 976, column: 7, scope: !463)
!501 = !DILocation(line: 977, column: 10, scope: !463)
!502 = !DILocation(line: 978, column: 1, scope: !463)
!503 = !DILocation(line: 977, column: 3, scope: !463)
!504 = distinct !DISubprogram(name: "__strspn_c1", scope: !402, file: !402, line: 1023, type: !403, scopeLine: 1024, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !505)
!505 = !{!506, !507, !508}
!506 = !DILocalVariable(name: "__s", arg: 1, scope: !504, file: !402, line: 1023, type: !27)
!507 = !DILocalVariable(name: "__accept", arg: 2, scope: !504, file: !402, line: 1023, type: !21)
!508 = !DILocalVariable(name: "__result", scope: !504, file: !402, line: 1025, type: !29)
!509 = !DILocation(line: 1023, column: 26, scope: !504)
!510 = !DILocation(line: 1023, column: 35, scope: !504)
!511 = !DILocation(line: 1025, column: 3, scope: !504)
!512 = !DILocation(line: 1025, column: 10, scope: !504)
!513 = !DILocation(line: 1027, column: 3, scope: !504)
!514 = !DILocation(line: 1027, column: 10, scope: !504)
!515 = !DILocation(line: 1027, column: 14, scope: !504)
!516 = !DILocation(line: 1027, column: 27, scope: !504)
!517 = !DILocation(line: 1027, column: 24, scope: !504)
!518 = !DILocation(line: 1028, column: 5, scope: !504)
!519 = distinct !{!519, !513, !520}
!520 = !DILocation(line: 1028, column: 7, scope: !504)
!521 = !DILocation(line: 1029, column: 10, scope: !504)
!522 = !DILocation(line: 1030, column: 1, scope: !504)
!523 = !DILocation(line: 1029, column: 3, scope: !504)
!524 = distinct !DISubprogram(name: "__strspn_c2", scope: !402, file: !402, line: 1035, type: !430, scopeLine: 1036, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !525)
!525 = !{!526, !527, !528, !529}
!526 = !DILocalVariable(name: "__s", arg: 1, scope: !524, file: !402, line: 1035, type: !27)
!527 = !DILocalVariable(name: "__accept1", arg: 2, scope: !524, file: !402, line: 1035, type: !21)
!528 = !DILocalVariable(name: "__accept2", arg: 3, scope: !524, file: !402, line: 1035, type: !21)
!529 = !DILocalVariable(name: "__result", scope: !524, file: !402, line: 1037, type: !29)
!530 = !DILocation(line: 1035, column: 26, scope: !524)
!531 = !DILocation(line: 1035, column: 35, scope: !524)
!532 = !DILocation(line: 1035, column: 50, scope: !524)
!533 = !DILocation(line: 1037, column: 3, scope: !524)
!534 = !DILocation(line: 1037, column: 10, scope: !524)
!535 = !DILocation(line: 1039, column: 3, scope: !524)
!536 = !DILocation(line: 1039, column: 10, scope: !524)
!537 = !DILocation(line: 1039, column: 14, scope: !524)
!538 = !DILocation(line: 1039, column: 27, scope: !524)
!539 = !DILocation(line: 1039, column: 24, scope: !524)
!540 = !DILocation(line: 1039, column: 37, scope: !524)
!541 = !DILocation(line: 1039, column: 40, scope: !524)
!542 = !DILocation(line: 1039, column: 44, scope: !524)
!543 = !DILocation(line: 1039, column: 57, scope: !524)
!544 = !DILocation(line: 1039, column: 54, scope: !524)
!545 = !DILocation(line: 1040, column: 5, scope: !524)
!546 = distinct !{!546, !535, !547}
!547 = !DILocation(line: 1040, column: 7, scope: !524)
!548 = !DILocation(line: 1041, column: 10, scope: !524)
!549 = !DILocation(line: 1042, column: 1, scope: !524)
!550 = !DILocation(line: 1041, column: 3, scope: !524)
!551 = distinct !DISubprogram(name: "__strspn_c3", scope: !402, file: !402, line: 1047, type: !464, scopeLine: 1048, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !552)
!552 = !{!553, !554, !555, !556, !557}
!553 = !DILocalVariable(name: "__s", arg: 1, scope: !551, file: !402, line: 1047, type: !27)
!554 = !DILocalVariable(name: "__accept1", arg: 2, scope: !551, file: !402, line: 1047, type: !21)
!555 = !DILocalVariable(name: "__accept2", arg: 3, scope: !551, file: !402, line: 1047, type: !21)
!556 = !DILocalVariable(name: "__accept3", arg: 4, scope: !551, file: !402, line: 1047, type: !21)
!557 = !DILocalVariable(name: "__result", scope: !551, file: !402, line: 1049, type: !29)
!558 = !DILocation(line: 1047, column: 26, scope: !551)
!559 = !DILocation(line: 1047, column: 35, scope: !551)
!560 = !DILocation(line: 1047, column: 50, scope: !551)
!561 = !DILocation(line: 1047, column: 65, scope: !551)
!562 = !DILocation(line: 1049, column: 3, scope: !551)
!563 = !DILocation(line: 1049, column: 10, scope: !551)
!564 = !DILocation(line: 1051, column: 3, scope: !551)
!565 = !DILocation(line: 1051, column: 10, scope: !551)
!566 = !DILocation(line: 1051, column: 14, scope: !551)
!567 = !DILocation(line: 1051, column: 27, scope: !551)
!568 = !DILocation(line: 1051, column: 24, scope: !551)
!569 = !DILocation(line: 1051, column: 37, scope: !551)
!570 = !DILocation(line: 1051, column: 40, scope: !551)
!571 = !DILocation(line: 1051, column: 44, scope: !551)
!572 = !DILocation(line: 1051, column: 57, scope: !551)
!573 = !DILocation(line: 1051, column: 54, scope: !551)
!574 = !DILocation(line: 1052, column: 3, scope: !551)
!575 = !DILocation(line: 1052, column: 6, scope: !551)
!576 = !DILocation(line: 1052, column: 10, scope: !551)
!577 = !DILocation(line: 1052, column: 23, scope: !551)
!578 = !DILocation(line: 1052, column: 20, scope: !551)
!579 = !DILocation(line: 1053, column: 5, scope: !551)
!580 = distinct !{!580, !564, !581}
!581 = !DILocation(line: 1053, column: 7, scope: !551)
!582 = !DILocation(line: 1054, column: 10, scope: !551)
!583 = !DILocation(line: 1055, column: 1, scope: !551)
!584 = !DILocation(line: 1054, column: 3, scope: !551)
!585 = distinct !DISubprogram(name: "__strpbrk_c2", scope: !402, file: !402, line: 1100, type: !586, scopeLine: 1101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{!23, !27, !21, !21}
!588 = !{!589, !590, !591}
!589 = !DILocalVariable(name: "__s", arg: 1, scope: !585, file: !402, line: 1100, type: !27)
!590 = !DILocalVariable(name: "__accept1", arg: 2, scope: !585, file: !402, line: 1100, type: !21)
!591 = !DILocalVariable(name: "__accept2", arg: 3, scope: !585, file: !402, line: 1100, type: !21)
!592 = !DILocation(line: 1100, column: 27, scope: !585)
!593 = !DILocation(line: 1100, column: 36, scope: !585)
!594 = !DILocation(line: 1100, column: 51, scope: !585)
!595 = !DILocation(line: 1103, column: 3, scope: !585)
!596 = !DILocation(line: 1103, column: 11, scope: !585)
!597 = !DILocation(line: 1103, column: 10, scope: !585)
!598 = !DILocation(line: 1103, column: 15, scope: !585)
!599 = !DILocation(line: 1103, column: 23, scope: !585)
!600 = !DILocation(line: 1103, column: 27, scope: !585)
!601 = !DILocation(line: 1103, column: 26, scope: !585)
!602 = !DILocation(line: 1103, column: 34, scope: !585)
!603 = !DILocation(line: 1103, column: 31, scope: !585)
!604 = !DILocation(line: 1103, column: 44, scope: !585)
!605 = !DILocation(line: 1103, column: 48, scope: !585)
!606 = !DILocation(line: 1103, column: 47, scope: !585)
!607 = !DILocation(line: 1103, column: 55, scope: !585)
!608 = !DILocation(line: 1103, column: 52, scope: !585)
!609 = !DILocation(line: 0, scope: !585)
!610 = !DILocation(line: 1104, column: 5, scope: !585)
!611 = distinct !{!611, !595, !612}
!612 = !DILocation(line: 1104, column: 7, scope: !585)
!613 = !DILocation(line: 1105, column: 11, scope: !585)
!614 = !DILocation(line: 1105, column: 10, scope: !585)
!615 = !DILocation(line: 1105, column: 15, scope: !585)
!616 = !DILocation(line: 1105, column: 50, scope: !585)
!617 = !DILocation(line: 1105, column: 41, scope: !585)
!618 = !DILocation(line: 1105, column: 32, scope: !585)
!619 = !DILocation(line: 1105, column: 3, scope: !585)
!620 = distinct !DISubprogram(name: "__strpbrk_c3", scope: !402, file: !402, line: 1111, type: !621, scopeLine: 1112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{!23, !27, !21, !21, !21}
!623 = !{!624, !625, !626, !627}
!624 = !DILocalVariable(name: "__s", arg: 1, scope: !620, file: !402, line: 1111, type: !27)
!625 = !DILocalVariable(name: "__accept1", arg: 2, scope: !620, file: !402, line: 1111, type: !21)
!626 = !DILocalVariable(name: "__accept2", arg: 3, scope: !620, file: !402, line: 1111, type: !21)
!627 = !DILocalVariable(name: "__accept3", arg: 4, scope: !620, file: !402, line: 1111, type: !21)
!628 = !DILocation(line: 1111, column: 27, scope: !620)
!629 = !DILocation(line: 1111, column: 36, scope: !620)
!630 = !DILocation(line: 1111, column: 51, scope: !620)
!631 = !DILocation(line: 1111, column: 66, scope: !620)
!632 = !DILocation(line: 1114, column: 3, scope: !620)
!633 = !DILocation(line: 1114, column: 11, scope: !620)
!634 = !DILocation(line: 1114, column: 10, scope: !620)
!635 = !DILocation(line: 1114, column: 15, scope: !620)
!636 = !DILocation(line: 1114, column: 23, scope: !620)
!637 = !DILocation(line: 1114, column: 27, scope: !620)
!638 = !DILocation(line: 1114, column: 26, scope: !620)
!639 = !DILocation(line: 1114, column: 34, scope: !620)
!640 = !DILocation(line: 1114, column: 31, scope: !620)
!641 = !DILocation(line: 1114, column: 44, scope: !620)
!642 = !DILocation(line: 1114, column: 48, scope: !620)
!643 = !DILocation(line: 1114, column: 47, scope: !620)
!644 = !DILocation(line: 1114, column: 55, scope: !620)
!645 = !DILocation(line: 1114, column: 52, scope: !620)
!646 = !DILocation(line: 1115, column: 3, scope: !620)
!647 = !DILocation(line: 1115, column: 7, scope: !620)
!648 = !DILocation(line: 1115, column: 6, scope: !620)
!649 = !DILocation(line: 1115, column: 14, scope: !620)
!650 = !DILocation(line: 1115, column: 11, scope: !620)
!651 = !DILocation(line: 0, scope: !620)
!652 = !DILocation(line: 1116, column: 5, scope: !620)
!653 = distinct !{!653, !632, !654}
!654 = !DILocation(line: 1116, column: 7, scope: !620)
!655 = !DILocation(line: 1117, column: 11, scope: !620)
!656 = !DILocation(line: 1117, column: 10, scope: !620)
!657 = !DILocation(line: 1117, column: 15, scope: !620)
!658 = !DILocation(line: 1117, column: 50, scope: !620)
!659 = !DILocation(line: 1117, column: 41, scope: !620)
!660 = !DILocation(line: 1117, column: 32, scope: !620)
!661 = !DILocation(line: 1117, column: 3, scope: !620)
!662 = distinct !DISubprogram(name: "__strtok_r_1c", scope: !402, file: !402, line: 1149, type: !663, scopeLine: 1150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !665)
!663 = !DISubroutineType(types: !664)
!664 = !{!23, !23, !24, !22}
!665 = !{!666, !667, !668, !669}
!666 = !DILocalVariable(name: "__s", arg: 1, scope: !662, file: !402, line: 1149, type: !23)
!667 = !DILocalVariable(name: "__sep", arg: 2, scope: !662, file: !402, line: 1149, type: !24)
!668 = !DILocalVariable(name: "__nextp", arg: 3, scope: !662, file: !402, line: 1149, type: !22)
!669 = !DILocalVariable(name: "__result", scope: !662, file: !402, line: 1151, type: !23)
!670 = !DILocation(line: 1149, column: 22, scope: !662)
!671 = !DILocation(line: 1149, column: 32, scope: !662)
!672 = !DILocation(line: 1149, column: 46, scope: !662)
!673 = !DILocation(line: 1151, column: 3, scope: !662)
!674 = !DILocation(line: 1151, column: 9, scope: !662)
!675 = !DILocation(line: 1152, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !662, file: !402, line: 1152, column: 7)
!677 = !DILocation(line: 1152, column: 11, scope: !676)
!678 = !DILocation(line: 1152, column: 7, scope: !662)
!679 = !DILocation(line: 1153, column: 12, scope: !676)
!680 = !DILocation(line: 1153, column: 11, scope: !676)
!681 = !DILocation(line: 1153, column: 9, scope: !676)
!682 = !DILocation(line: 1153, column: 5, scope: !676)
!683 = !DILocation(line: 1154, column: 3, scope: !662)
!684 = !DILocation(line: 1154, column: 11, scope: !662)
!685 = !DILocation(line: 1154, column: 10, scope: !662)
!686 = !DILocation(line: 1154, column: 18, scope: !662)
!687 = !DILocation(line: 1154, column: 15, scope: !662)
!688 = !DILocation(line: 1155, column: 5, scope: !662)
!689 = distinct !{!689, !683, !690}
!690 = !DILocation(line: 1155, column: 7, scope: !662)
!691 = !DILocation(line: 1156, column: 12, scope: !662)
!692 = !DILocation(line: 1157, column: 8, scope: !693)
!693 = distinct !DILexicalBlock(scope: !662, file: !402, line: 1157, column: 7)
!694 = !DILocation(line: 1157, column: 7, scope: !693)
!695 = !DILocation(line: 1157, column: 12, scope: !693)
!696 = !DILocation(line: 1157, column: 7, scope: !662)
!697 = !DILocation(line: 1159, column: 21, scope: !698)
!698 = distinct !DILexicalBlock(scope: !693, file: !402, line: 1158, column: 5)
!699 = !DILocation(line: 1159, column: 16, scope: !698)
!700 = !DILocation(line: 1160, column: 7, scope: !698)
!701 = !DILocation(line: 1160, column: 15, scope: !698)
!702 = !DILocation(line: 1160, column: 14, scope: !698)
!703 = !DILocation(line: 1160, column: 19, scope: !698)
!704 = !DILocation(line: 1161, column: 10, scope: !705)
!705 = distinct !DILexicalBlock(scope: !698, file: !402, line: 1161, column: 6)
!706 = !DILocation(line: 1161, column: 6, scope: !705)
!707 = !DILocation(line: 1161, column: 16, scope: !705)
!708 = !DILocation(line: 1161, column: 13, scope: !705)
!709 = !DILocation(line: 1161, column: 6, scope: !698)
!710 = !DILocation(line: 1163, column: 6, scope: !711)
!711 = distinct !DILexicalBlock(scope: !705, file: !402, line: 1162, column: 4)
!712 = !DILocation(line: 1163, column: 14, scope: !711)
!713 = !DILocation(line: 1164, column: 6, scope: !711)
!714 = distinct !{!714, !700, !715}
!715 = !DILocation(line: 1165, column: 4, scope: !698)
!716 = !DILocation(line: 1166, column: 5, scope: !698)
!717 = !DILocation(line: 1167, column: 14, scope: !662)
!718 = !DILocation(line: 1167, column: 4, scope: !662)
!719 = !DILocation(line: 1167, column: 12, scope: !662)
!720 = !DILocation(line: 1168, column: 10, scope: !662)
!721 = !DILocation(line: 1169, column: 1, scope: !662)
!722 = !DILocation(line: 1168, column: 3, scope: !662)
!723 = distinct !DISubprogram(name: "__strsep_1c", scope: !402, file: !402, line: 1199, type: !724, scopeLine: 1200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !726)
!724 = !DISubroutineType(types: !725)
!725 = !{!23, !22, !24}
!726 = !{!727, !728, !729}
!727 = !DILocalVariable(name: "__s", arg: 1, scope: !723, file: !402, line: 1199, type: !22)
!728 = !DILocalVariable(name: "__reject", arg: 2, scope: !723, file: !402, line: 1199, type: !24)
!729 = !DILocalVariable(name: "__retval", scope: !723, file: !402, line: 1201, type: !23)
!730 = !DILocation(line: 1199, column: 21, scope: !723)
!731 = !DILocation(line: 1199, column: 31, scope: !723)
!732 = !DILocation(line: 1201, column: 3, scope: !723)
!733 = !DILocation(line: 1201, column: 9, scope: !723)
!734 = !DILocation(line: 1201, column: 21, scope: !723)
!735 = !DILocation(line: 1201, column: 20, scope: !723)
!736 = !DILocation(line: 1202, column: 7, scope: !737)
!737 = distinct !DILexicalBlock(scope: !723, file: !402, line: 1202, column: 7)
!738 = !DILocation(line: 1202, column: 16, scope: !737)
!739 = !DILocation(line: 1202, column: 24, scope: !737)
!740 = !DILocation(line: 1202, column: 35, scope: !737)
!741 = !DILocation(line: 1202, column: 29, scope: !737)
!742 = !DILocation(line: 1202, column: 33, scope: !737)
!743 = !DILocation(line: 1202, column: 64, scope: !737)
!744 = !DILocation(line: 1202, column: 7, scope: !723)
!745 = !DILocation(line: 1203, column: 8, scope: !737)
!746 = !DILocation(line: 1203, column: 12, scope: !737)
!747 = !DILocation(line: 1203, column: 15, scope: !737)
!748 = !DILocation(line: 1203, column: 5, scope: !737)
!749 = !DILocation(line: 1204, column: 10, scope: !723)
!750 = !DILocation(line: 1205, column: 1, scope: !723)
!751 = !DILocation(line: 1204, column: 3, scope: !723)
!752 = distinct !DISubprogram(name: "__strsep_2c", scope: !402, file: !402, line: 1209, type: !753, scopeLine: 1210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !755)
!753 = !DISubroutineType(types: !754)
!754 = !{!23, !22, !24, !24}
!755 = !{!756, !757, !758, !759, !760}
!756 = !DILocalVariable(name: "__s", arg: 1, scope: !752, file: !402, line: 1209, type: !22)
!757 = !DILocalVariable(name: "__reject1", arg: 2, scope: !752, file: !402, line: 1209, type: !24)
!758 = !DILocalVariable(name: "__reject2", arg: 3, scope: !752, file: !402, line: 1209, type: !24)
!759 = !DILocalVariable(name: "__retval", scope: !752, file: !402, line: 1211, type: !23)
!760 = !DILocalVariable(name: "__cp", scope: !761, file: !402, line: 1214, type: !23)
!761 = distinct !DILexicalBlock(scope: !762, file: !402, line: 1213, column: 5)
!762 = distinct !DILexicalBlock(scope: !752, file: !402, line: 1212, column: 7)
!763 = !DILocation(line: 1209, column: 21, scope: !752)
!764 = !DILocation(line: 1209, column: 31, scope: !752)
!765 = !DILocation(line: 1209, column: 47, scope: !752)
!766 = !DILocation(line: 1211, column: 3, scope: !752)
!767 = !DILocation(line: 1211, column: 9, scope: !752)
!768 = !DILocation(line: 1211, column: 21, scope: !752)
!769 = !DILocation(line: 1211, column: 20, scope: !752)
!770 = !DILocation(line: 1212, column: 7, scope: !762)
!771 = !DILocation(line: 1212, column: 16, scope: !762)
!772 = !DILocation(line: 1212, column: 7, scope: !752)
!773 = !DILocation(line: 1214, column: 7, scope: !761)
!774 = !DILocation(line: 1214, column: 13, scope: !761)
!775 = !DILocation(line: 1214, column: 20, scope: !761)
!776 = !DILocation(line: 1215, column: 7, scope: !761)
!777 = !DILocation(line: 1217, column: 9, scope: !778)
!778 = distinct !DILexicalBlock(scope: !779, file: !402, line: 1217, column: 8)
!779 = distinct !DILexicalBlock(scope: !761, file: !402, line: 1216, column: 2)
!780 = !DILocation(line: 1217, column: 8, scope: !778)
!781 = !DILocation(line: 1217, column: 14, scope: !778)
!782 = !DILocation(line: 1217, column: 8, scope: !779)
!783 = !DILocation(line: 1219, column: 13, scope: !784)
!784 = distinct !DILexicalBlock(scope: !778, file: !402, line: 1218, column: 6)
!785 = !DILocation(line: 1220, column: 4, scope: !784)
!786 = !DILocation(line: 1222, column: 9, scope: !787)
!787 = distinct !DILexicalBlock(scope: !779, file: !402, line: 1222, column: 8)
!788 = !DILocation(line: 1222, column: 8, scope: !787)
!789 = !DILocation(line: 1222, column: 17, scope: !787)
!790 = !DILocation(line: 1222, column: 14, scope: !787)
!791 = !DILocation(line: 1222, column: 27, scope: !787)
!792 = !DILocation(line: 1222, column: 31, scope: !787)
!793 = !DILocation(line: 1222, column: 30, scope: !787)
!794 = !DILocation(line: 1222, column: 39, scope: !787)
!795 = !DILocation(line: 1222, column: 36, scope: !787)
!796 = !DILocation(line: 1222, column: 8, scope: !779)
!797 = !DILocation(line: 1224, column: 13, scope: !798)
!798 = distinct !DILexicalBlock(scope: !787, file: !402, line: 1223, column: 6)
!799 = !DILocation(line: 1224, column: 16, scope: !798)
!800 = !DILocation(line: 1225, column: 8, scope: !798)
!801 = !DILocation(line: 1227, column: 4, scope: !779)
!802 = distinct !{!802, !776, !803}
!803 = !DILocation(line: 1228, column: 2, scope: !761)
!804 = !DILocation(line: 1229, column: 14, scope: !761)
!805 = !DILocation(line: 1229, column: 8, scope: !761)
!806 = !DILocation(line: 1229, column: 12, scope: !761)
!807 = !DILocation(line: 1230, column: 5, scope: !762)
!808 = !DILocation(line: 1230, column: 5, scope: !761)
!809 = !DILocation(line: 1231, column: 10, scope: !752)
!810 = !DILocation(line: 1232, column: 1, scope: !752)
!811 = !DILocation(line: 1231, column: 3, scope: !752)
!812 = distinct !DISubprogram(name: "__strsep_3c", scope: !402, file: !402, line: 1237, type: !813, scopeLine: 1238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !815)
!813 = !DISubroutineType(types: !814)
!814 = !{!23, !22, !24, !24, !24}
!815 = !{!816, !817, !818, !819, !820, !821}
!816 = !DILocalVariable(name: "__s", arg: 1, scope: !812, file: !402, line: 1237, type: !22)
!817 = !DILocalVariable(name: "__reject1", arg: 2, scope: !812, file: !402, line: 1237, type: !24)
!818 = !DILocalVariable(name: "__reject2", arg: 3, scope: !812, file: !402, line: 1237, type: !24)
!819 = !DILocalVariable(name: "__reject3", arg: 4, scope: !812, file: !402, line: 1237, type: !24)
!820 = !DILocalVariable(name: "__retval", scope: !812, file: !402, line: 1239, type: !23)
!821 = !DILocalVariable(name: "__cp", scope: !822, file: !402, line: 1242, type: !23)
!822 = distinct !DILexicalBlock(scope: !823, file: !402, line: 1241, column: 5)
!823 = distinct !DILexicalBlock(scope: !812, file: !402, line: 1240, column: 7)
!824 = !DILocation(line: 1237, column: 21, scope: !812)
!825 = !DILocation(line: 1237, column: 31, scope: !812)
!826 = !DILocation(line: 1237, column: 47, scope: !812)
!827 = !DILocation(line: 1237, column: 63, scope: !812)
!828 = !DILocation(line: 1239, column: 3, scope: !812)
!829 = !DILocation(line: 1239, column: 9, scope: !812)
!830 = !DILocation(line: 1239, column: 21, scope: !812)
!831 = !DILocation(line: 1239, column: 20, scope: !812)
!832 = !DILocation(line: 1240, column: 7, scope: !823)
!833 = !DILocation(line: 1240, column: 16, scope: !823)
!834 = !DILocation(line: 1240, column: 7, scope: !812)
!835 = !DILocation(line: 1242, column: 7, scope: !822)
!836 = !DILocation(line: 1242, column: 13, scope: !822)
!837 = !DILocation(line: 1242, column: 20, scope: !822)
!838 = !DILocation(line: 1243, column: 7, scope: !822)
!839 = !DILocation(line: 1245, column: 9, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !402, line: 1245, column: 8)
!841 = distinct !DILexicalBlock(scope: !822, file: !402, line: 1244, column: 2)
!842 = !DILocation(line: 1245, column: 8, scope: !840)
!843 = !DILocation(line: 1245, column: 14, scope: !840)
!844 = !DILocation(line: 1245, column: 8, scope: !841)
!845 = !DILocation(line: 1247, column: 13, scope: !846)
!846 = distinct !DILexicalBlock(scope: !840, file: !402, line: 1246, column: 6)
!847 = !DILocation(line: 1248, column: 4, scope: !846)
!848 = !DILocation(line: 1250, column: 9, scope: !849)
!849 = distinct !DILexicalBlock(scope: !841, file: !402, line: 1250, column: 8)
!850 = !DILocation(line: 1250, column: 8, scope: !849)
!851 = !DILocation(line: 1250, column: 17, scope: !849)
!852 = !DILocation(line: 1250, column: 14, scope: !849)
!853 = !DILocation(line: 1250, column: 27, scope: !849)
!854 = !DILocation(line: 1250, column: 31, scope: !849)
!855 = !DILocation(line: 1250, column: 30, scope: !849)
!856 = !DILocation(line: 1250, column: 39, scope: !849)
!857 = !DILocation(line: 1250, column: 36, scope: !849)
!858 = !DILocation(line: 1250, column: 49, scope: !849)
!859 = !DILocation(line: 1250, column: 53, scope: !849)
!860 = !DILocation(line: 1250, column: 52, scope: !849)
!861 = !DILocation(line: 1250, column: 61, scope: !849)
!862 = !DILocation(line: 1250, column: 58, scope: !849)
!863 = !DILocation(line: 1250, column: 8, scope: !841)
!864 = !DILocation(line: 1252, column: 13, scope: !865)
!865 = distinct !DILexicalBlock(scope: !849, file: !402, line: 1251, column: 6)
!866 = !DILocation(line: 1252, column: 16, scope: !865)
!867 = !DILocation(line: 1253, column: 8, scope: !865)
!868 = !DILocation(line: 1255, column: 4, scope: !841)
!869 = distinct !{!869, !838, !870}
!870 = !DILocation(line: 1256, column: 2, scope: !822)
!871 = !DILocation(line: 1257, column: 14, scope: !822)
!872 = !DILocation(line: 1257, column: 8, scope: !822)
!873 = !DILocation(line: 1257, column: 12, scope: !822)
!874 = !DILocation(line: 1258, column: 5, scope: !823)
!875 = !DILocation(line: 1258, column: 5, scope: !822)
!876 = !DILocation(line: 1259, column: 10, scope: !812)
!877 = !DILocation(line: 1260, column: 1, scope: !812)
!878 = !DILocation(line: 1259, column: 3, scope: !812)
!879 = distinct !DISubprogram(name: "pthread_equal", scope: !880, file: !880, line: 1153, type: !881, scopeLine: 1154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !885)
!880 = !DIFile(filename: "/usr/include/pthread.h", directory: "")
!881 = !DISubroutineType(types: !882)
!882 = !{!21, !883, !883}
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !884, line: 60, baseType: !31)
!884 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "")
!885 = !{!886, !887}
!886 = !DILocalVariable(name: "__thread1", arg: 1, scope: !879, file: !880, line: 1153, type: !883)
!887 = !DILocalVariable(name: "__thread2", arg: 2, scope: !879, file: !880, line: 1153, type: !883)
!888 = !DILocation(line: 1153, column: 1, scope: !879)
!889 = !DILocation(line: 1155, column: 10, scope: !879)
!890 = !DILocation(line: 1155, column: 23, scope: !879)
!891 = !DILocation(line: 1155, column: 20, scope: !879)
!892 = !DILocation(line: 1155, column: 3, scope: !879)
!893 = distinct !DISubprogram(name: "kp_kv_master_create", scope: !3, file: !3, line: 66, type: !894, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !912)
!894 = !DISubroutineType(types: !895)
!895 = !{!21, !896, !908, !29, !911, !911}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "kp_kv_master", file: !6, line: 23, baseType: !899)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kp_kv_master_struct", file: !3, line: 44, size: 192, elements: !900)
!900 = !{!901, !902, !907, !909}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !899, file: !3, line: 47, baseType: !34, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "kv", scope: !899, file: !3, line: 48, baseType: !903, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "kp_kvstore", file: !905, line: 42, baseType: !906)
!905 = !DIFile(filename: "./kp_kvstore_internal.h", directory: "/home/aksun/git/NvmBenchmarks/echo/src")
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "kp_kvstore_struct", file: !905, line: 41, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !899, file: !3, line: 49, baseType: !908, size: 32, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "consistency_mode", file: !6, line: 41, baseType: !5)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !899, file: !3, line: 63, baseType: !910, size: 32, offset: 160)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "ds_state", file: !13, line: 57, baseType: !12)
!911 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!912 = !{!913, !914, !915, !916, !917, !918}
!913 = !DILocalVariable(name: "master", arg: 1, scope: !893, file: !3, line: 66, type: !896)
!914 = !DILocalVariable(name: "mode", arg: 2, scope: !893, file: !3, line: 66, type: !908)
!915 = !DILocalVariable(name: "expected_max_keys", arg: 3, scope: !893, file: !3, line: 67, type: !29)
!916 = !DILocalVariable(name: "do_conflict_detection", arg: 4, scope: !893, file: !3, line: 67, type: !911)
!917 = !DILocalVariable(name: "use_nvm", arg: 5, scope: !893, file: !3, line: 67, type: !911)
!918 = !DILocalVariable(name: "ret", scope: !893, file: !3, line: 69, type: !21)
!919 = !DILocation(line: 66, column: 48, scope: !893)
!920 = !DILocation(line: 66, column: 73, scope: !893)
!921 = !DILocation(line: 67, column: 10, scope: !893)
!922 = !{!923, !923, i64 0}
!923 = !{!"_Bool", !58, i64 0}
!924 = !DILocation(line: 67, column: 34, scope: !893)
!925 = !DILocation(line: 67, column: 62, scope: !893)
!926 = !DILocation(line: 69, column: 2, scope: !893)
!927 = !DILocation(line: 69, column: 6, scope: !893)
!928 = !DILocation(line: 71, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !893, file: !3, line: 71, column: 6)
!930 = !{i8 0, i8 2}
!931 = !DILocation(line: 71, column: 6, scope: !893)
!932 = !DILocation(line: 72, column: 3, scope: !933)
!933 = distinct !DILexicalBlock(scope: !929, file: !3, line: 71, column: 16)
!934 = !DILocation(line: 72, column: 3, scope: !935)
!935 = distinct !DILexicalBlock(scope: !933, file: !3, line: 72, column: 3)
!936 = !DILocation(line: 73, column: 2, scope: !933)
!937 = !DILocation(line: 77, column: 22, scope: !893)
!938 = !DILocation(line: 77, column: 13, scope: !893)
!939 = !DILocation(line: 77, column: 52, scope: !893)
!940 = !DILocation(line: 77, column: 2, scope: !893)
!941 = !DILocation(line: 78, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !893, file: !3, line: 78, column: 6)
!943 = !DILocation(line: 78, column: 6, scope: !942)
!944 = !DILocation(line: 78, column: 14, scope: !942)
!945 = !DILocation(line: 78, column: 6, scope: !893)
!946 = !DILocation(line: 79, column: 3, scope: !947)
!947 = distinct !DILexicalBlock(scope: !942, file: !3, line: 78, column: 23)
!948 = !DILocation(line: 79, column: 3, scope: !949)
!949 = distinct !DILexicalBlock(scope: !947, file: !3, line: 79, column: 3)
!950 = !DILocation(line: 80, column: 3, scope: !947)
!951 = !DILocation(line: 84, column: 2, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !3, line: 84, column: 2)
!953 = distinct !DILexicalBlock(scope: !954, file: !3, line: 84, column: 2)
!954 = distinct !DILexicalBlock(scope: !893, file: !3, line: 84, column: 2)
!955 = !DILocation(line: 84, column: 2, scope: !953)
!956 = !DILocation(line: 84, column: 2, scope: !957)
!957 = distinct !DILexicalBlock(scope: !952, file: !3, line: 84, column: 2)
!958 = !DILocation(line: 84, column: 2, scope: !954)
!959 = !{!960, !139, i64 0}
!960 = !{!"kp_kv_master_struct", !139, i64 0, !57, i64 8, !58, i64 16, !58, i64 20}
!961 = !DILocation(line: 85, column: 20, scope: !893)
!962 = !DILocation(line: 86, column: 6, scope: !963)
!963 = distinct !DILexicalBlock(scope: !893, file: !3, line: 86, column: 6)
!964 = !DILocation(line: 86, column: 25, scope: !963)
!965 = !DILocation(line: 86, column: 6, scope: !893)
!966 = !DILocation(line: 87, column: 3, scope: !967)
!967 = distinct !DILexicalBlock(scope: !963, file: !3, line: 86, column: 40)
!968 = !DILocation(line: 87, column: 3, scope: !969)
!969 = distinct !DILexicalBlock(scope: !967, file: !3, line: 87, column: 3)
!970 = !DILocation(line: 88, column: 20, scope: !967)
!971 = !DILocation(line: 88, column: 11, scope: !967)
!972 = !DILocation(line: 88, column: 28, scope: !967)
!973 = !DILocation(line: 88, column: 3, scope: !967)
!974 = !DILocation(line: 89, column: 3, scope: !967)
!975 = !DILocation(line: 92, column: 2, scope: !893)
!976 = !DILocation(line: 92, column: 2, scope: !977)
!977 = distinct !DILexicalBlock(scope: !893, file: !3, line: 92, column: 2)
!978 = !DILocation(line: 95, column: 30, scope: !893)
!979 = !DILocation(line: 95, column: 29, scope: !893)
!980 = !DILocation(line: 95, column: 39, scope: !893)
!981 = !DILocation(line: 95, column: 50, scope: !893)
!982 = !DILocation(line: 96, column: 4, scope: !893)
!983 = !DILocation(line: 95, column: 8, scope: !893)
!984 = !DILocation(line: 95, column: 6, scope: !893)
!985 = !DILocation(line: 99, column: 6, scope: !986)
!986 = distinct !DILexicalBlock(scope: !893, file: !3, line: 99, column: 6)
!987 = !DILocation(line: 99, column: 10, scope: !986)
!988 = !DILocation(line: 99, column: 15, scope: !986)
!989 = !DILocation(line: 99, column: 20, scope: !986)
!990 = !DILocation(line: 99, column: 19, scope: !986)
!991 = !DILocation(line: 99, column: 29, scope: !986)
!992 = !{!960, !57, i64 8}
!993 = !DILocation(line: 99, column: 32, scope: !986)
!994 = !DILocation(line: 99, column: 6, scope: !893)
!995 = !DILocation(line: 100, column: 3, scope: !996)
!996 = distinct !DILexicalBlock(scope: !986, file: !3, line: 99, column: 41)
!997 = !DILocation(line: 100, column: 3, scope: !998)
!998 = distinct !DILexicalBlock(scope: !996, file: !3, line: 100, column: 3)
!999 = !DILocation(line: 101, column: 20, scope: !996)
!1000 = !DILocation(line: 101, column: 11, scope: !996)
!1001 = !DILocation(line: 101, column: 28, scope: !996)
!1002 = !DILocation(line: 101, column: 3, scope: !996)
!1003 = !DILocation(line: 102, column: 3, scope: !996)
!1004 = !DILocation(line: 104, column: 2, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 104, column: 2)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 104, column: 2)
!1007 = distinct !DILexicalBlock(scope: !893, file: !3, line: 104, column: 2)
!1008 = !DILocation(line: 104, column: 2, scope: !1006)
!1009 = !DILocation(line: 104, column: 2, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 104, column: 2)
!1011 = !DILocation(line: 104, column: 2, scope: !1007)
!1012 = !{!960, !58, i64 16}
!1013 = !DILocation(line: 117, column: 2, scope: !893)
!1014 = !DILocation(line: 121, column: 2, scope: !893)
!1015 = !DILocation(line: 121, column: 2, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 121, column: 2)
!1017 = distinct !DILexicalBlock(scope: !893, file: !3, line: 121, column: 2)
!1018 = !DILocation(line: 121, column: 2, scope: !1017)
!1019 = !DILocation(line: 121, column: 2, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 121, column: 2)
!1021 = !DILocation(line: 122, column: 2, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 122, column: 2)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 122, column: 2)
!1024 = distinct !DILexicalBlock(scope: !893, file: !3, line: 122, column: 2)
!1025 = !DILocation(line: 122, column: 2, scope: !1023)
!1026 = !DILocation(line: 122, column: 2, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 122, column: 2)
!1028 = !DILocation(line: 122, column: 2, scope: !1024)
!1029 = !{!960, !58, i64 20}
!1030 = !DILocation(line: 123, column: 2, scope: !893)
!1031 = !DILocation(line: 123, column: 2, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 123, column: 2)
!1033 = distinct !DILexicalBlock(scope: !893, file: !3, line: 123, column: 2)
!1034 = !DILocation(line: 123, column: 2, scope: !1033)
!1035 = !DILocation(line: 123, column: 2, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 123, column: 2)
!1037 = !DILocation(line: 125, column: 2, scope: !893)
!1038 = !DILocation(line: 125, column: 2, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !893, file: !3, line: 125, column: 2)
!1040 = !DILocation(line: 131, column: 2, scope: !893)
!1041 = !DILocation(line: 132, column: 1, scope: !893)
!1042 = distinct !DISubprogram(name: "kp_kv_master_destroy", scope: !3, file: !3, line: 137, type: !1043, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1045)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!21, !897}
!1045 = !{!1046, !1047, !1048, !1049}
!1046 = !DILocalVariable(name: "master", arg: 1, scope: !1042, file: !3, line: 137, type: !897)
!1047 = !DILocalVariable(name: "ret", scope: !1042, file: !3, line: 139, type: !21)
!1048 = !DILocalVariable(name: "retval", scope: !1042, file: !3, line: 139, type: !21)
!1049 = !DILocalVariable(name: "use_nvm", scope: !1042, file: !3, line: 140, type: !911)
!1050 = !DILocation(line: 137, column: 40, scope: !1042)
!1051 = !DILocation(line: 139, column: 2, scope: !1042)
!1052 = !DILocation(line: 139, column: 6, scope: !1042)
!1053 = !DILocation(line: 139, column: 11, scope: !1042)
!1054 = !DILocation(line: 140, column: 2, scope: !1042)
!1055 = !DILocation(line: 140, column: 7, scope: !1042)
!1056 = !DILocation(line: 142, column: 2, scope: !1042)
!1057 = !DILocation(line: 142, column: 2, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 142, column: 2)
!1059 = !DILocation(line: 169, column: 1, scope: !1042)
!1060 = !DILocation(line: 143, column: 2, scope: !1042)
!1061 = distinct !DISubprogram(name: "kp_master_get_id", scope: !3, file: !3, line: 171, type: !1062, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1064)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!34, !897}
!1064 = !{!1065, !1066}
!1065 = !DILocalVariable(name: "master", arg: 1, scope: !1061, file: !3, line: 171, type: !897)
!1066 = !DILocalVariable(name: "ret", scope: !1061, file: !3, line: 173, type: !34)
!1067 = !DILocation(line: 171, column: 41, scope: !1061)
!1068 = !DILocation(line: 173, column: 2, scope: !1061)
!1069 = !DILocation(line: 173, column: 11, scope: !1061)
!1070 = !DILocation(line: 174, column: 6, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 174, column: 6)
!1072 = !DILocation(line: 174, column: 13, scope: !1071)
!1073 = !DILocation(line: 174, column: 6, scope: !1061)
!1074 = !DILocation(line: 175, column: 3, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 174, column: 22)
!1076 = !DILocation(line: 175, column: 3, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 175, column: 3)
!1078 = !DILocation(line: 176, column: 3, scope: !1075)
!1079 = !DILocation(line: 179, column: 8, scope: !1061)
!1080 = !DILocation(line: 179, column: 16, scope: !1061)
!1081 = !DILocation(line: 179, column: 6, scope: !1061)
!1082 = !DILocation(line: 180, column: 9, scope: !1061)
!1083 = !DILocation(line: 180, column: 2, scope: !1061)
!1084 = !DILocation(line: 181, column: 1, scope: !1061)
!1085 = distinct !DISubprogram(name: "kp_master_get_mode", scope: !3, file: !3, line: 183, type: !1086, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1088)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!908, !897}
!1088 = !{!1089, !1090}
!1089 = !DILocalVariable(name: "master", arg: 1, scope: !1085, file: !3, line: 183, type: !897)
!1090 = !DILocalVariable(name: "ret", scope: !1085, file: !3, line: 185, type: !908)
!1091 = !DILocation(line: 183, column: 51, scope: !1085)
!1092 = !DILocation(line: 185, column: 2, scope: !1085)
!1093 = !DILocation(line: 185, column: 19, scope: !1085)
!1094 = !DILocation(line: 186, column: 6, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 186, column: 6)
!1096 = !DILocation(line: 186, column: 13, scope: !1095)
!1097 = !DILocation(line: 186, column: 6, scope: !1085)
!1098 = !DILocation(line: 187, column: 3, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 186, column: 22)
!1100 = !DILocation(line: 187, column: 3, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 187, column: 3)
!1102 = !DILocation(line: 188, column: 3, scope: !1099)
!1103 = !DILocation(line: 191, column: 8, scope: !1085)
!1104 = !DILocation(line: 191, column: 16, scope: !1085)
!1105 = !DILocation(line: 191, column: 6, scope: !1085)
!1106 = !DILocation(line: 192, column: 9, scope: !1085)
!1107 = !DILocation(line: 192, column: 2, scope: !1085)
!1108 = !DILocation(line: 193, column: 1, scope: !1085)
!1109 = distinct !DISubprogram(name: "kp_master_get", scope: !3, file: !3, line: 195, type: !1110, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1122)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!21, !897, !1112, !32, !195}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "kp_ht_entry", file: !905, line: 60, baseType: !1115)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kp_ht_entry_struct", file: !905, line: 57, size: 128, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1115, file: !905, line: 58, baseType: !27, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "vt", scope: !1115, file: !905, line: 59, baseType: !1119, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "kp_vt", file: !905, line: 44, baseType: !1121)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "kp_vt_struct", file: !905, line: 43, flags: DIFlagFwdDecl)
!1122 = !{!1123, !1124, !1125, !1126, !1127}
!1123 = !DILocalVariable(name: "master", arg: 1, scope: !1109, file: !3, line: 195, type: !897)
!1124 = !DILocalVariable(name: "lookup_entry", arg: 2, scope: !1109, file: !3, line: 195, type: !1112)
!1125 = !DILocalVariable(name: "value", arg: 3, scope: !1109, file: !3, line: 196, type: !32)
!1126 = !DILocalVariable(name: "size", arg: 4, scope: !1109, file: !3, line: 196, type: !195)
!1127 = !DILocalVariable(name: "ret", scope: !1109, file: !3, line: 198, type: !21)
!1128 = !DILocation(line: 195, column: 33, scope: !1109)
!1129 = !DILocation(line: 195, column: 60, scope: !1109)
!1130 = !DILocation(line: 196, column: 10, scope: !1109)
!1131 = !DILocation(line: 196, column: 25, scope: !1109)
!1132 = !DILocation(line: 198, column: 2, scope: !1109)
!1133 = !DILocation(line: 198, column: 6, scope: !1109)
!1134 = !DILocation(line: 200, column: 6, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 200, column: 6)
!1136 = !DILocation(line: 200, column: 13, scope: !1135)
!1137 = !DILocation(line: 200, column: 6, scope: !1109)
!1138 = !DILocation(line: 201, column: 3, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 200, column: 22)
!1140 = !DILocation(line: 201, column: 3, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 201, column: 3)
!1142 = !DILocation(line: 202, column: 3, scope: !1139)
!1143 = !DILocation(line: 209, column: 2, scope: !1109)
!1144 = !DILocation(line: 209, column: 2, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 209, column: 2)
!1146 = !DILocation(line: 213, column: 15, scope: !1109)
!1147 = !DILocation(line: 213, column: 23, scope: !1109)
!1148 = !DILocation(line: 213, column: 27, scope: !1109)
!1149 = !DILocation(line: 213, column: 41, scope: !1109)
!1150 = !DILocation(line: 213, column: 48, scope: !1109)
!1151 = !DILocation(line: 213, column: 8, scope: !1109)
!1152 = !DILocation(line: 213, column: 6, scope: !1109)
!1153 = !DILocation(line: 217, column: 2, scope: !1109)
!1154 = !DILocation(line: 217, column: 2, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 217, column: 2)
!1156 = !DILocation(line: 223, column: 6, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 223, column: 6)
!1158 = !DILocation(line: 223, column: 10, scope: !1157)
!1159 = !DILocation(line: 223, column: 6, scope: !1109)
!1160 = !DILocation(line: 224, column: 3, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 223, column: 15)
!1162 = !DILocation(line: 224, column: 3, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 224, column: 3)
!1164 = !DILocation(line: 225, column: 2, scope: !1161)
!1165 = !DILocation(line: 225, column: 14, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 225, column: 13)
!1167 = !DILocation(line: 225, column: 18, scope: !1166)
!1168 = !DILocation(line: 225, column: 24, scope: !1166)
!1169 = !DILocation(line: 225, column: 28, scope: !1166)
!1170 = !DILocation(line: 225, column: 32, scope: !1166)
!1171 = !DILocation(line: 225, column: 38, scope: !1166)
!1172 = !DILocation(line: 225, column: 42, scope: !1166)
!1173 = !DILocation(line: 225, column: 46, scope: !1166)
!1174 = !DILocation(line: 225, column: 13, scope: !1157)
!1175 = !DILocation(line: 229, column: 3, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 225, column: 53)
!1177 = !DILocation(line: 229, column: 3, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 229, column: 3)
!1179 = !DILocation(line: 231, column: 7, scope: !1176)
!1180 = !DILocation(line: 232, column: 2, scope: !1176)
!1181 = !DILocation(line: 234, column: 9, scope: !1109)
!1182 = !DILocation(line: 234, column: 2, scope: !1109)
!1183 = !DILocation(line: 235, column: 1, scope: !1109)
!1184 = distinct !DISubprogram(name: "kp_master_get_by_snapshot", scope: !3, file: !3, line: 237, type: !1185, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1188)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!21, !897, !1187, !1112, !32, !195}
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !35, line: 55, baseType: !31)
!1188 = !{!1189, !1190, !1191, !1192, !1193, !1194}
!1189 = !DILocalVariable(name: "master", arg: 1, scope: !1184, file: !3, line: 237, type: !897)
!1190 = !DILocalVariable(name: "snapshot", arg: 2, scope: !1184, file: !3, line: 237, type: !1187)
!1191 = !DILocalVariable(name: "lookup_entry", arg: 3, scope: !1184, file: !3, line: 238, type: !1112)
!1192 = !DILocalVariable(name: "value", arg: 4, scope: !1184, file: !3, line: 238, type: !32)
!1193 = !DILocalVariable(name: "size", arg: 5, scope: !1184, file: !3, line: 238, type: !195)
!1194 = !DILocalVariable(name: "ret", scope: !1184, file: !3, line: 240, type: !21)
!1195 = !DILocation(line: 237, column: 45, scope: !1184)
!1196 = !DILocation(line: 237, column: 62, scope: !1184)
!1197 = !DILocation(line: 238, column: 22, scope: !1184)
!1198 = !DILocation(line: 238, column: 43, scope: !1184)
!1199 = !DILocation(line: 238, column: 58, scope: !1184)
!1200 = !DILocation(line: 240, column: 2, scope: !1184)
!1201 = !DILocation(line: 240, column: 6, scope: !1184)
!1202 = !DILocation(line: 242, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 242, column: 6)
!1204 = !DILocation(line: 242, column: 14, scope: !1203)
!1205 = !DILocation(line: 242, column: 18, scope: !1203)
!1206 = !DILocation(line: 242, column: 6, scope: !1184)
!1207 = !DILocation(line: 243, column: 3, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 242, column: 32)
!1209 = !DILocation(line: 243, column: 3, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 243, column: 3)
!1211 = !DILocation(line: 245, column: 3, scope: !1208)
!1212 = !DILocation(line: 255, column: 2, scope: !1184)
!1213 = !DILocation(line: 255, column: 2, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 255, column: 2)
!1215 = !DILocation(line: 272, column: 32, scope: !1184)
!1216 = !DILocation(line: 272, column: 40, scope: !1184)
!1217 = !DILocation(line: 272, column: 44, scope: !1184)
!1218 = !DILocation(line: 272, column: 58, scope: !1184)
!1219 = !DILocation(line: 273, column: 4, scope: !1184)
!1220 = !DILocation(line: 273, column: 11, scope: !1184)
!1221 = !DILocation(line: 272, column: 8, scope: !1184)
!1222 = !DILocation(line: 272, column: 6, scope: !1184)
!1223 = !DILocation(line: 278, column: 6, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 278, column: 6)
!1225 = !DILocation(line: 278, column: 10, scope: !1224)
!1226 = !DILocation(line: 278, column: 6, scope: !1184)
!1227 = !DILocation(line: 279, column: 3, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 278, column: 15)
!1229 = !DILocation(line: 279, column: 3, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 279, column: 3)
!1231 = !DILocation(line: 281, column: 2, scope: !1228)
!1232 = !DILocation(line: 282, column: 2, scope: !1184)
!1233 = !DILocation(line: 282, column: 2, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 282, column: 2)
!1235 = !DILocation(line: 288, column: 9, scope: !1184)
!1236 = !DILocation(line: 288, column: 2, scope: !1184)
!1237 = !DILocation(line: 289, column: 1, scope: !1184)
!1238 = distinct !DISubprogram(name: "kp_master_get_latest_snapshot", scope: !3, file: !3, line: 291, type: !1239, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1241)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!1187, !897}
!1241 = !{!1242, !1243}
!1242 = !DILocalVariable(name: "master", arg: 1, scope: !1238, file: !3, line: 291, type: !897)
!1243 = !DILocalVariable(name: "ret", scope: !1238, file: !3, line: 293, type: !1187)
!1244 = !DILocation(line: 291, column: 54, scope: !1238)
!1245 = !DILocation(line: 293, column: 2, scope: !1238)
!1246 = !DILocation(line: 293, column: 11, scope: !1238)
!1247 = !DILocation(line: 294, column: 7, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 294, column: 6)
!1249 = !DILocation(line: 294, column: 6, scope: !1238)
!1250 = !DILocation(line: 295, column: 3, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 294, column: 15)
!1252 = !DILocation(line: 295, column: 3, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 295, column: 3)
!1254 = !DILocation(line: 296, column: 3, scope: !1251)
!1255 = !DILocation(line: 298, column: 31, scope: !1238)
!1256 = !DILocation(line: 298, column: 39, scope: !1238)
!1257 = !DILocation(line: 298, column: 8, scope: !1238)
!1258 = !DILocation(line: 298, column: 6, scope: !1238)
!1259 = !DILocation(line: 299, column: 9, scope: !1238)
!1260 = !DILocation(line: 299, column: 2, scope: !1238)
!1261 = !DILocation(line: 300, column: 1, scope: !1238)
!1262 = distinct !DISubprogram(name: "kp_master_get_initial_snapshot", scope: !3, file: !3, line: 310, type: !1239, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1263)
!1263 = !{!1264, !1265}
!1264 = !DILocalVariable(name: "master", arg: 1, scope: !1262, file: !3, line: 310, type: !897)
!1265 = !DILocalVariable(name: "ret", scope: !1262, file: !3, line: 312, type: !1187)
!1266 = !DILocation(line: 310, column: 55, scope: !1262)
!1267 = !DILocation(line: 312, column: 2, scope: !1262)
!1268 = !DILocation(line: 312, column: 11, scope: !1262)
!1269 = !DILocation(line: 312, column: 51, scope: !1262)
!1270 = !DILocation(line: 312, column: 59, scope: !1262)
!1271 = !DILocation(line: 312, column: 17, scope: !1262)
!1272 = !DILocation(line: 313, column: 9, scope: !1262)
!1273 = !DILocation(line: 314, column: 1, scope: !1262)
!1274 = !DILocation(line: 313, column: 2, scope: !1262)
!1275 = distinct !DISubprogram(name: "kp_master_uses_nvm", scope: !3, file: !3, line: 316, type: !1276, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1278)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!911, !897}
!1278 = !{!1279, !1280}
!1279 = !DILocalVariable(name: "master", arg: 1, scope: !1275, file: !3, line: 316, type: !897)
!1280 = !DILocalVariable(name: "ret", scope: !1275, file: !3, line: 318, type: !911)
!1281 = !DILocation(line: 316, column: 39, scope: !1275)
!1282 = !DILocation(line: 318, column: 2, scope: !1275)
!1283 = !DILocation(line: 318, column: 7, scope: !1275)
!1284 = !DILocation(line: 318, column: 25, scope: !1275)
!1285 = !DILocation(line: 318, column: 33, scope: !1275)
!1286 = !DILocation(line: 318, column: 13, scope: !1275)
!1287 = !DILocation(line: 319, column: 9, scope: !1275)
!1288 = !DILocation(line: 320, column: 1, scope: !1275)
!1289 = !DILocation(line: 319, column: 2, scope: !1275)
!1290 = distinct !DISubprogram(name: "kp_master_merge_commit", scope: !3, file: !3, line: 322, type: !1291, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1297)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!21, !897, !1293, !32, !1296}
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "kp_commit_record", file: !905, line: 525, baseType: !1295)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "kp_commit_record_struct", file: !905, line: 524, flags: DIFlagFwdDecl)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1297 = !{!1298, !1299, !1300, !1301, !1302}
!1298 = !DILocalVariable(name: "master", arg: 1, scope: !1290, file: !3, line: 322, type: !897)
!1299 = !DILocalVariable(name: "cr", arg: 2, scope: !1290, file: !3, line: 322, type: !1293)
!1300 = !DILocalVariable(name: "conflict_list", arg: 3, scope: !1290, file: !3, line: 323, type: !32)
!1301 = !DILocalVariable(name: "new_snapshot", arg: 4, scope: !1290, file: !3, line: 323, type: !1296)
!1302 = !DILocalVariable(name: "ret", scope: !1290, file: !3, line: 328, type: !21)
!1303 = !DILocation(line: 322, column: 42, scope: !1290)
!1304 = !DILocation(line: 322, column: 68, scope: !1290)
!1305 = !DILocation(line: 323, column: 18, scope: !1290)
!1306 = !DILocation(line: 323, column: 43, scope: !1290)
!1307 = !DILocation(line: 328, column: 2, scope: !1290)
!1308 = !DILocation(line: 328, column: 6, scope: !1290)
!1309 = !DILocation(line: 330, column: 7, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 330, column: 6)
!1311 = !DILocation(line: 330, column: 14, scope: !1310)
!1312 = !DILocation(line: 330, column: 18, scope: !1310)
!1313 = !DILocation(line: 330, column: 6, scope: !1290)
!1314 = !DILocation(line: 331, column: 3, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 330, column: 22)
!1316 = !DILocation(line: 331, column: 3, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 331, column: 3)
!1318 = !DILocation(line: 332, column: 3, scope: !1315)
!1319 = !DILocation(line: 334, column: 2, scope: !1290)
!1320 = !DILocation(line: 334, column: 2, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 334, column: 2)
!1322 = !DILocation(line: 355, column: 18, scope: !1290)
!1323 = !DILocation(line: 355, column: 26, scope: !1290)
!1324 = !DILocation(line: 355, column: 30, scope: !1290)
!1325 = !DILocation(line: 355, column: 34, scope: !1290)
!1326 = !DILocation(line: 355, column: 49, scope: !1290)
!1327 = !DILocation(line: 355, column: 8, scope: !1290)
!1328 = !DILocation(line: 355, column: 6, scope: !1290)
!1329 = !DILocation(line: 356, column: 6, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 356, column: 6)
!1331 = !DILocation(line: 356, column: 10, scope: !1330)
!1332 = !DILocation(line: 356, column: 6, scope: !1290)
!1333 = !DILocation(line: 357, column: 3, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 356, column: 17)
!1335 = !DILocation(line: 357, column: 3, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 357, column: 3)
!1337 = !DILocation(line: 358, column: 3, scope: !1334)
!1338 = !DILocation(line: 359, column: 13, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 359, column: 13)
!1340 = !DILocation(line: 359, column: 17, scope: !1339)
!1341 = !DILocation(line: 359, column: 13, scope: !1330)
!1342 = !DILocation(line: 360, column: 3, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 359, column: 23)
!1344 = !DILocation(line: 360, column: 3, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 360, column: 3)
!1346 = !DILocation(line: 364, column: 8, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 364, column: 7)
!1348 = !DILocation(line: 364, column: 7, scope: !1347)
!1349 = !DILocation(line: 364, column: 21, scope: !1347)
!1350 = !DILocation(line: 364, column: 7, scope: !1343)
!1351 = !DILocation(line: 365, column: 4, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 364, column: 36)
!1353 = !DILocation(line: 365, column: 4, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 365, column: 4)
!1355 = !DILocation(line: 366, column: 3, scope: !1352)
!1356 = !DILocation(line: 368, column: 3, scope: !1343)
!1357 = !DILocation(line: 372, column: 7, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 372, column: 6)
!1359 = !DILocation(line: 372, column: 6, scope: !1358)
!1360 = !DILocation(line: 372, column: 20, scope: !1358)
!1361 = !DILocation(line: 372, column: 6, scope: !1290)
!1362 = !DILocation(line: 373, column: 3, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 372, column: 35)
!1364 = !DILocation(line: 373, column: 3, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 373, column: 3)
!1366 = !DILocation(line: 374, column: 2, scope: !1363)
!1367 = !DILocation(line: 376, column: 2, scope: !1290)
!1368 = !DILocation(line: 376, column: 2, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 376, column: 2)
!1370 = !DILocation(line: 378, column: 2, scope: !1290)
!1371 = !DILocation(line: 379, column: 1, scope: !1290)
