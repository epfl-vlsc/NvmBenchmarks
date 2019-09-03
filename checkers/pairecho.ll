; ModuleID = 'pairecho.bc'
source_filename = "kp_kv_master.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.kp_kv_master_struct = type { i32, %struct.kp_kvstore_struct*, i32, i32 }
%struct.kp_kvstore_struct = type opaque
%struct.kp_ht_entry_struct = type { i8*, %struct.kp_vt_struct* }
%struct.kp_vt_struct = type opaque
%struct.kp_commit_record_struct = type opaque

@kp_master_id_count = local_unnamed_addr global i32 0, align 4, !dbg !0
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [63 x i8] c"KP: Fatal error (%lu: %s): got use_nvm = false, unexpectedly!\0A\00", align 1
@__func__.kp_kv_master_create = private unnamed_addr constant [20 x i8] c"kp_kv_master_create\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"ERROR: %lu: %s: kp_calloc(kp_kv_master) returned error\0A\00", align 1
@mtm_enable_trace = external local_unnamed_addr global i32, align 4
@tstr = external thread_local global [128 x i8], align 16
@.str.2 = private unnamed_addr constant [25 x i8] c"%d:%llu:%s:%p:%lu:%s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PM_W\00", align 1
@tsz = external thread_local local_unnamed_addr global i64, align 8
@trace_marker = external local_unnamed_addr global i32, align 4
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

; Function Attrs: nounwind uwtable
define i32 @kp_kv_master_create(%struct.kp_kv_master_struct** %master, i32 %mode, i64 %expected_max_keys, i1 zeroext %do_conflict_detection, i1 zeroext %use_nvm) #0 !dbg !41 {
entry:
  call void @llvm.dbg.value(metadata %struct.kp_kv_master_struct** %master, metadata !61, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i32 %mode, metadata !62, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i64 %expected_max_keys, metadata !63, metadata !DIExpression()), !dbg !69
  br i1 %use_nvm, label %if.end, label %do.body, !dbg !70

do.body:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !71, !tbaa !75
  %call = tail call i64 @pthread_self() #9, !dbg !71
  %rem = urem i64 %call, 10000, !dbg !71
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %rem, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.kp_kv_master_create, i64 0, i64 0)) #10, !dbg !71
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !71, !tbaa !75
  %call3 = tail call i32 @fflush(%struct._IO_FILE* %1), !dbg !71
  tail call void @abort() #11, !dbg !71
  unreachable, !dbg !71

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.kp_kv_master_struct** %master to i8**, !dbg !79
  tail call void @kp_kpalloc(i8** %2, i64 24, i1 zeroext true) #6, !dbg !80
  %3 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master, align 8, !dbg !81, !tbaa !75
  %cmp = icmp eq %struct.kp_kv_master_struct* %3, null, !dbg !83
  br i1 %cmp, label %do.body6, label %if.end13, !dbg !84

do.body6:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !85, !tbaa !75
  %call7 = tail call i64 @pthread_self() #9, !dbg !85
  %rem8 = urem i64 %call7, 10000, !dbg !85
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %rem8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.kp_kv_master_create, i64 0, i64 0)) #10, !dbg !85
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !85, !tbaa !75
  %call10 = tail call i32 @fflush(%struct._IO_FILE* %5), !dbg !85
  br label %cleanup, !dbg !88

if.end13:                                         ; preds = %if.end
  %6 = load i32, i32* @mtm_enable_trace, align 4, !dbg !89, !tbaa !93
  %tobool14 = icmp eq i32 %6, 0, !dbg !89
  br i1 %tobool14, label %if.end19, label %if.then15, !dbg !95

if.then15:                                        ; preds = %if.end13
  %id = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %3, i64 0, i32 0, !dbg !96
  %call16 = tail call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* nonnull %id, i64 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.kp_kv_master_create, i64 0, i64 0), i32 84) #6, !dbg !96
  %call17 = tail call i64 @strlen(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i64 0, i64 0)) #12, !dbg !96
  store i64 %call17, i64* @tsz, align 8, !dbg !96, !tbaa !98
  %7 = load i32, i32* @trace_marker, align 4, !dbg !96, !tbaa !93
  %sub = add i64 %call17, -4, !dbg !96
  %call18 = tail call i64 @write(i32 %7, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i64 0, i64 4), i64 %sub) #6, !dbg !96
  %.pre = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master, align 8, !dbg !100, !tbaa !75
  br label %if.end19, !dbg !96

if.end19:                                         ; preds = %if.end13, %if.then15
  %8 = phi %struct.kp_kv_master_struct* [ %3, %if.end13 ], [ %.pre, %if.then15 ], !dbg !100
  %9 = load i32, i32* @kp_master_id_count, align 4, !dbg !100, !tbaa !93
  %id20 = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %8, i64 0, i32 0, !dbg !100
  store i32 %9, i32* %id20, align 8, !dbg !100, !tbaa !101
  %10 = load i32, i32* @kp_master_id_count, align 4, !dbg !103, !tbaa !93
  %inc = add i32 %10, 1, !dbg !103
  store i32 %inc, i32* @kp_master_id_count, align 4, !dbg !103, !tbaa !93
  %cmp21 = icmp eq i32 %inc, -1, !dbg !104
  br i1 %cmp21, label %do.body23, label %do.end34, !dbg !106

do.body23:                                        ; preds = %if.end19
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !107, !tbaa !75
  %call24 = tail call i64 @pthread_self() #9, !dbg !107
  %rem25 = urem i64 %call24, 10000, !dbg !107
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %rem25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.kp_kv_master_create, i64 0, i64 0), i32 -1) #10, !dbg !107
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !107, !tbaa !75
  %call27 = tail call i32 @fflush(%struct._IO_FILE* %12), !dbg !107
  tail call void @kp_free(i8** nonnull %2, i1 zeroext true) #6, !dbg !110
  br label %cleanup, !dbg !111

do.end34:                                         ; preds = %if.end19
  %kv = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %8, i64 0, i32 1, !dbg !112
  %call36 = tail call i32 @kp_kvstore_create(%struct.kp_kvstore_struct** nonnull %kv, i1 zeroext true, i64 %expected_max_keys, i1 zeroext %do_conflict_detection, i1 zeroext true) #6, !dbg !113
  call void @llvm.dbg.value(metadata i32 %call36, metadata !66, metadata !DIExpression()), !dbg !114
  %cmp37 = icmp eq i32 %call36, 0, !dbg !115
  br i1 %cmp37, label %lor.lhs.false, label %do.body41, !dbg !117

lor.lhs.false:                                    ; preds = %do.end34
  %13 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master, align 8, !dbg !118, !tbaa !75
  %kv38 = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %13, i64 0, i32 1, !dbg !119
  %14 = load %struct.kp_kvstore_struct*, %struct.kp_kvstore_struct** %kv38, align 8, !dbg !119, !tbaa !120
  %cmp39 = icmp eq %struct.kp_kvstore_struct* %14, null, !dbg !121
  br i1 %cmp39, label %do.body41, label %if.end49, !dbg !122

do.body41:                                        ; preds = %do.end34, %lor.lhs.false
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !123, !tbaa !75
  %call42 = tail call i64 @pthread_self() #9, !dbg !123
  %rem43 = urem i64 %call42, 10000, !dbg !123
  %call44 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i64 %rem43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.kp_kv_master_create, i64 0, i64 0)) #10, !dbg !123
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !123, !tbaa !75
  %call45 = tail call i32 @fflush(%struct._IO_FILE* %16), !dbg !123
  tail call void @kp_free(i8** nonnull %2, i1 zeroext true) #6, !dbg !126
  br label %cleanup, !dbg !127

if.end49:                                         ; preds = %lor.lhs.false
  %17 = load i32, i32* @mtm_enable_trace, align 4, !dbg !128, !tbaa !93
  %tobool50 = icmp eq i32 %17, 0, !dbg !128
  br i1 %tobool50, label %do.end66, label %if.then51, !dbg !132

if.then51:                                        ; preds = %if.end49
  %mode52 = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %13, i64 0, i32 2, !dbg !133
  %call53 = tail call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* nonnull %mode52, i64 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.kp_kv_master_create, i64 0, i64 0), i32 104) #6, !dbg !133
  %call54 = tail call i64 @strlen(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i64 0, i64 0)) #12, !dbg !133
  store i64 %call54, i64* @tsz, align 8, !dbg !133, !tbaa !98
  %18 = load i32, i32* @trace_marker, align 4, !dbg !133, !tbaa !93
  %sub55 = add i64 %call54, -4, !dbg !133
  %call56 = tail call i64 @write(i32 %18, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i64 0, i64 4), i64 %sub55) #6, !dbg !133
  %.pre20 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master, align 8, !dbg !135, !tbaa !75
  br label %do.end66, !dbg !133

do.end66:                                         ; preds = %if.end49, %if.then51
  %19 = phi %struct.kp_kv_master_struct* [ %13, %if.end49 ], [ %.pre20, %if.then51 ], !dbg !135
  %mode59 = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %19, i64 0, i32 2, !dbg !135
  store i32 %mode, i32* %mode59, align 8, !dbg !135, !tbaa !136
  tail call void (...) @kp_reset_mem_accounting() #6, !dbg !137
  %20 = load i8*, i8** %2, align 8, !dbg !138, !tbaa !75
  %call63 = tail call i32 @flush_range(i8* %20, i64 20) #6, !dbg !138
  %21 = load i32, i32* @mtm_enable_trace, align 4, !dbg !142, !tbaa !93
  %tobool67 = icmp eq i32 %21, 0, !dbg !142
  br i1 %tobool67, label %if.then78, label %if.then68, !dbg !146

if.then68:                                        ; preds = %do.end66
  %22 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master, align 8, !dbg !147, !tbaa !75
  %state = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %22, i64 0, i32 3, !dbg !147
  %23 = bitcast i32* %state to i8*, !dbg !147
  %24 = tail call i8* @llvm.ptr.annotation.p0i8(i8* nonnull %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 63), !dbg !147
  %call69 = tail call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 0, i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %24, i64 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.kp_kv_master_create, i64 0, i64 0), i32 122) #6, !dbg !147
  %call70 = tail call i64 @strlen(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i64 0, i64 0)) #12, !dbg !147
  store i64 %call70, i64* @tsz, align 8, !dbg !147, !tbaa !98
  %25 = load i32, i32* @trace_marker, align 4, !dbg !147, !tbaa !93
  %sub71 = add i64 %call70, -4, !dbg !147
  %call72 = tail call i64 @write(i32 %25, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @tstr, i64 0, i64 4), i64 %sub71) #6, !dbg !147
  br label %if.then78, !dbg !147

if.then78:                                        ; preds = %if.then68, %do.end66
  %26 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master, align 8, !dbg !149, !tbaa !75
  %state75 = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %26, i64 0, i32 3, !dbg !149
  %27 = bitcast i32* %state75 to i8*, !dbg !149
  %28 = tail call i8* @llvm.ptr.annotation.p0i8(i8* nonnull %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 63), !dbg !149
  %29 = bitcast i8* %28 to i32*, !dbg !149
  store i32 1, i32* %29, align 4, !dbg !149, !tbaa !150
  %30 = load %struct.kp_kv_master_struct*, %struct.kp_kv_master_struct** %master, align 8, !dbg !151, !tbaa !75
  %state79 = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %30, i64 0, i32 3, !dbg !151
  %31 = bitcast i32* %state79 to i8*, !dbg !151
  %32 = tail call i8* @llvm.ptr.annotation.p0i8(i8* nonnull %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 63), !dbg !151
  %call80 = tail call i32 @flush_range(i8* %32, i64 4) #6, !dbg !151
  br label %cleanup, !dbg !151

cleanup:                                          ; preds = %if.then78, %do.body41, %do.body23, %do.body6
  %retval.0 = phi i32 [ -1, %do.body6 ], [ -1, %do.body23 ], [ -1, %do.body41 ], [ 0, %if.then78 ], !dbg !155
  ret i32 %retval.0, !dbg !156
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i64 @pthread_self() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare void @kp_kpalloc(i8**, i64, i1 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sprintf(i8* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #5

declare i64 @write(i32, i8* nocapture readonly, i64) local_unnamed_addr #4

declare void @kp_free(i8**, i1 zeroext) local_unnamed_addr #4

declare i32 @kp_kvstore_create(%struct.kp_kvstore_struct**, i1 zeroext, i64, i1 zeroext, i1 zeroext) local_unnamed_addr #4

declare void @kp_reset_mem_accounting(...) local_unnamed_addr #4

declare i32 @flush_range(i8*, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @llvm.ptr.annotation.p0i8(i8*, i8*, i8*, i32) #6

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @kp_kv_master_destroy(%struct.kp_kv_master_struct* nocapture readnone %master) local_unnamed_addr #7 !dbg !157 {
entry:
  call void @llvm.dbg.value(metadata %struct.kp_kv_master_struct* %master, metadata !161, metadata !DIExpression()), !dbg !165
  ret i32 0, !dbg !166
}

; Function Attrs: nounwind uwtable
define i32 @kp_master_get_id(%struct.kp_kv_master_struct* readonly %master) local_unnamed_addr #0 !dbg !167 {
entry:
  call void @llvm.dbg.value(metadata %struct.kp_kv_master_struct* %master, metadata !171, metadata !DIExpression()), !dbg !173
  %cmp = icmp eq %struct.kp_kv_master_struct* %master, null, !dbg !174
  br i1 %cmp, label %do.body, label %if.end, !dbg !176

do.body:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !177, !tbaa !75
  %call = tail call i64 @pthread_self() #9, !dbg !177
  %rem = urem i64 %call, 10000, !dbg !177
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 %rem, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.kp_master_get_id, i64 0, i64 0)) #10, !dbg !177
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !177, !tbaa !75
  %call2 = tail call i32 @fflush(%struct._IO_FILE* %1), !dbg !177
  br label %cleanup, !dbg !180

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %master, i64 0, i32 0, !dbg !181
  %2 = load i32, i32* %id, align 8, !dbg !181, !tbaa !101
  call void @llvm.dbg.value(metadata i32 %2, metadata !172, metadata !DIExpression()), !dbg !182
  br label %cleanup, !dbg !183

cleanup:                                          ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ -1, %do.body ], [ %2, %if.end ], !dbg !184
  ret i32 %retval.0, !dbg !185
}

; Function Attrs: nounwind uwtable
define i32 @kp_master_get_mode(%struct.kp_kv_master_struct* readonly %master) local_unnamed_addr #0 !dbg !186 {
entry:
  call void @llvm.dbg.value(metadata %struct.kp_kv_master_struct* %master, metadata !190, metadata !DIExpression()), !dbg !192
  %cmp = icmp eq %struct.kp_kv_master_struct* %master, null, !dbg !193
  br i1 %cmp, label %do.body, label %if.end, !dbg !195

do.body:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !196, !tbaa !75
  %call = tail call i64 @pthread_self() #9, !dbg !196
  %rem = urem i64 %call, 10000, !dbg !196
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 %rem, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.kp_master_get_mode, i64 0, i64 0)) #10, !dbg !196
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !196, !tbaa !75
  %call2 = tail call i32 @fflush(%struct._IO_FILE* %1), !dbg !196
  br label %cleanup, !dbg !199

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %master, i64 0, i32 2, !dbg !200
  %2 = load i32, i32* %mode, align 8, !dbg !200, !tbaa !136
  call void @llvm.dbg.value(metadata i32 %2, metadata !191, metadata !DIExpression()), !dbg !201
  br label %cleanup, !dbg !202

cleanup:                                          ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ -1, %do.body ], [ %2, %if.end ], !dbg !203
  ret i32 %retval.0, !dbg !204
}

; Function Attrs: nounwind uwtable
define i32 @kp_master_get(%struct.kp_kv_master_struct* readonly %master, %struct.kp_ht_entry_struct* %lookup_entry, i8** %value, i64* %size) local_unnamed_addr #0 !dbg !205 {
entry:
  call void @llvm.dbg.value(metadata %struct.kp_kv_master_struct* %master, metadata !220, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata %struct.kp_ht_entry_struct* %lookup_entry, metadata !221, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i8** %value, metadata !222, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64* %size, metadata !223, metadata !DIExpression()), !dbg !228
  %cmp = icmp eq %struct.kp_kv_master_struct* %master, null, !dbg !229
  br i1 %cmp, label %do.body, label %do.end5, !dbg !231

do.body:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !232, !tbaa !75
  %call = tail call i64 @pthread_self() #9, !dbg !232
  %rem = urem i64 %call, 10000, !dbg !232
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 %rem, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.kp_master_get, i64 0, i64 0)) #10, !dbg !232
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !232, !tbaa !75
  %call2 = tail call i32 @fflush(%struct._IO_FILE* %1), !dbg !232
  br label %cleanup, !dbg !235

do.end5:                                          ; preds = %entry
  %kv = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %master, i64 0, i32 1, !dbg !236
  %2 = load %struct.kp_kvstore_struct*, %struct.kp_kvstore_struct** %kv, align 8, !dbg !236, !tbaa !120
  %call6 = tail call i32 @kp_get(%struct.kp_kvstore_struct* %2, %struct.kp_ht_entry_struct* %lookup_entry, i8** %value, i64* %size) #6, !dbg !237
  call void @llvm.dbg.value(metadata i32 %call6, metadata !224, metadata !DIExpression()), !dbg !238
  %cmp10 = icmp slt i32 %call6, 0, !dbg !239
  br i1 %cmp10, label %do.body12, label %if.else, !dbg !241

do.body12:                                        ; preds = %do.end5
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !242, !tbaa !75
  %call13 = tail call i64 @pthread_self() #9, !dbg !242
  %rem14 = urem i64 %call13, 10000, !dbg !242
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i64 0, i64 0), i64 %rem14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.kp_master_get, i64 0, i64 0), i32 %call6) #10, !dbg !242
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !242, !tbaa !75
  %call16 = tail call i32 @fflush(%struct._IO_FILE* %4), !dbg !242
  br label %cleanup, !dbg !245

if.else:                                          ; preds = %do.end5
  switch i32 %call6, label %do.body24 [
    i32 3, label %cleanup
    i32 1, label %cleanup
    i32 0, label %cleanup
  ], !dbg !246

do.body24:                                        ; preds = %if.else
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !248, !tbaa !75
  %call25 = tail call i64 @pthread_self() #9, !dbg !248
  %rem26 = urem i64 %call25, 10000, !dbg !248
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i64 0, i64 0), i64 %rem26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.kp_master_get, i64 0, i64 0), i32 %call6) #10, !dbg !248
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !248, !tbaa !75
  %call28 = tail call i32 @fflush(%struct._IO_FILE* %6), !dbg !248
  call void @llvm.dbg.value(metadata i32 -1, metadata !224, metadata !DIExpression()), !dbg !238
  br label %cleanup, !dbg !251

cleanup:                                          ; preds = %do.body12, %do.body24, %if.else, %if.else, %if.else, %do.body
  %retval.0 = phi i32 [ -1, %do.body ], [ %call6, %do.body12 ], [ -1, %do.body24 ], [ %call6, %if.else ], [ %call6, %if.else ], [ %call6, %if.else ], !dbg !252
  ret i32 %retval.0, !dbg !253
}

declare i32 @kp_get(%struct.kp_kvstore_struct*, %struct.kp_ht_entry_struct*, i8**, i64*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @kp_master_get_by_snapshot(%struct.kp_kv_master_struct* %master, i64 %snapshot, %struct.kp_ht_entry_struct* %lookup_entry, i8** %value, i64* %size) local_unnamed_addr #0 !dbg !254 {
entry:
  call void @llvm.dbg.value(metadata %struct.kp_kv_master_struct* %master, metadata !259, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i64 %snapshot, metadata !260, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata %struct.kp_ht_entry_struct* %lookup_entry, metadata !261, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i8** %value, metadata !262, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i64* %size, metadata !263, metadata !DIExpression()), !dbg !269
  %tobool = icmp ne %struct.kp_kv_master_struct* %master, null, !dbg !270
  %tobool1 = icmp ne %struct.kp_ht_entry_struct* %lookup_entry, null, !dbg !272
  %or.cond = and i1 %tobool, %tobool1, !dbg !273
  br i1 %or.cond, label %do.end6, label %do.body, !dbg !273

do.body:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !274, !tbaa !75
  %call = tail call i64 @pthread_self() #9, !dbg !274
  %rem = urem i64 %call, 10000, !dbg !274
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0), i64 %rem, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.kp_master_get_by_snapshot, i64 0, i64 0), %struct.kp_kv_master_struct* %master, %struct.kp_ht_entry_struct* %lookup_entry) #10, !dbg !274
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !274, !tbaa !75
  %call3 = tail call i32 @fflush(%struct._IO_FILE* %1), !dbg !274
  br label %cleanup, !dbg !277

do.end6:                                          ; preds = %entry
  %kv = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %master, i64 0, i32 1, !dbg !278
  %2 = load %struct.kp_kvstore_struct*, %struct.kp_kvstore_struct** %kv, align 8, !dbg !278, !tbaa !120
  %call7 = tail call i32 @kp_get_version_snapshot(%struct.kp_kvstore_struct* %2, %struct.kp_ht_entry_struct* nonnull %lookup_entry, i64 %snapshot, i8** %value, i64* %size) #6, !dbg !279
  call void @llvm.dbg.value(metadata i32 %call7, metadata !264, metadata !DIExpression()), !dbg !280
  %cmp = icmp slt i32 %call7, 0, !dbg !281
  br i1 %cmp, label %do.body9, label %cleanup, !dbg !283

do.body9:                                         ; preds = %do.end6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !284, !tbaa !75
  %call10 = tail call i64 @pthread_self() #9, !dbg !284
  %rem11 = urem i64 %call10, 10000, !dbg !284
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.13, i64 0, i64 0), i64 %rem11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.kp_master_get_by_snapshot, i64 0, i64 0), i32 %call7) #10, !dbg !284
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !284, !tbaa !75
  %call13 = tail call i32 @fflush(%struct._IO_FILE* %4), !dbg !284
  br label %cleanup, !dbg !287

cleanup:                                          ; preds = %do.body9, %do.end6, %do.body
  %retval.0 = phi i32 [ -1, %do.body ], [ %call7, %do.end6 ], [ %call7, %do.body9 ], !dbg !288
  ret i32 %retval.0, !dbg !289
}

declare i32 @kp_get_version_snapshot(%struct.kp_kvstore_struct*, %struct.kp_ht_entry_struct*, i64, i8**, i64*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i64 @kp_master_get_latest_snapshot(%struct.kp_kv_master_struct* readonly %master) local_unnamed_addr #0 !dbg !290 {
entry:
  call void @llvm.dbg.value(metadata %struct.kp_kv_master_struct* %master, metadata !294, metadata !DIExpression()), !dbg !296
  %tobool = icmp eq %struct.kp_kv_master_struct* %master, null, !dbg !297
  br i1 %tobool, label %do.body, label %if.end, !dbg !299

do.body:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !300, !tbaa !75
  %call = tail call i64 @pthread_self() #9, !dbg !300
  %rem = urem i64 %call, 10000, !dbg !300
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 %rem, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.kp_master_get_latest_snapshot, i64 0, i64 0)) #10, !dbg !300
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !300, !tbaa !75
  %call2 = tail call i32 @fflush(%struct._IO_FILE* %1), !dbg !300
  br label %cleanup, !dbg !303

if.end:                                           ; preds = %entry
  %kv = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %master, i64 0, i32 1, !dbg !304
  %2 = load %struct.kp_kvstore_struct*, %struct.kp_kvstore_struct** %kv, align 8, !dbg !304, !tbaa !120
  %call3 = tail call i64 @kp_get_latest_snapshot(%struct.kp_kvstore_struct* %2) #6, !dbg !305
  call void @llvm.dbg.value(metadata i64 %call3, metadata !295, metadata !DIExpression()), !dbg !306
  br label %cleanup, !dbg !307

cleanup:                                          ; preds = %if.end, %do.body
  %retval.0 = phi i64 [ %call3, %if.end ], [ -1, %do.body ], !dbg !308
  ret i64 %retval.0, !dbg !309
}

declare i64 @kp_get_latest_snapshot(%struct.kp_kvstore_struct*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i64 @kp_master_get_initial_snapshot(%struct.kp_kv_master_struct* nocapture readonly %master) local_unnamed_addr #0 !dbg !310 {
entry:
  call void @llvm.dbg.value(metadata %struct.kp_kv_master_struct* %master, metadata !312, metadata !DIExpression()), !dbg !314
  %kv = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %master, i64 0, i32 1, !dbg !315
  %0 = load %struct.kp_kvstore_struct*, %struct.kp_kvstore_struct** %kv, align 8, !dbg !315, !tbaa !120
  %call = tail call i64 @kp_increment_snapshot_mark_in_use(%struct.kp_kvstore_struct* %0) #6, !dbg !316
  call void @llvm.dbg.value(metadata i64 %call, metadata !313, metadata !DIExpression()), !dbg !317
  ret i64 %call, !dbg !318
}

declare i64 @kp_increment_snapshot_mark_in_use(%struct.kp_kvstore_struct*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define zeroext i1 @kp_master_uses_nvm(%struct.kp_kv_master_struct* nocapture readonly %master) local_unnamed_addr #0 !dbg !319 {
entry:
  call void @llvm.dbg.value(metadata %struct.kp_kv_master_struct* %master, metadata !323, metadata !DIExpression()), !dbg !325
  %kv = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %master, i64 0, i32 1, !dbg !326
  %0 = load %struct.kp_kvstore_struct*, %struct.kp_kvstore_struct** %kv, align 8, !dbg !326, !tbaa !120
  %call = tail call zeroext i1 @kp_uses_nvm(%struct.kp_kvstore_struct* %0) #6, !dbg !327
  ret i1 %call, !dbg !328
}

declare zeroext i1 @kp_uses_nvm(%struct.kp_kvstore_struct*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @kp_master_merge_commit(%struct.kp_kv_master_struct* %master, %struct.kp_commit_record_struct* %cr, i8** %conflict_list, i64* %new_snapshot) local_unnamed_addr #0 !dbg !329 {
entry:
  call void @llvm.dbg.value(metadata %struct.kp_kv_master_struct* %master, metadata !337, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata %struct.kp_commit_record_struct* %cr, metadata !338, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i8** %conflict_list, metadata !339, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i64* %new_snapshot, metadata !340, metadata !DIExpression()), !dbg !345
  %tobool = icmp ne %struct.kp_kv_master_struct* %master, null, !dbg !346
  %tobool1 = icmp ne %struct.kp_commit_record_struct* %cr, null, !dbg !348
  %or.cond = and i1 %tobool, %tobool1, !dbg !349
  br i1 %or.cond, label %do.end6, label %do.body, !dbg !349

do.body:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !350, !tbaa !75
  %call = tail call i64 @pthread_self() #9, !dbg !350
  %rem = urem i64 %call, 10000, !dbg !350
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0), i64 %rem, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.kp_master_merge_commit, i64 0, i64 0), %struct.kp_kv_master_struct* %master, %struct.kp_commit_record_struct* %cr) #10, !dbg !350
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !350, !tbaa !75
  %call3 = tail call i32 @fflush(%struct._IO_FILE* %1), !dbg !350
  br label %cleanup, !dbg !353

do.end6:                                          ; preds = %entry
  %kv = getelementptr inbounds %struct.kp_kv_master_struct, %struct.kp_kv_master_struct* %master, i64 0, i32 1, !dbg !354
  %2 = load %struct.kp_kvstore_struct*, %struct.kp_kvstore_struct** %kv, align 8, !dbg !354, !tbaa !120
  %call7 = tail call i32 @kp_commit(%struct.kp_kvstore_struct* %2, %struct.kp_commit_record_struct* nonnull %cr, i8** %conflict_list, i64* %new_snapshot) #6, !dbg !355
  call void @llvm.dbg.value(metadata i32 %call7, metadata !341, metadata !DIExpression()), !dbg !356
  %cmp = icmp eq i32 %call7, -1, !dbg !357
  br i1 %cmp, label %do.body9, label %if.else, !dbg !359

do.body9:                                         ; preds = %do.end6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !360, !tbaa !75
  %call10 = tail call i64 @pthread_self() #9, !dbg !360
  %rem11 = urem i64 %call10, 10000, !dbg !360
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i64 0, i64 0), i64 %rem11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.kp_master_merge_commit, i64 0, i64 0)) #10, !dbg !360
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !360, !tbaa !75
  %call13 = tail call i32 @fflush(%struct._IO_FILE* %4), !dbg !360
  br label %cleanup, !dbg !363

if.else:                                          ; preds = %do.end6
  %cmp16 = icmp eq i32 %call7, 1, !dbg !364
  %5 = load i64, i64* %new_snapshot, align 8, !dbg !366, !tbaa !367
  %cmp21 = icmp eq i64 %5, -1, !dbg !366
  br i1 %cmp16, label %do.end20, label %if.end32, !dbg !369

do.end20:                                         ; preds = %if.else
  br i1 %cmp21, label %do.body23, label %cleanup, !dbg !370

do.body23:                                        ; preds = %do.end20
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !372, !tbaa !75
  %call24 = tail call i64 @pthread_self() #9, !dbg !372
  %rem25 = urem i64 %call24, 10000, !dbg !372
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0), i64 %rem25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.kp_master_merge_commit, i64 0, i64 0), i64 -1) #10, !dbg !372
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !372, !tbaa !75
  %call27 = tail call i32 @fflush(%struct._IO_FILE* %7), !dbg !372
  tail call void @abort() #11, !dbg !372
  unreachable, !dbg !372

if.end32:                                         ; preds = %if.else
  br i1 %cmp21, label %do.body35, label %cleanup, !dbg !376

do.body35:                                        ; preds = %if.end32
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !377, !tbaa !75
  %call36 = tail call i64 @pthread_self() #9, !dbg !377
  %rem37 = urem i64 %call36, 10000, !dbg !377
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0), i64 %rem37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.kp_master_merge_commit, i64 0, i64 0), i64 -1) #10, !dbg !377
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !377, !tbaa !75
  %call39 = tail call i32 @fflush(%struct._IO_FILE* %9), !dbg !377
  tail call void @abort() #11, !dbg !377
  unreachable, !dbg !377

cleanup:                                          ; preds = %if.end32, %do.end20, %do.body9, %do.body
  %retval.0 = phi i32 [ -1, %do.body9 ], [ -1, %do.body ], [ 1, %do.end20 ], [ 0, %if.end32 ], !dbg !366
  ret i32 %retval.0, !dbg !381
}

declare i32 @kp_commit(%struct.kp_kvstore_struct*, %struct.kp_commit_record_struct*, i8**, i64*) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone speculatable }
attributes #9 = { nounwind readnone }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readonly }

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
!41 = distinct !DISubprogram(name: "kp_kv_master_create", scope: !3, file: !3, line: 66, type: !42, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !60)
!42 = !DISubroutineType(types: !43)
!43 = !{!21, !44, !56, !29, !59, !59}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "kp_kv_master", file: !6, line: 23, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kp_kv_master_struct", file: !3, line: 44, size: 192, elements: !48)
!48 = !{!49, !50, !55, !57}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !47, file: !3, line: 47, baseType: !34, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "kv", scope: !47, file: !3, line: 48, baseType: !51, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "kp_kvstore", file: !53, line: 42, baseType: !54)
!53 = !DIFile(filename: "./kp_kvstore_internal.h", directory: "/home/aksun/git/NvmBenchmarks/echo/src")
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "kp_kvstore_struct", file: !53, line: 41, flags: DIFlagFwdDecl)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !47, file: !3, line: 49, baseType: !56, size: 32, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "consistency_mode", file: !6, line: 41, baseType: !5)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !47, file: !3, line: 63, baseType: !58, size: 32, offset: 160)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "ds_state", file: !13, line: 57, baseType: !12)
!59 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!60 = !{!61, !62, !63, !64, !65, !66}
!61 = !DILocalVariable(name: "master", arg: 1, scope: !41, file: !3, line: 66, type: !44)
!62 = !DILocalVariable(name: "mode", arg: 2, scope: !41, file: !3, line: 66, type: !56)
!63 = !DILocalVariable(name: "expected_max_keys", arg: 3, scope: !41, file: !3, line: 67, type: !29)
!64 = !DILocalVariable(name: "do_conflict_detection", arg: 4, scope: !41, file: !3, line: 67, type: !59)
!65 = !DILocalVariable(name: "use_nvm", arg: 5, scope: !41, file: !3, line: 67, type: !59)
!66 = !DILocalVariable(name: "ret", scope: !41, file: !3, line: 69, type: !21)
!67 = !DILocation(line: 66, column: 48, scope: !41)
!68 = !DILocation(line: 66, column: 73, scope: !41)
!69 = !DILocation(line: 67, column: 10, scope: !41)
!70 = !DILocation(line: 71, column: 6, scope: !41)
!71 = !DILocation(line: 72, column: 3, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 72, column: 3)
!73 = distinct !DILexicalBlock(scope: !74, file: !3, line: 71, column: 16)
!74 = distinct !DILexicalBlock(scope: !41, file: !3, line: 71, column: 6)
!75 = !{!76, !76, i64 0}
!76 = !{!"any pointer", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !DILocation(line: 77, column: 13, scope: !41)
!80 = !DILocation(line: 77, column: 2, scope: !41)
!81 = !DILocation(line: 78, column: 6, scope: !82)
!82 = distinct !DILexicalBlock(scope: !41, file: !3, line: 78, column: 6)
!83 = !DILocation(line: 78, column: 14, scope: !82)
!84 = !DILocation(line: 78, column: 6, scope: !41)
!85 = !DILocation(line: 79, column: 3, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 79, column: 3)
!87 = distinct !DILexicalBlock(scope: !82, file: !3, line: 78, column: 23)
!88 = !DILocation(line: 80, column: 3, scope: !87)
!89 = !DILocation(line: 84, column: 2, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !3, line: 84, column: 2)
!91 = distinct !DILexicalBlock(scope: !92, file: !3, line: 84, column: 2)
!92 = distinct !DILexicalBlock(scope: !41, file: !3, line: 84, column: 2)
!93 = !{!94, !94, i64 0}
!94 = !{!"int", !77, i64 0}
!95 = !DILocation(line: 84, column: 2, scope: !91)
!96 = !DILocation(line: 84, column: 2, scope: !97)
!97 = distinct !DILexicalBlock(scope: !90, file: !3, line: 84, column: 2)
!98 = !{!99, !99, i64 0}
!99 = !{!"long long", !77, i64 0}
!100 = !DILocation(line: 84, column: 2, scope: !92)
!101 = !{!102, !94, i64 0}
!102 = !{!"kp_kv_master_struct", !94, i64 0, !76, i64 8, !77, i64 16, !77, i64 20}
!103 = !DILocation(line: 85, column: 20, scope: !41)
!104 = !DILocation(line: 86, column: 25, scope: !105)
!105 = distinct !DILexicalBlock(scope: !41, file: !3, line: 86, column: 6)
!106 = !DILocation(line: 86, column: 6, scope: !41)
!107 = !DILocation(line: 87, column: 3, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !3, line: 87, column: 3)
!109 = distinct !DILexicalBlock(scope: !105, file: !3, line: 86, column: 40)
!110 = !DILocation(line: 88, column: 3, scope: !109)
!111 = !DILocation(line: 89, column: 3, scope: !109)
!112 = !DILocation(line: 95, column: 39, scope: !41)
!113 = !DILocation(line: 95, column: 8, scope: !41)
!114 = !DILocation(line: 69, column: 6, scope: !41)
!115 = !DILocation(line: 99, column: 10, scope: !116)
!116 = distinct !DILexicalBlock(scope: !41, file: !3, line: 99, column: 6)
!117 = !DILocation(line: 99, column: 15, scope: !116)
!118 = !DILocation(line: 99, column: 19, scope: !116)
!119 = !DILocation(line: 99, column: 29, scope: !116)
!120 = !{!102, !76, i64 8}
!121 = !DILocation(line: 99, column: 32, scope: !116)
!122 = !DILocation(line: 99, column: 6, scope: !41)
!123 = !DILocation(line: 100, column: 3, scope: !124)
!124 = distinct !DILexicalBlock(scope: !125, file: !3, line: 100, column: 3)
!125 = distinct !DILexicalBlock(scope: !116, file: !3, line: 99, column: 41)
!126 = !DILocation(line: 101, column: 3, scope: !125)
!127 = !DILocation(line: 102, column: 3, scope: !125)
!128 = !DILocation(line: 104, column: 2, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !3, line: 104, column: 2)
!130 = distinct !DILexicalBlock(scope: !131, file: !3, line: 104, column: 2)
!131 = distinct !DILexicalBlock(scope: !41, file: !3, line: 104, column: 2)
!132 = !DILocation(line: 104, column: 2, scope: !130)
!133 = !DILocation(line: 104, column: 2, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !3, line: 104, column: 2)
!135 = !DILocation(line: 104, column: 2, scope: !131)
!136 = !{!102, !77, i64 16}
!137 = !DILocation(line: 117, column: 2, scope: !41)
!138 = !DILocation(line: 121, column: 2, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !3, line: 121, column: 2)
!140 = distinct !DILexicalBlock(scope: !141, file: !3, line: 121, column: 2)
!141 = distinct !DILexicalBlock(scope: !41, file: !3, line: 121, column: 2)
!142 = !DILocation(line: 122, column: 2, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !3, line: 122, column: 2)
!144 = distinct !DILexicalBlock(scope: !145, file: !3, line: 122, column: 2)
!145 = distinct !DILexicalBlock(scope: !41, file: !3, line: 122, column: 2)
!146 = !DILocation(line: 122, column: 2, scope: !144)
!147 = !DILocation(line: 122, column: 2, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !3, line: 122, column: 2)
!149 = !DILocation(line: 122, column: 2, scope: !145)
!150 = !{!102, !77, i64 20}
!151 = !DILocation(line: 123, column: 2, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 123, column: 2)
!153 = distinct !DILexicalBlock(scope: !154, file: !3, line: 123, column: 2)
!154 = distinct !DILexicalBlock(scope: !41, file: !3, line: 123, column: 2)
!155 = !DILocation(line: 0, scope: !41)
!156 = !DILocation(line: 132, column: 1, scope: !41)
!157 = distinct !DISubprogram(name: "kp_kv_master_destroy", scope: !3, file: !3, line: 137, type: !158, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{!21, !45}
!160 = !{!161, !162, !163, !164}
!161 = !DILocalVariable(name: "master", arg: 1, scope: !157, file: !3, line: 137, type: !45)
!162 = !DILocalVariable(name: "ret", scope: !157, file: !3, line: 139, type: !21)
!163 = !DILocalVariable(name: "retval", scope: !157, file: !3, line: 139, type: !21)
!164 = !DILocalVariable(name: "use_nvm", scope: !157, file: !3, line: 140, type: !59)
!165 = !DILocation(line: 137, column: 40, scope: !157)
!166 = !DILocation(line: 143, column: 2, scope: !157)
!167 = distinct !DISubprogram(name: "kp_master_get_id", scope: !3, file: !3, line: 171, type: !168, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !170)
!168 = !DISubroutineType(types: !169)
!169 = !{!34, !45}
!170 = !{!171, !172}
!171 = !DILocalVariable(name: "master", arg: 1, scope: !167, file: !3, line: 171, type: !45)
!172 = !DILocalVariable(name: "ret", scope: !167, file: !3, line: 173, type: !34)
!173 = !DILocation(line: 171, column: 41, scope: !167)
!174 = !DILocation(line: 174, column: 13, scope: !175)
!175 = distinct !DILexicalBlock(scope: !167, file: !3, line: 174, column: 6)
!176 = !DILocation(line: 174, column: 6, scope: !167)
!177 = !DILocation(line: 175, column: 3, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !3, line: 175, column: 3)
!179 = distinct !DILexicalBlock(scope: !175, file: !3, line: 174, column: 22)
!180 = !DILocation(line: 176, column: 3, scope: !179)
!181 = !DILocation(line: 179, column: 16, scope: !167)
!182 = !DILocation(line: 173, column: 11, scope: !167)
!183 = !DILocation(line: 180, column: 2, scope: !167)
!184 = !DILocation(line: 0, scope: !167)
!185 = !DILocation(line: 181, column: 1, scope: !167)
!186 = distinct !DISubprogram(name: "kp_master_get_mode", scope: !3, file: !3, line: 183, type: !187, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!187 = !DISubroutineType(types: !188)
!188 = !{!56, !45}
!189 = !{!190, !191}
!190 = !DILocalVariable(name: "master", arg: 1, scope: !186, file: !3, line: 183, type: !45)
!191 = !DILocalVariable(name: "ret", scope: !186, file: !3, line: 185, type: !56)
!192 = !DILocation(line: 183, column: 51, scope: !186)
!193 = !DILocation(line: 186, column: 13, scope: !194)
!194 = distinct !DILexicalBlock(scope: !186, file: !3, line: 186, column: 6)
!195 = !DILocation(line: 186, column: 6, scope: !186)
!196 = !DILocation(line: 187, column: 3, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !3, line: 187, column: 3)
!198 = distinct !DILexicalBlock(scope: !194, file: !3, line: 186, column: 22)
!199 = !DILocation(line: 188, column: 3, scope: !198)
!200 = !DILocation(line: 191, column: 16, scope: !186)
!201 = !DILocation(line: 185, column: 19, scope: !186)
!202 = !DILocation(line: 192, column: 2, scope: !186)
!203 = !DILocation(line: 0, scope: !186)
!204 = !DILocation(line: 193, column: 1, scope: !186)
!205 = distinct !DISubprogram(name: "kp_master_get", scope: !3, file: !3, line: 195, type: !206, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !219)
!206 = !DISubroutineType(types: !207)
!207 = !{!21, !45, !208, !32, !218}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "kp_ht_entry", file: !53, line: 60, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kp_ht_entry_struct", file: !53, line: 57, size: 128, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !211, file: !53, line: 58, baseType: !27, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "vt", scope: !211, file: !53, line: 59, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "kp_vt", file: !53, line: 44, baseType: !217)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "kp_vt_struct", file: !53, line: 43, flags: DIFlagFwdDecl)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!219 = !{!220, !221, !222, !223, !224}
!220 = !DILocalVariable(name: "master", arg: 1, scope: !205, file: !3, line: 195, type: !45)
!221 = !DILocalVariable(name: "lookup_entry", arg: 2, scope: !205, file: !3, line: 195, type: !208)
!222 = !DILocalVariable(name: "value", arg: 3, scope: !205, file: !3, line: 196, type: !32)
!223 = !DILocalVariable(name: "size", arg: 4, scope: !205, file: !3, line: 196, type: !218)
!224 = !DILocalVariable(name: "ret", scope: !205, file: !3, line: 198, type: !21)
!225 = !DILocation(line: 195, column: 33, scope: !205)
!226 = !DILocation(line: 195, column: 60, scope: !205)
!227 = !DILocation(line: 196, column: 10, scope: !205)
!228 = !DILocation(line: 196, column: 25, scope: !205)
!229 = !DILocation(line: 200, column: 13, scope: !230)
!230 = distinct !DILexicalBlock(scope: !205, file: !3, line: 200, column: 6)
!231 = !DILocation(line: 200, column: 6, scope: !205)
!232 = !DILocation(line: 201, column: 3, scope: !233)
!233 = distinct !DILexicalBlock(scope: !234, file: !3, line: 201, column: 3)
!234 = distinct !DILexicalBlock(scope: !230, file: !3, line: 200, column: 22)
!235 = !DILocation(line: 202, column: 3, scope: !234)
!236 = !DILocation(line: 213, column: 23, scope: !205)
!237 = !DILocation(line: 213, column: 8, scope: !205)
!238 = !DILocation(line: 198, column: 6, scope: !205)
!239 = !DILocation(line: 223, column: 10, scope: !240)
!240 = distinct !DILexicalBlock(scope: !205, file: !3, line: 223, column: 6)
!241 = !DILocation(line: 223, column: 6, scope: !205)
!242 = !DILocation(line: 224, column: 3, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !3, line: 224, column: 3)
!244 = distinct !DILexicalBlock(scope: !240, file: !3, line: 223, column: 15)
!245 = !DILocation(line: 225, column: 2, scope: !244)
!246 = !DILocation(line: 225, column: 24, scope: !247)
!247 = distinct !DILexicalBlock(scope: !240, file: !3, line: 225, column: 13)
!248 = !DILocation(line: 229, column: 3, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 229, column: 3)
!250 = distinct !DILexicalBlock(scope: !247, file: !3, line: 225, column: 53)
!251 = !DILocation(line: 232, column: 2, scope: !250)
!252 = !DILocation(line: 0, scope: !205)
!253 = !DILocation(line: 235, column: 1, scope: !205)
!254 = distinct !DISubprogram(name: "kp_master_get_by_snapshot", scope: !3, file: !3, line: 237, type: !255, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !258)
!255 = !DISubroutineType(types: !256)
!256 = !{!21, !45, !257, !208, !32, !218}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !35, line: 55, baseType: !31)
!258 = !{!259, !260, !261, !262, !263, !264}
!259 = !DILocalVariable(name: "master", arg: 1, scope: !254, file: !3, line: 237, type: !45)
!260 = !DILocalVariable(name: "snapshot", arg: 2, scope: !254, file: !3, line: 237, type: !257)
!261 = !DILocalVariable(name: "lookup_entry", arg: 3, scope: !254, file: !3, line: 238, type: !208)
!262 = !DILocalVariable(name: "value", arg: 4, scope: !254, file: !3, line: 238, type: !32)
!263 = !DILocalVariable(name: "size", arg: 5, scope: !254, file: !3, line: 238, type: !218)
!264 = !DILocalVariable(name: "ret", scope: !254, file: !3, line: 240, type: !21)
!265 = !DILocation(line: 237, column: 45, scope: !254)
!266 = !DILocation(line: 237, column: 62, scope: !254)
!267 = !DILocation(line: 238, column: 22, scope: !254)
!268 = !DILocation(line: 238, column: 43, scope: !254)
!269 = !DILocation(line: 238, column: 58, scope: !254)
!270 = !DILocation(line: 242, column: 7, scope: !271)
!271 = distinct !DILexicalBlock(scope: !254, file: !3, line: 242, column: 6)
!272 = !DILocation(line: 242, column: 18, scope: !271)
!273 = !DILocation(line: 242, column: 14, scope: !271)
!274 = !DILocation(line: 243, column: 3, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 243, column: 3)
!276 = distinct !DILexicalBlock(scope: !271, file: !3, line: 242, column: 32)
!277 = !DILocation(line: 245, column: 3, scope: !276)
!278 = !DILocation(line: 272, column: 40, scope: !254)
!279 = !DILocation(line: 272, column: 8, scope: !254)
!280 = !DILocation(line: 240, column: 6, scope: !254)
!281 = !DILocation(line: 278, column: 10, scope: !282)
!282 = distinct !DILexicalBlock(scope: !254, file: !3, line: 278, column: 6)
!283 = !DILocation(line: 278, column: 6, scope: !254)
!284 = !DILocation(line: 279, column: 3, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !3, line: 279, column: 3)
!286 = distinct !DILexicalBlock(scope: !282, file: !3, line: 278, column: 15)
!287 = !DILocation(line: 281, column: 2, scope: !286)
!288 = !DILocation(line: 0, scope: !254)
!289 = !DILocation(line: 289, column: 1, scope: !254)
!290 = distinct !DISubprogram(name: "kp_master_get_latest_snapshot", scope: !3, file: !3, line: 291, type: !291, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !293)
!291 = !DISubroutineType(types: !292)
!292 = !{!257, !45}
!293 = !{!294, !295}
!294 = !DILocalVariable(name: "master", arg: 1, scope: !290, file: !3, line: 291, type: !45)
!295 = !DILocalVariable(name: "ret", scope: !290, file: !3, line: 293, type: !257)
!296 = !DILocation(line: 291, column: 54, scope: !290)
!297 = !DILocation(line: 294, column: 7, scope: !298)
!298 = distinct !DILexicalBlock(scope: !290, file: !3, line: 294, column: 6)
!299 = !DILocation(line: 294, column: 6, scope: !290)
!300 = !DILocation(line: 295, column: 3, scope: !301)
!301 = distinct !DILexicalBlock(scope: !302, file: !3, line: 295, column: 3)
!302 = distinct !DILexicalBlock(scope: !298, file: !3, line: 294, column: 15)
!303 = !DILocation(line: 296, column: 3, scope: !302)
!304 = !DILocation(line: 298, column: 39, scope: !290)
!305 = !DILocation(line: 298, column: 8, scope: !290)
!306 = !DILocation(line: 293, column: 11, scope: !290)
!307 = !DILocation(line: 299, column: 2, scope: !290)
!308 = !DILocation(line: 0, scope: !290)
!309 = !DILocation(line: 300, column: 1, scope: !290)
!310 = distinct !DISubprogram(name: "kp_master_get_initial_snapshot", scope: !3, file: !3, line: 310, type: !291, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !311)
!311 = !{!312, !313}
!312 = !DILocalVariable(name: "master", arg: 1, scope: !310, file: !3, line: 310, type: !45)
!313 = !DILocalVariable(name: "ret", scope: !310, file: !3, line: 312, type: !257)
!314 = !DILocation(line: 310, column: 55, scope: !310)
!315 = !DILocation(line: 312, column: 59, scope: !310)
!316 = !DILocation(line: 312, column: 17, scope: !310)
!317 = !DILocation(line: 312, column: 11, scope: !310)
!318 = !DILocation(line: 313, column: 2, scope: !310)
!319 = distinct !DISubprogram(name: "kp_master_uses_nvm", scope: !3, file: !3, line: 316, type: !320, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !322)
!320 = !DISubroutineType(types: !321)
!321 = !{!59, !45}
!322 = !{!323, !324}
!323 = !DILocalVariable(name: "master", arg: 1, scope: !319, file: !3, line: 316, type: !45)
!324 = !DILocalVariable(name: "ret", scope: !319, file: !3, line: 318, type: !59)
!325 = !DILocation(line: 316, column: 39, scope: !319)
!326 = !DILocation(line: 318, column: 33, scope: !319)
!327 = !DILocation(line: 318, column: 13, scope: !319)
!328 = !DILocation(line: 319, column: 2, scope: !319)
!329 = distinct !DISubprogram(name: "kp_master_merge_commit", scope: !3, file: !3, line: 322, type: !330, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !336)
!330 = !DISubroutineType(types: !331)
!331 = !{!21, !45, !332, !32, !335}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "kp_commit_record", file: !53, line: 525, baseType: !334)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "kp_commit_record_struct", file: !53, line: 524, flags: DIFlagFwdDecl)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!336 = !{!337, !338, !339, !340, !341}
!337 = !DILocalVariable(name: "master", arg: 1, scope: !329, file: !3, line: 322, type: !45)
!338 = !DILocalVariable(name: "cr", arg: 2, scope: !329, file: !3, line: 322, type: !332)
!339 = !DILocalVariable(name: "conflict_list", arg: 3, scope: !329, file: !3, line: 323, type: !32)
!340 = !DILocalVariable(name: "new_snapshot", arg: 4, scope: !329, file: !3, line: 323, type: !335)
!341 = !DILocalVariable(name: "ret", scope: !329, file: !3, line: 328, type: !21)
!342 = !DILocation(line: 322, column: 42, scope: !329)
!343 = !DILocation(line: 322, column: 68, scope: !329)
!344 = !DILocation(line: 323, column: 18, scope: !329)
!345 = !DILocation(line: 323, column: 43, scope: !329)
!346 = !DILocation(line: 330, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !329, file: !3, line: 330, column: 6)
!348 = !DILocation(line: 330, column: 18, scope: !347)
!349 = !DILocation(line: 330, column: 14, scope: !347)
!350 = !DILocation(line: 331, column: 3, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !3, line: 331, column: 3)
!352 = distinct !DILexicalBlock(scope: !347, file: !3, line: 330, column: 22)
!353 = !DILocation(line: 332, column: 3, scope: !352)
!354 = !DILocation(line: 355, column: 26, scope: !329)
!355 = !DILocation(line: 355, column: 8, scope: !329)
!356 = !DILocation(line: 328, column: 6, scope: !329)
!357 = !DILocation(line: 356, column: 10, scope: !358)
!358 = distinct !DILexicalBlock(scope: !329, file: !3, line: 356, column: 6)
!359 = !DILocation(line: 356, column: 6, scope: !329)
!360 = !DILocation(line: 357, column: 3, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !3, line: 357, column: 3)
!362 = distinct !DILexicalBlock(scope: !358, file: !3, line: 356, column: 17)
!363 = !DILocation(line: 358, column: 3, scope: !362)
!364 = !DILocation(line: 359, column: 17, scope: !365)
!365 = distinct !DILexicalBlock(scope: !358, file: !3, line: 359, column: 13)
!366 = !DILocation(line: 0, scope: !329)
!367 = !{!368, !368, i64 0}
!368 = !{!"long", !77, i64 0}
!369 = !DILocation(line: 359, column: 13, scope: !358)
!370 = !DILocation(line: 364, column: 7, scope: !371)
!371 = distinct !DILexicalBlock(scope: !365, file: !3, line: 359, column: 23)
!372 = !DILocation(line: 365, column: 4, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 365, column: 4)
!374 = distinct !DILexicalBlock(scope: !375, file: !3, line: 364, column: 36)
!375 = distinct !DILexicalBlock(scope: !371, file: !3, line: 364, column: 7)
!376 = !DILocation(line: 372, column: 6, scope: !329)
!377 = !DILocation(line: 373, column: 3, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !3, line: 373, column: 3)
!379 = distinct !DILexicalBlock(scope: !380, file: !3, line: 372, column: 35)
!380 = distinct !DILexicalBlock(scope: !329, file: !3, line: 372, column: 6)
!381 = !DILocation(line: 379, column: 1, scope: !329)
