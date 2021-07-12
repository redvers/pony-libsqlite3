use "lib:sqlite3"
primitive PonySqlite3
  fun psqlite3_libversion(): String =>
    var pcstring: Pointer[U8] = @sqlite3_libversion()
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_sourceid(): String =>
    var pcstring: Pointer[U8] = @sqlite3_sourceid()
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_libversion_number(): I32 =>
    @sqlite3_libversion_number()
    

  fun psqlite3_compileoption_used(pzOptName: String): I32 =>
    @sqlite3_compileoption_used(pzOptName.cstring())
    

  fun psqlite3_compileoption_get(pN: I32): String =>
    var pcstring: Pointer[U8] = @sqlite3_compileoption_get(pN)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_threadsafe(): I32 =>
    @sqlite3_threadsafe()
    

  fun psqlite3_close(pparg0: NullablePointer[Sqlite3] tag): I32 =>
    @sqlite3_close(pparg0)
    

  fun psqlite3_close_v2(pparg0: NullablePointer[Sqlite3] tag): I32 =>
    @sqlite3_close_v2(pparg0)
    

  fun psqlite3_exec(pparg0: NullablePointer[Sqlite3] tag, psql: String, pcallback: NullablePointer[FUNCTIONTYPE] tag, pparg3: Pointer[None] tag, perrmsg: Pointer[Pointer[U8]]): I32 =>
    @sqlite3_exec(pparg0, psql.cstring(), pcallback, pparg3, perrmsg)
    

  fun psqlite3_initialize(): I32 =>
    @sqlite3_initialize()
    

  fun psqlite3_shutdown(): I32 =>
    @sqlite3_shutdown()
    

  fun psqlite3_os_init(): I32 =>
    @sqlite3_os_init()
    

  fun psqlite3_os_end(): I32 =>
    @sqlite3_os_end()
    

  fun psqlite3_extended_result_codes(pparg0: NullablePointer[Sqlite3] tag, ponoff: I32): I32 =>
    @sqlite3_extended_result_codes(pparg0, ponoff)
    

  fun psqlite3_last_insert_rowid(pparg0: NullablePointer[Sqlite3] tag): I64 =>
    @sqlite3_last_insert_rowid(pparg0)
    

  fun psqlite3_set_last_insert_rowid(pparg0: NullablePointer[Sqlite3] tag, pparg1: I64): None =>
    @sqlite3_set_last_insert_rowid(pparg0, pparg1)
    

  fun psqlite3_changes(pparg0: NullablePointer[Sqlite3] tag): I32 =>
    @sqlite3_changes(pparg0)
    

  fun psqlite3_total_changes(pparg0: NullablePointer[Sqlite3] tag): I32 =>
    @sqlite3_total_changes(pparg0)
    

  fun psqlite3_interrupt(pparg0: NullablePointer[Sqlite3] tag): None =>
    @sqlite3_interrupt(pparg0)
    

  fun psqlite3_complete(psql: String): I32 =>
    @sqlite3_complete(psql.cstring())
    

  fun psqlite3_complete16(psql: Pointer[None] tag): I32 =>
    @sqlite3_complete16(psql)
    

  fun psqlite3_busy_handler(pparg0: NullablePointer[Sqlite3] tag, pparg1: NullablePointer[FUNCTIONTYPE] tag, pparg2: Pointer[None] tag): I32 =>
    @sqlite3_busy_handler(pparg0, pparg1, pparg2)
    

  fun psqlite3_busy_timeout(pparg0: NullablePointer[Sqlite3] tag, pms: I32): I32 =>
    @sqlite3_busy_timeout(pparg0, pms)
    

  fun psqlite3_get_table(pdb: NullablePointer[Sqlite3] tag, pzSql: String, ppazResult: Pointer[Pointer[U8]] tag, ppnRow: Pointer[I32] tag, ppnColumn: Pointer[I32] tag, ppzErrmsg: Pointer[Pointer[U8]]): I32 =>
    @sqlite3_get_table(pdb, pzSql.cstring(), ppazResult, ppnRow, ppnColumn, ppzErrmsg)
    

  fun psqlite3_free_table(presult: Pointer[Pointer[U8]]): None =>
    @sqlite3_free_table(presult)
    

  fun psqlite3_malloc(pparg0: I32): Pointer[None] =>
    @sqlite3_malloc(pparg0)
    

  fun psqlite3_malloc64(pparg0: U64): Pointer[None] =>
    @sqlite3_malloc64(pparg0)
    

  fun psqlite3_realloc(pparg0: Pointer[None] tag, pparg1: I32): Pointer[None] =>
    @sqlite3_realloc(pparg0, pparg1)
    

  fun psqlite3_realloc64(pparg0: Pointer[None] tag, pparg1: U64): Pointer[None] =>
    @sqlite3_realloc64(pparg0, pparg1)
    

  fun psqlite3_free(pparg0: Pointer[None] tag): None =>
    @sqlite3_free(pparg0)
    

  fun psqlite3_msize(pparg0: Pointer[None] tag): U64 =>
    @sqlite3_msize(pparg0)
    

  fun psqlite3_memory_used(): I64 =>
    @sqlite3_memory_used()
    

  fun psqlite3_memory_highwater(presetFlag: I32): I64 =>
    @sqlite3_memory_highwater(presetFlag)
    

  fun psqlite3_randomness(pN: I32, pP: Pointer[None] tag): None =>
    @sqlite3_randomness(pN, pP)
    

  fun psqlite3_set_authorizer(pparg0: NullablePointer[Sqlite3] tag, pxAuth: NullablePointer[FUNCTIONTYPE] tag, ppUserData: Pointer[None] tag): I32 =>
    @sqlite3_set_authorizer(pparg0, pxAuth, ppUserData)
    

  fun psqlite3_trace(pparg0: NullablePointer[Sqlite3] tag, pxTrace: NullablePointer[FUNCTIONTYPE] tag, pparg2: Pointer[None] tag): Pointer[None] =>
    @sqlite3_trace(pparg0, pxTrace, pparg2)
    

  fun psqlite3_profile(pparg0: NullablePointer[Sqlite3] tag, pxProfile: NullablePointer[FUNCTIONTYPE] tag, pparg2: Pointer[None] tag): Pointer[None] =>
    @sqlite3_profile(pparg0, pxProfile, pparg2)
    

  fun psqlite3_trace_v2(pparg0: NullablePointer[Sqlite3] tag, puMask: U32, pxCallback: NullablePointer[FUNCTIONTYPE] tag, ppCtx: Pointer[None] tag): I32 =>
    @sqlite3_trace_v2(pparg0, puMask, pxCallback, ppCtx)
    

  fun psqlite3_progress_handler(pparg0: NullablePointer[Sqlite3] tag, pparg1: I32, pparg2: NullablePointer[FUNCTIONTYPE] tag, pparg3: Pointer[None] tag): None =>
    @sqlite3_progress_handler(pparg0, pparg1, pparg2, pparg3)
    

  fun psqlite3_open(pfilename: String, pppDb: Array[NullablePointer[Sqlite3]] tag): I32 =>
    @sqlite3_open(pfilename.cstring(), pppDb)
    

  fun psqlite3_open16(pfilename: Pointer[None] tag, pppDb: Array[NullablePointer[Sqlite3]] tag): I32 =>
    @sqlite3_open16(pfilename, pppDb)
    

  fun psqlite3_open_v2(pfilename: String, pppDb: Array[NullablePointer[Sqlite3]] tag, pflags: I32, pzVfs: String): I32 =>
    @sqlite3_open_v2(pfilename.cstring(), pppDb, pflags, pzVfs.cstring())
    

  fun psqlite3_uri_parameter(pzFilename: String, pzParam: String): String =>
    var pcstring: Pointer[U8] = @sqlite3_uri_parameter(pzFilename.cstring(), pzParam.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_uri_boolean(pzFile: String, pzParam: String, pbDefault: I32): I32 =>
    @sqlite3_uri_boolean(pzFile.cstring(), pzParam.cstring(), pbDefault)
    

  fun psqlite3_uri_int64(pparg0: String, pparg1: String, pparg2: I64): I64 =>
    @sqlite3_uri_int64(pparg0.cstring(), pparg1.cstring(), pparg2)
    

  fun psqlite3_uri_key(pzFilename: String, pN: I32): String =>
    var pcstring: Pointer[U8] = @sqlite3_uri_key(pzFilename.cstring(), pN)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_filename_database(pparg0: String): String =>
    var pcstring: Pointer[U8] = @sqlite3_filename_database(pparg0.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_filename_journal(pparg0: String): String =>
    var pcstring: Pointer[U8] = @sqlite3_filename_journal(pparg0.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_filename_wal(pparg0: String): String =>
    var pcstring: Pointer[U8] = @sqlite3_filename_wal(pparg0.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_database_file_object(pparg0: String): NullablePointer[Sqlite3file] =>
    @sqlite3_database_file_object(pparg0.cstring())
    

  fun psqlite3_create_filename(pzDatabase: String, pzJournal: String, pzWal: String, pnParam: I32, pazParam: Pointer[Pointer[U8]]): String =>
    var pcstring: Pointer[U8] = @sqlite3_create_filename(pzDatabase.cstring(), pzJournal.cstring(), pzWal.cstring(), pnParam, pazParam)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_free_filename(pparg0: String): None =>
    @sqlite3_free_filename(pparg0.cstring())
    

  fun psqlite3_errcode(pdb: NullablePointer[Sqlite3] tag): I32 =>
    @sqlite3_errcode(pdb)
    

  fun psqlite3_extended_errcode(pdb: NullablePointer[Sqlite3] tag): I32 =>
    @sqlite3_extended_errcode(pdb)
    

  fun psqlite3_errmsg(pparg0: NullablePointer[Sqlite3] tag): String =>
    var pcstring: Pointer[U8] = @sqlite3_errmsg(pparg0)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_errmsg16(pparg0: NullablePointer[Sqlite3] tag): Pointer[None] =>
    @sqlite3_errmsg16(pparg0)
    

  fun psqlite3_errstr(pparg0: I32): String =>
    var pcstring: Pointer[U8] = @sqlite3_errstr(pparg0)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_limit(pparg0: NullablePointer[Sqlite3] tag, pid: I32, pnewVal: I32): I32 =>
    @sqlite3_limit(pparg0, pid, pnewVal)
    

  fun psqlite3_prepare(pdb: NullablePointer[Sqlite3] tag, pzSql: String, pnByte: I32, pppStmt: Array[NullablePointer[Sqlite3stmt]] tag, ppzTail: Pointer[Pointer[U8]]): I32 =>
    @sqlite3_prepare(pdb, pzSql.cstring(), pnByte, pppStmt, ppzTail)
    

  fun psqlite3_prepare_v2(pdb: NullablePointer[Sqlite3] tag, pzSql: String, pnByte: I32, pppStmt: Array[NullablePointer[Sqlite3stmt]] tag, ppzTail: Pointer[Pointer[U8]]): I32 =>
    @sqlite3_prepare_v2(pdb, pzSql.cstring(), pnByte, pppStmt, ppzTail)
    

  fun psqlite3_prepare_v3(pdb: NullablePointer[Sqlite3] tag, pzSql: String, pnByte: I32, pprepFlags: U32, pppStmt: Array[NullablePointer[Sqlite3stmt]] tag, ppzTail: Pointer[Pointer[U8]]): I32 =>
    @sqlite3_prepare_v3(pdb, pzSql.cstring(), pnByte, pprepFlags, pppStmt, ppzTail)
    

  fun psqlite3_prepare16(pdb: NullablePointer[Sqlite3] tag, pzSql: Pointer[None] tag, pnByte: I32, pppStmt: Array[NullablePointer[Sqlite3stmt]] tag, ppzTail: NullablePointer[Pointer[None]] tag): I32 =>
    @sqlite3_prepare16(pdb, pzSql, pnByte, pppStmt, ppzTail)
    

  fun psqlite3_prepare16_v2(pdb: NullablePointer[Sqlite3] tag, pzSql: Pointer[None] tag, pnByte: I32, pppStmt: Array[NullablePointer[Sqlite3stmt]] tag, ppzTail: NullablePointer[Pointer[None]] tag): I32 =>
    @sqlite3_prepare16_v2(pdb, pzSql, pnByte, pppStmt, ppzTail)
    

  fun psqlite3_prepare16_v3(pdb: NullablePointer[Sqlite3] tag, pzSql: Pointer[None] tag, pnByte: I32, pprepFlags: U32, pppStmt: Array[NullablePointer[Sqlite3stmt]] tag, ppzTail: NullablePointer[Pointer[None]] tag): I32 =>
    @sqlite3_prepare16_v3(pdb, pzSql, pnByte, pprepFlags, pppStmt, ppzTail)
    

  fun psqlite3_sql(ppStmt: NullablePointer[Sqlite3stmt] tag): String =>
    var pcstring: Pointer[U8] = @sqlite3_sql(ppStmt)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_expanded_sql(ppStmt: NullablePointer[Sqlite3stmt] tag): String =>
    var pcstring: Pointer[U8] = @sqlite3_expanded_sql(ppStmt)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_normalized_sql(ppStmt: NullablePointer[Sqlite3stmt] tag): String =>
    var pcstring: Pointer[U8] = @sqlite3_normalized_sql(ppStmt)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_stmt_readonly(ppStmt: NullablePointer[Sqlite3stmt] tag): I32 =>
    @sqlite3_stmt_readonly(ppStmt)
    

  fun psqlite3_stmt_isexplain(ppStmt: NullablePointer[Sqlite3stmt] tag): I32 =>
    @sqlite3_stmt_isexplain(ppStmt)
    

  fun psqlite3_stmt_busy(pparg0: NullablePointer[Sqlite3stmt] tag): I32 =>
    @sqlite3_stmt_busy(pparg0)
    

  fun psqlite3_bind_blob(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: Pointer[None] tag, pn: I32, pparg4: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_bind_blob(pparg0, pparg1, pparg2, pn, pparg4)
    

  fun psqlite3_bind_blob64(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: Pointer[None] tag, pparg3: U64, pparg4: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_bind_blob64(pparg0, pparg1, pparg2, pparg3, pparg4)
    

  fun psqlite3_bind_double(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: F64): I32 =>
    @sqlite3_bind_double(pparg0, pparg1, pparg2)
    

  fun psqlite3_bind_int(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: I32): I32 =>
    @sqlite3_bind_int(pparg0, pparg1, pparg2)
    

  fun psqlite3_bind_int64(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: I64): I32 =>
    @sqlite3_bind_int64(pparg0, pparg1, pparg2)
    

  fun psqlite3_bind_null(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32): I32 =>
    @sqlite3_bind_null(pparg0, pparg1)
    

  fun psqlite3_bind_text(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: String, pparg3: I32, pparg4: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_bind_text(pparg0, pparg1, pparg2.cstring(), pparg3, pparg4)
    

  fun psqlite3_bind_text16(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: Pointer[None] tag, pparg3: I32, pparg4: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_bind_text16(pparg0, pparg1, pparg2, pparg3, pparg4)
    

  fun psqlite3_bind_text64(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: String, pparg3: U64, pparg4: NullablePointer[FUNCTIONTYPE] tag, pencoding: U8): I32 =>
    @sqlite3_bind_text64(pparg0, pparg1, pparg2.cstring(), pparg3, pparg4, pencoding)
    

  fun psqlite3_bind_value(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: NullablePointer[Sqlite3value] tag): I32 =>
    @sqlite3_bind_value(pparg0, pparg1, pparg2)
    

  fun psqlite3_bind_pointer(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: Pointer[None] tag, pparg3: String, pparg4: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_bind_pointer(pparg0, pparg1, pparg2, pparg3.cstring(), pparg4)
    

  fun psqlite3_bind_zeroblob(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pn: I32): I32 =>
    @sqlite3_bind_zeroblob(pparg0, pparg1, pn)
    

  fun psqlite3_bind_zeroblob64(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: U64): I32 =>
    @sqlite3_bind_zeroblob64(pparg0, pparg1, pparg2)
    

  fun psqlite3_bind_parameter_count(pparg0: NullablePointer[Sqlite3stmt] tag): I32 =>
    @sqlite3_bind_parameter_count(pparg0)
    

  fun psqlite3_bind_parameter_name(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32): String =>
    var pcstring: Pointer[U8] = @sqlite3_bind_parameter_name(pparg0, pparg1)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_bind_parameter_index(pparg0: NullablePointer[Sqlite3stmt] tag, pzName: String): I32 =>
    @sqlite3_bind_parameter_index(pparg0, pzName.cstring())
    

  fun psqlite3_clear_bindings(pparg0: NullablePointer[Sqlite3stmt] tag): I32 =>
    @sqlite3_clear_bindings(pparg0)
    

  fun psqlite3_column_count(ppStmt: NullablePointer[Sqlite3stmt] tag): I32 =>
    @sqlite3_column_count(ppStmt)
    

  fun psqlite3_column_name(pparg0: NullablePointer[Sqlite3stmt] tag, pN: I32): String =>
    var pcstring: Pointer[U8] = @sqlite3_column_name(pparg0, pN)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_column_name16(pparg0: NullablePointer[Sqlite3stmt] tag, pN: I32): Pointer[None] =>
    @sqlite3_column_name16(pparg0, pN)
    

  fun psqlite3_column_database_name(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32): String =>
    var pcstring: Pointer[U8] = @sqlite3_column_database_name(pparg0, pparg1)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_column_database_name16(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32): Pointer[None] =>
    @sqlite3_column_database_name16(pparg0, pparg1)
    

  fun psqlite3_column_table_name(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32): String =>
    var pcstring: Pointer[U8] = @sqlite3_column_table_name(pparg0, pparg1)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_column_table_name16(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32): Pointer[None] =>
    @sqlite3_column_table_name16(pparg0, pparg1)
    

  fun psqlite3_column_origin_name(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32): String =>
    var pcstring: Pointer[U8] = @sqlite3_column_origin_name(pparg0, pparg1)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_column_origin_name16(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32): Pointer[None] =>
    @sqlite3_column_origin_name16(pparg0, pparg1)
    

  fun psqlite3_column_decltype(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32): String =>
    var pcstring: Pointer[U8] = @sqlite3_column_decltype(pparg0, pparg1)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_column_decltype16(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32): Pointer[None] =>
    @sqlite3_column_decltype16(pparg0, pparg1)
    

  fun psqlite3_step(pparg0: NullablePointer[Sqlite3stmt] tag): I32 =>
    @sqlite3_step(pparg0)
    

  fun psqlite3_data_count(ppStmt: NullablePointer[Sqlite3stmt] tag): I32 =>
    @sqlite3_data_count(ppStmt)
    

  fun psqlite3_column_blob(pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32): Pointer[None] =>
    @sqlite3_column_blob(pparg0, piCol)
    

  fun psqlite3_column_double(pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32): F64 =>
    @sqlite3_column_double(pparg0, piCol)
    

  fun psqlite3_column_int(pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32): I32 =>
    @sqlite3_column_int(pparg0, piCol)
    

  fun psqlite3_column_int64(pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32): I64 =>
    @sqlite3_column_int64(pparg0, piCol)
    

  fun psqlite3_column_text(pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32): String =>
    var pcstring: Pointer[U8] = @sqlite3_column_text(pparg0, piCol)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_column_text16(pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32): Pointer[None] =>
    @sqlite3_column_text16(pparg0, piCol)
    

  fun psqlite3_column_value(pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32): NullablePointer[Sqlite3value] =>
    @sqlite3_column_value(pparg0, piCol)
    

  fun psqlite3_column_bytes(pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32): I32 =>
    @sqlite3_column_bytes(pparg0, piCol)
    

  fun psqlite3_column_bytes16(pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32): I32 =>
    @sqlite3_column_bytes16(pparg0, piCol)
    

  fun psqlite3_column_type(pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32): I32 =>
    @sqlite3_column_type(pparg0, piCol)
    

  fun psqlite3_finalize(ppStmt: NullablePointer[Sqlite3stmt] tag): I32 =>
    @sqlite3_finalize(ppStmt)
    

  fun psqlite3_reset(ppStmt: NullablePointer[Sqlite3stmt] tag): I32 =>
    @sqlite3_reset(ppStmt)
    

  fun psqlite3_create_function(pdb: NullablePointer[Sqlite3] tag, pzFunctionName: String, pnArg: I32, peTextRep: I32, ppApp: Pointer[None] tag, pxFunc: NullablePointer[FUNCTIONTYPE] tag, pxStep: NullablePointer[FUNCTIONTYPE] tag, pxFinal: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_create_function(pdb, pzFunctionName.cstring(), pnArg, peTextRep, ppApp, pxFunc, pxStep, pxFinal)
    

  fun psqlite3_create_function16(pdb: NullablePointer[Sqlite3] tag, pzFunctionName: Pointer[None] tag, pnArg: I32, peTextRep: I32, ppApp: Pointer[None] tag, pxFunc: NullablePointer[FUNCTIONTYPE] tag, pxStep: NullablePointer[FUNCTIONTYPE] tag, pxFinal: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_create_function16(pdb, pzFunctionName, pnArg, peTextRep, ppApp, pxFunc, pxStep, pxFinal)
    

  fun psqlite3_create_function_v2(pdb: NullablePointer[Sqlite3] tag, pzFunctionName: String, pnArg: I32, peTextRep: I32, ppApp: Pointer[None] tag, pxFunc: NullablePointer[FUNCTIONTYPE] tag, pxStep: NullablePointer[FUNCTIONTYPE] tag, pxFinal: NullablePointer[FUNCTIONTYPE] tag, pxDestroy: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_create_function_v2(pdb, pzFunctionName.cstring(), pnArg, peTextRep, ppApp, pxFunc, pxStep, pxFinal, pxDestroy)
    

  fun psqlite3_create_window_function(pdb: NullablePointer[Sqlite3] tag, pzFunctionName: String, pnArg: I32, peTextRep: I32, ppApp: Pointer[None] tag, pxStep: NullablePointer[FUNCTIONTYPE] tag, pxFinal: NullablePointer[FUNCTIONTYPE] tag, pxValue: NullablePointer[FUNCTIONTYPE] tag, pxInverse: NullablePointer[FUNCTIONTYPE] tag, pxDestroy: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_create_window_function(pdb, pzFunctionName.cstring(), pnArg, peTextRep, ppApp, pxStep, pxFinal, pxValue, pxInverse, pxDestroy)
    

  fun psqlite3_aggregate_count(pparg0: NullablePointer[Sqlite3context] tag): I32 =>
    @sqlite3_aggregate_count(pparg0)
    

  fun psqlite3_expired(pparg0: NullablePointer[Sqlite3stmt] tag): I32 =>
    @sqlite3_expired(pparg0)
    

  fun psqlite3_transfer_bindings(pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: NullablePointer[Sqlite3stmt] tag): I32 =>
    @sqlite3_transfer_bindings(pparg0, pparg1)
    

  fun psqlite3_global_recover(): I32 =>
    @sqlite3_global_recover()
    

  fun psqlite3_thread_cleanup(): None =>
    @sqlite3_thread_cleanup()
    

  fun psqlite3_memory_alarm(pparg0: NullablePointer[FUNCTIONTYPE] tag, pparg1: Pointer[None] tag, pparg2: I64): I32 =>
    @sqlite3_memory_alarm(pparg0, pparg1, pparg2)
    

  fun psqlite3_value_blob(pparg0: NullablePointer[Sqlite3value] tag): Pointer[None] =>
    @sqlite3_value_blob(pparg0)
    

  fun psqlite3_value_double(pparg0: NullablePointer[Sqlite3value] tag): F64 =>
    @sqlite3_value_double(pparg0)
    

  fun psqlite3_value_int(pparg0: NullablePointer[Sqlite3value] tag): I32 =>
    @sqlite3_value_int(pparg0)
    

  fun psqlite3_value_int64(pparg0: NullablePointer[Sqlite3value] tag): I64 =>
    @sqlite3_value_int64(pparg0)
    

  fun psqlite3_value_pointer(pparg0: NullablePointer[Sqlite3value] tag, pparg1: String): Pointer[None] =>
    @sqlite3_value_pointer(pparg0, pparg1.cstring())
    

  fun psqlite3_value_text(pparg0: NullablePointer[Sqlite3value] tag): String =>
    var pcstring: Pointer[U8] = @sqlite3_value_text(pparg0)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_value_text16(pparg0: NullablePointer[Sqlite3value] tag): Pointer[None] =>
    @sqlite3_value_text16(pparg0)
    

  fun psqlite3_value_text16le(pparg0: NullablePointer[Sqlite3value] tag): Pointer[None] =>
    @sqlite3_value_text16le(pparg0)
    

  fun psqlite3_value_text16be(pparg0: NullablePointer[Sqlite3value] tag): Pointer[None] =>
    @sqlite3_value_text16be(pparg0)
    

  fun psqlite3_value_bytes(pparg0: NullablePointer[Sqlite3value] tag): I32 =>
    @sqlite3_value_bytes(pparg0)
    

  fun psqlite3_value_bytes16(pparg0: NullablePointer[Sqlite3value] tag): I32 =>
    @sqlite3_value_bytes16(pparg0)
    

  fun psqlite3_value_type(pparg0: NullablePointer[Sqlite3value] tag): I32 =>
    @sqlite3_value_type(pparg0)
    

  fun psqlite3_value_numeric_type(pparg0: NullablePointer[Sqlite3value] tag): I32 =>
    @sqlite3_value_numeric_type(pparg0)
    

  fun psqlite3_value_nochange(pparg0: NullablePointer[Sqlite3value] tag): I32 =>
    @sqlite3_value_nochange(pparg0)
    

  fun psqlite3_value_frombind(pparg0: NullablePointer[Sqlite3value] tag): I32 =>
    @sqlite3_value_frombind(pparg0)
    

  fun psqlite3_value_subtype(pparg0: NullablePointer[Sqlite3value] tag): U32 =>
    @sqlite3_value_subtype(pparg0)
    

  fun psqlite3_value_dup(pparg0: NullablePointer[Sqlite3value] tag): NullablePointer[Sqlite3value] =>
    @sqlite3_value_dup(pparg0)
    

  fun psqlite3_value_free(pparg0: NullablePointer[Sqlite3value] tag): None =>
    @sqlite3_value_free(pparg0)
    

  fun psqlite3_aggregate_context(pparg0: NullablePointer[Sqlite3context] tag, pnBytes: I32): Pointer[None] =>
    @sqlite3_aggregate_context(pparg0, pnBytes)
    

  fun psqlite3_user_data(pparg0: NullablePointer[Sqlite3context] tag): Pointer[None] =>
    @sqlite3_user_data(pparg0)
    

  fun psqlite3_context_db_handle(pparg0: NullablePointer[Sqlite3context] tag): NullablePointer[Sqlite3] =>
    @sqlite3_context_db_handle(pparg0)
    

  fun psqlite3_get_auxdata(pparg0: NullablePointer[Sqlite3context] tag, pN: I32): Pointer[None] =>
    @sqlite3_get_auxdata(pparg0, pN)
    

  fun psqlite3_set_auxdata(pparg0: NullablePointer[Sqlite3context] tag, pN: I32, pparg2: Pointer[None] tag, pparg3: NullablePointer[FUNCTIONTYPE] tag): None =>
    @sqlite3_set_auxdata(pparg0, pN, pparg2, pparg3)
    

  fun psqlite3_result_blob(pparg0: NullablePointer[Sqlite3context] tag, pparg1: Pointer[None] tag, pparg2: I32, pparg3: NullablePointer[FUNCTIONTYPE] tag): None =>
    @sqlite3_result_blob(pparg0, pparg1, pparg2, pparg3)
    

  fun psqlite3_result_blob64(pparg0: NullablePointer[Sqlite3context] tag, pparg1: Pointer[None] tag, pparg2: U64, pparg3: NullablePointer[FUNCTIONTYPE] tag): None =>
    @sqlite3_result_blob64(pparg0, pparg1, pparg2, pparg3)
    

  fun psqlite3_result_double(pparg0: NullablePointer[Sqlite3context] tag, pparg1: F64): None =>
    @sqlite3_result_double(pparg0, pparg1)
    

  fun psqlite3_result_error(pparg0: NullablePointer[Sqlite3context] tag, pparg1: String, pparg2: I32): None =>
    @sqlite3_result_error(pparg0, pparg1.cstring(), pparg2)
    

  fun psqlite3_result_error16(pparg0: NullablePointer[Sqlite3context] tag, pparg1: Pointer[None] tag, pparg2: I32): None =>
    @sqlite3_result_error16(pparg0, pparg1, pparg2)
    

  fun psqlite3_result_error_toobig(pparg0: NullablePointer[Sqlite3context] tag): None =>
    @sqlite3_result_error_toobig(pparg0)
    

  fun psqlite3_result_error_nomem(pparg0: NullablePointer[Sqlite3context] tag): None =>
    @sqlite3_result_error_nomem(pparg0)
    

  fun psqlite3_result_error_code(pparg0: NullablePointer[Sqlite3context] tag, pparg1: I32): None =>
    @sqlite3_result_error_code(pparg0, pparg1)
    

  fun psqlite3_result_int(pparg0: NullablePointer[Sqlite3context] tag, pparg1: I32): None =>
    @sqlite3_result_int(pparg0, pparg1)
    

  fun psqlite3_result_int64(pparg0: NullablePointer[Sqlite3context] tag, pparg1: I64): None =>
    @sqlite3_result_int64(pparg0, pparg1)
    

  fun psqlite3_result_null(pparg0: NullablePointer[Sqlite3context] tag): None =>
    @sqlite3_result_null(pparg0)
    

  fun psqlite3_result_text(pparg0: NullablePointer[Sqlite3context] tag, pparg1: String, pparg2: I32, pparg3: NullablePointer[FUNCTIONTYPE] tag): None =>
    @sqlite3_result_text(pparg0, pparg1.cstring(), pparg2, pparg3)
    

  fun psqlite3_result_text64(pparg0: NullablePointer[Sqlite3context] tag, pparg1: String, pparg2: U64, pparg3: NullablePointer[FUNCTIONTYPE] tag, pencoding: U8): None =>
    @sqlite3_result_text64(pparg0, pparg1.cstring(), pparg2, pparg3, pencoding)
    

  fun psqlite3_result_text16(pparg0: NullablePointer[Sqlite3context] tag, pparg1: Pointer[None] tag, pparg2: I32, pparg3: NullablePointer[FUNCTIONTYPE] tag): None =>
    @sqlite3_result_text16(pparg0, pparg1, pparg2, pparg3)
    

  fun psqlite3_result_text16le(pparg0: NullablePointer[Sqlite3context] tag, pparg1: Pointer[None] tag, pparg2: I32, pparg3: NullablePointer[FUNCTIONTYPE] tag): None =>
    @sqlite3_result_text16le(pparg0, pparg1, pparg2, pparg3)
    

  fun psqlite3_result_text16be(pparg0: NullablePointer[Sqlite3context] tag, pparg1: Pointer[None] tag, pparg2: I32, pparg3: NullablePointer[FUNCTIONTYPE] tag): None =>
    @sqlite3_result_text16be(pparg0, pparg1, pparg2, pparg3)
    

  fun psqlite3_result_value(pparg0: NullablePointer[Sqlite3context] tag, pparg1: NullablePointer[Sqlite3value] tag): None =>
    @sqlite3_result_value(pparg0, pparg1)
    

  fun psqlite3_result_pointer(pparg0: NullablePointer[Sqlite3context] tag, pparg1: Pointer[None] tag, pparg2: String, pparg3: NullablePointer[FUNCTIONTYPE] tag): None =>
    @sqlite3_result_pointer(pparg0, pparg1, pparg2.cstring(), pparg3)
    

  fun psqlite3_result_zeroblob(pparg0: NullablePointer[Sqlite3context] tag, pn: I32): None =>
    @sqlite3_result_zeroblob(pparg0, pn)
    

  fun psqlite3_result_zeroblob64(pparg0: NullablePointer[Sqlite3context] tag, pn: U64): I32 =>
    @sqlite3_result_zeroblob64(pparg0, pn)
    

  fun psqlite3_result_subtype(pparg0: NullablePointer[Sqlite3context] tag, pparg1: U32): None =>
    @sqlite3_result_subtype(pparg0, pparg1)
    

  fun psqlite3_create_collation(pparg0: NullablePointer[Sqlite3] tag, pzName: String, peTextRep: I32, ppArg: Pointer[None] tag, pxCompare: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_create_collation(pparg0, pzName.cstring(), peTextRep, ppArg, pxCompare)
    

  fun psqlite3_create_collation_v2(pparg0: NullablePointer[Sqlite3] tag, pzName: String, peTextRep: I32, ppArg: Pointer[None] tag, pxCompare: NullablePointer[FUNCTIONTYPE] tag, pxDestroy: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_create_collation_v2(pparg0, pzName.cstring(), peTextRep, ppArg, pxCompare, pxDestroy)
    

  fun psqlite3_create_collation16(pparg0: NullablePointer[Sqlite3] tag, pzName: Pointer[None] tag, peTextRep: I32, ppArg: Pointer[None] tag, pxCompare: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_create_collation16(pparg0, pzName, peTextRep, ppArg, pxCompare)
    

  fun psqlite3_collation_needed(pparg0: NullablePointer[Sqlite3] tag, pparg1: Pointer[None] tag, pparg2: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_collation_needed(pparg0, pparg1, pparg2)
    

  fun psqlite3_collation_needed16(pparg0: NullablePointer[Sqlite3] tag, pparg1: Pointer[None] tag, pparg2: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_collation_needed16(pparg0, pparg1, pparg2)
    

  fun psqlite3_sleep(pparg0: I32): I32 =>
    @sqlite3_sleep(pparg0)
    

  fun psqlite3_win32_set_directory(ptype: U64, pzValue: Pointer[None] tag): I32 =>
    @sqlite3_win32_set_directory(ptype, pzValue)
    

  fun psqlite3_win32_set_directory8(ptype: U64, pzValue: String): I32 =>
    @sqlite3_win32_set_directory8(ptype, pzValue.cstring())
    

  fun psqlite3_win32_set_directory16(ptype: U64, pzValue: Pointer[None] tag): I32 =>
    @sqlite3_win32_set_directory16(ptype, pzValue)
    

  fun psqlite3_get_autocommit(pparg0: NullablePointer[Sqlite3] tag): I32 =>
    @sqlite3_get_autocommit(pparg0)
    

  fun psqlite3_db_handle(pparg0: NullablePointer[Sqlite3stmt] tag): NullablePointer[Sqlite3] =>
    @sqlite3_db_handle(pparg0)
    

  fun psqlite3_db_filename(pdb: NullablePointer[Sqlite3] tag, pzDbName: String): String =>
    var pcstring: Pointer[U8] = @sqlite3_db_filename(pdb, pzDbName.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_db_readonly(pdb: NullablePointer[Sqlite3] tag, pzDbName: String): I32 =>
    @sqlite3_db_readonly(pdb, pzDbName.cstring())
    

  fun psqlite3_txn_state(pparg0: NullablePointer[Sqlite3] tag, pzSchema: String): I32 =>
    @sqlite3_txn_state(pparg0, pzSchema.cstring())
    

  fun psqlite3_next_stmt(ppDb: NullablePointer[Sqlite3] tag, ppStmt: NullablePointer[Sqlite3stmt] tag): NullablePointer[Sqlite3stmt] =>
    @sqlite3_next_stmt(ppDb, ppStmt)
    

  fun psqlite3_commit_hook(pparg0: NullablePointer[Sqlite3] tag, pparg1: NullablePointer[FUNCTIONTYPE] tag, pparg2: Pointer[None] tag): Pointer[None] =>
    @sqlite3_commit_hook(pparg0, pparg1, pparg2)
    

  fun psqlite3_rollback_hook(pparg0: NullablePointer[Sqlite3] tag, pparg1: NullablePointer[FUNCTIONTYPE] tag, pparg2: Pointer[None] tag): Pointer[None] =>
    @sqlite3_rollback_hook(pparg0, pparg1, pparg2)
    

  fun psqlite3_update_hook(pparg0: NullablePointer[Sqlite3] tag, pparg1: NullablePointer[FUNCTIONTYPE] tag, pparg2: Pointer[None] tag): Pointer[None] =>
    @sqlite3_update_hook(pparg0, pparg1, pparg2)
    

  fun psqlite3_enable_shared_cache(pparg0: I32): I32 =>
    @sqlite3_enable_shared_cache(pparg0)
    

  fun psqlite3_release_memory(pparg0: I32): I32 =>
    @sqlite3_release_memory(pparg0)
    

  fun psqlite3_db_release_memory(pparg0: NullablePointer[Sqlite3] tag): I32 =>
    @sqlite3_db_release_memory(pparg0)
    

  fun psqlite3_soft_heap_limit64(pN: I64): I64 =>
    @sqlite3_soft_heap_limit64(pN)
    

  fun psqlite3_hard_heap_limit64(pN: I64): I64 =>
    @sqlite3_hard_heap_limit64(pN)
    

  fun psqlite3_soft_heap_limit(pN: I32): None =>
    @sqlite3_soft_heap_limit(pN)
    

  fun psqlite3_table_column_metadata(pdb: NullablePointer[Sqlite3] tag, pzDbName: String, pzTableName: String, pzColumnName: String, ppzDataType: Pointer[Pointer[U8]], ppzCollSeq: Pointer[Pointer[U8]], ppNotNull: Pointer[I32] tag, ppPrimaryKey: Pointer[I32] tag, ppAutoinc: Pointer[I32] tag): I32 =>
    @sqlite3_table_column_metadata(pdb, pzDbName.cstring(), pzTableName.cstring(), pzColumnName.cstring(), ppzDataType, ppzCollSeq, ppNotNull, ppPrimaryKey, ppAutoinc)
    

  fun psqlite3_load_extension(pdb: NullablePointer[Sqlite3] tag, pzFile: String, pzProc: String, ppzErrMsg: Pointer[Pointer[U8]]): I32 =>
    @sqlite3_load_extension(pdb, pzFile.cstring(), pzProc.cstring(), ppzErrMsg)
    

  fun psqlite3_enable_load_extension(pdb: NullablePointer[Sqlite3] tag, ponoff: I32): I32 =>
    @sqlite3_enable_load_extension(pdb, ponoff)
    

  fun psqlite3_auto_extension(pxEntryPoint: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_auto_extension(pxEntryPoint)
    

  fun psqlite3_cancel_auto_extension(pxEntryPoint: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_cancel_auto_extension(pxEntryPoint)
    

  fun psqlite3_reset_auto_extension(): None =>
    @sqlite3_reset_auto_extension()
    

  fun psqlite3_create_module(pdb: NullablePointer[Sqlite3] tag, pzName: String, pp: NullablePointer[Sqlite3module] tag, ppClientData: Pointer[None] tag): I32 =>
    @sqlite3_create_module(pdb, pzName.cstring(), pp, ppClientData)
    

  fun psqlite3_create_module_v2(pdb: NullablePointer[Sqlite3] tag, pzName: String, pp: NullablePointer[Sqlite3module] tag, ppClientData: Pointer[None] tag, pxDestroy: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_create_module_v2(pdb, pzName.cstring(), pp, ppClientData, pxDestroy)
    

  fun psqlite3_drop_modules(pdb: NullablePointer[Sqlite3] tag, pazKeep: Pointer[Pointer[U8]]): I32 =>
    @sqlite3_drop_modules(pdb, pazKeep)
    

  fun psqlite3_declare_vtab(pparg0: NullablePointer[Sqlite3] tag, pzSQL: String): I32 =>
    @sqlite3_declare_vtab(pparg0, pzSQL.cstring())
    

  fun psqlite3_overload_function(pparg0: NullablePointer[Sqlite3] tag, pzFuncName: String, pnArg: I32): I32 =>
    @sqlite3_overload_function(pparg0, pzFuncName.cstring(), pnArg)
    

  fun psqlite3_blob_open(pparg0: NullablePointer[Sqlite3] tag, pzDb: String, pzTable: String, pzColumn: String, piRow: I64, pflags: I32, pppBlob: Array[NullablePointer[Sqlite3blob]] tag): I32 =>
    @sqlite3_blob_open(pparg0, pzDb.cstring(), pzTable.cstring(), pzColumn.cstring(), piRow, pflags, pppBlob)
    

  fun psqlite3_blob_reopen(pparg0: NullablePointer[Sqlite3blob] tag, pparg1: I64): I32 =>
    @sqlite3_blob_reopen(pparg0, pparg1)
    

  fun psqlite3_blob_close(pparg0: NullablePointer[Sqlite3blob] tag): I32 =>
    @sqlite3_blob_close(pparg0)
    

  fun psqlite3_blob_bytes(pparg0: NullablePointer[Sqlite3blob] tag): I32 =>
    @sqlite3_blob_bytes(pparg0)
    

  fun psqlite3_blob_read(pparg0: NullablePointer[Sqlite3blob] tag, pZ: Pointer[None] tag, pN: I32, piOffset: I32): I32 =>
    @sqlite3_blob_read(pparg0, pZ, pN, piOffset)
    

  fun psqlite3_blob_write(pparg0: NullablePointer[Sqlite3blob] tag, pz: Pointer[None] tag, pn: I32, piOffset: I32): I32 =>
    @sqlite3_blob_write(pparg0, pz, pn, piOffset)
    

  fun psqlite3_vfs_find(pzVfsName: String): NullablePointer[Sqlite3vfs] =>
    @sqlite3_vfs_find(pzVfsName.cstring())
    

  fun psqlite3_vfs_register(pparg0: NullablePointer[Sqlite3vfs] tag, pmakeDflt: I32): I32 =>
    @sqlite3_vfs_register(pparg0, pmakeDflt)
    

  fun psqlite3_vfs_unregister(pparg0: NullablePointer[Sqlite3vfs] tag): I32 =>
    @sqlite3_vfs_unregister(pparg0)
    

  fun psqlite3_mutex_alloc(pparg0: I32): NullablePointer[Sqlite3mutex] =>
    @sqlite3_mutex_alloc(pparg0)
    

  fun psqlite3_mutex_free(pparg0: NullablePointer[Sqlite3mutex] tag): None =>
    @sqlite3_mutex_free(pparg0)
    

  fun psqlite3_mutex_enter(pparg0: NullablePointer[Sqlite3mutex] tag): None =>
    @sqlite3_mutex_enter(pparg0)
    

  fun psqlite3_mutex_try(pparg0: NullablePointer[Sqlite3mutex] tag): I32 =>
    @sqlite3_mutex_try(pparg0)
    

  fun psqlite3_mutex_leave(pparg0: NullablePointer[Sqlite3mutex] tag): None =>
    @sqlite3_mutex_leave(pparg0)
    

  fun psqlite3_mutex_held(pparg0: NullablePointer[Sqlite3mutex] tag): I32 =>
    @sqlite3_mutex_held(pparg0)
    

  fun psqlite3_mutex_notheld(pparg0: NullablePointer[Sqlite3mutex] tag): I32 =>
    @sqlite3_mutex_notheld(pparg0)
    

  fun psqlite3_db_mutex(pparg0: NullablePointer[Sqlite3] tag): NullablePointer[Sqlite3mutex] =>
    @sqlite3_db_mutex(pparg0)
    

  fun psqlite3_file_control(pparg0: NullablePointer[Sqlite3] tag, pzDbName: String, pop: I32, pparg3: Pointer[None] tag): I32 =>
    @sqlite3_file_control(pparg0, pzDbName.cstring(), pop, pparg3)
    

  fun psqlite3_keyword_count(): I32 =>
    @sqlite3_keyword_count()
    

  fun psqlite3_keyword_name(pparg0: I32, pparg1: Pointer[Pointer[U8]], pparg2: Pointer[I32] tag): I32 =>
    @sqlite3_keyword_name(pparg0, pparg1, pparg2)
    

  fun psqlite3_keyword_check(pparg0: String, pparg1: I32): I32 =>
    @sqlite3_keyword_check(pparg0.cstring(), pparg1)
    

  fun psqlite3_str_new(pparg0: NullablePointer[Sqlite3] tag): NullablePointer[Sqlite3str] =>
    @sqlite3_str_new(pparg0)
    

  fun psqlite3_str_finish(pparg0: NullablePointer[Sqlite3str] tag): String =>
    var pcstring: Pointer[U8] = @sqlite3_str_finish(pparg0)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_str_append(pparg0: NullablePointer[Sqlite3str] tag, pzIn: String, pN: I32): None =>
    @sqlite3_str_append(pparg0, pzIn.cstring(), pN)
    

  fun psqlite3_str_appendall(pparg0: NullablePointer[Sqlite3str] tag, pzIn: String): None =>
    @sqlite3_str_appendall(pparg0, pzIn.cstring())
    

  fun psqlite3_str_appendchar(pparg0: NullablePointer[Sqlite3str] tag, pN: I32, pC: U8): None =>
    @sqlite3_str_appendchar(pparg0, pN, pC)
    

  fun psqlite3_str_reset(pparg0: NullablePointer[Sqlite3str] tag): None =>
    @sqlite3_str_reset(pparg0)
    

  fun psqlite3_str_errcode(pparg0: NullablePointer[Sqlite3str] tag): I32 =>
    @sqlite3_str_errcode(pparg0)
    

  fun psqlite3_str_length(pparg0: NullablePointer[Sqlite3str] tag): I32 =>
    @sqlite3_str_length(pparg0)
    

  fun psqlite3_str_value(pparg0: NullablePointer[Sqlite3str] tag): String =>
    var pcstring: Pointer[U8] = @sqlite3_str_value(pparg0)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_status(pop: I32, ppCurrent: Pointer[I32] tag, ppHighwater: Pointer[I32] tag, presetFlag: I32): I32 =>
    @sqlite3_status(pop, ppCurrent, ppHighwater, presetFlag)
    

  fun psqlite3_status64(pop: I32, ppCurrent: Pointer[I64] tag, ppHighwater: Pointer[I64] tag, presetFlag: I32): I32 =>
    @sqlite3_status64(pop, ppCurrent, ppHighwater, presetFlag)
    

  fun psqlite3_db_status(pparg0: NullablePointer[Sqlite3] tag, pop: I32, ppCur: Pointer[I32] tag, ppHiwtr: Pointer[I32] tag, presetFlg: I32): I32 =>
    @sqlite3_db_status(pparg0, pop, ppCur, ppHiwtr, presetFlg)
    

  fun psqlite3_stmt_status(pparg0: NullablePointer[Sqlite3stmt] tag, pop: I32, presetFlg: I32): I32 =>
    @sqlite3_stmt_status(pparg0, pop, presetFlg)
    

  fun psqlite3_backup_init(ppDest: NullablePointer[Sqlite3] tag, pzDestName: String, ppSource: NullablePointer[Sqlite3] tag, pzSourceName: String): NullablePointer[Sqlite3backup] =>
    @sqlite3_backup_init(ppDest, pzDestName.cstring(), ppSource, pzSourceName.cstring())
    

  fun psqlite3_backup_step(pp: NullablePointer[Sqlite3backup] tag, pnPage: I32): I32 =>
    @sqlite3_backup_step(pp, pnPage)
    

  fun psqlite3_backup_finish(pp: NullablePointer[Sqlite3backup] tag): I32 =>
    @sqlite3_backup_finish(pp)
    

  fun psqlite3_backup_remaining(pp: NullablePointer[Sqlite3backup] tag): I32 =>
    @sqlite3_backup_remaining(pp)
    

  fun psqlite3_backup_pagecount(pp: NullablePointer[Sqlite3backup] tag): I32 =>
    @sqlite3_backup_pagecount(pp)
    

  fun psqlite3_unlock_notify(ppBlocked: NullablePointer[Sqlite3] tag, pxNotify: NullablePointer[FUNCTIONTYPE] tag, ppNotifyArg: Pointer[None] tag): I32 =>
    @sqlite3_unlock_notify(ppBlocked, pxNotify, ppNotifyArg)
    

  fun psqlite3_stricmp(pparg0: String, pparg1: String): I32 =>
    @sqlite3_stricmp(pparg0.cstring(), pparg1.cstring())
    

  fun psqlite3_strnicmp(pparg0: String, pparg1: String, pparg2: I32): I32 =>
    @sqlite3_strnicmp(pparg0.cstring(), pparg1.cstring(), pparg2)
    

  fun psqlite3_strglob(pzGlob: String, pzStr: String): I32 =>
    @sqlite3_strglob(pzGlob.cstring(), pzStr.cstring())
    

  fun psqlite3_strlike(pzGlob: String, pzStr: String, pcEsc: U32): I32 =>
    @sqlite3_strlike(pzGlob.cstring(), pzStr.cstring(), pcEsc)
    

  fun psqlite3_wal_hook(pparg0: NullablePointer[Sqlite3] tag, pparg1: NullablePointer[FUNCTIONTYPE] tag, pparg2: Pointer[None] tag): Pointer[None] =>
    @sqlite3_wal_hook(pparg0, pparg1, pparg2)
    

  fun psqlite3_wal_autocheckpoint(pdb: NullablePointer[Sqlite3] tag, pN: I32): I32 =>
    @sqlite3_wal_autocheckpoint(pdb, pN)
    

  fun psqlite3_wal_checkpoint(pdb: NullablePointer[Sqlite3] tag, pzDb: String): I32 =>
    @sqlite3_wal_checkpoint(pdb, pzDb.cstring())
    

  fun psqlite3_wal_checkpoint_v2(pdb: NullablePointer[Sqlite3] tag, pzDb: String, peMode: I32, ppnLog: Pointer[I32] tag, ppnCkpt: Pointer[I32] tag): I32 =>
    @sqlite3_wal_checkpoint_v2(pdb, pzDb.cstring(), peMode, ppnLog, ppnCkpt)
    

  fun psqlite3_vtab_on_conflict(pparg0: NullablePointer[Sqlite3] tag): I32 =>
    @sqlite3_vtab_on_conflict(pparg0)
    

  fun psqlite3_vtab_nochange(pparg0: NullablePointer[Sqlite3context] tag): I32 =>
    @sqlite3_vtab_nochange(pparg0)
    

  fun psqlite3_vtab_collation(pparg0: NullablePointer[Sqlite3indexinfo] tag, pparg1: I32): String =>
    var pcstring: Pointer[U8] = @sqlite3_vtab_collation(pparg0, pparg1)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_stmt_scanstatus(ppStmt: NullablePointer[Sqlite3stmt] tag, pidx: I32, piScanStatusOp: I32, ppOut: Pointer[None] tag): I32 =>
    @sqlite3_stmt_scanstatus(ppStmt, pidx, piScanStatusOp, ppOut)
    

  fun psqlite3_stmt_scanstatus_reset(pparg0: NullablePointer[Sqlite3stmt] tag): None =>
    @sqlite3_stmt_scanstatus_reset(pparg0)
    

  fun psqlite3_db_cacheflush(pparg0: NullablePointer[Sqlite3] tag): I32 =>
    @sqlite3_db_cacheflush(pparg0)
    

  fun psqlite3_system_errno(pparg0: NullablePointer[Sqlite3] tag): I32 =>
    @sqlite3_system_errno(pparg0)
    

  fun psqlite3_snapshot_get(pdb: NullablePointer[Sqlite3] tag, pzSchema: String, pppSnapshot: Array[NullablePointer[Sqlite3snapshot]] tag): I32 =>
    @sqlite3_snapshot_get(pdb, pzSchema.cstring(), pppSnapshot)
    

  fun psqlite3_snapshot_open(pdb: NullablePointer[Sqlite3] tag, pzSchema: String, ppSnapshot: NullablePointer[Sqlite3snapshot] tag): I32 =>
    @sqlite3_snapshot_open(pdb, pzSchema.cstring(), ppSnapshot)
    

  fun psqlite3_snapshot_free(pparg0: NullablePointer[Sqlite3snapshot] tag): None =>
    @sqlite3_snapshot_free(pparg0)
    

  fun psqlite3_snapshot_cmp(pp1: NullablePointer[Sqlite3snapshot] tag, pp2: NullablePointer[Sqlite3snapshot] tag): I32 =>
    @sqlite3_snapshot_cmp(pp1, pp2)
    

  fun psqlite3_snapshot_recover(pdb: NullablePointer[Sqlite3] tag, pzDb: String): I32 =>
    @sqlite3_snapshot_recover(pdb, pzDb.cstring())
    

  fun psqlite3_serialize(pdb: NullablePointer[Sqlite3] tag, pzSchema: String, ppiSize: Pointer[I64] tag, pmFlags: U32): String =>
    var pcstring: Pointer[U8] = @sqlite3_serialize(pdb, pzSchema.cstring(), ppiSize, pmFlags)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun psqlite3_deserialize(pdb: NullablePointer[Sqlite3] tag, pzSchema: String, ppData: String, pszDb: I64, pszBuf: I64, pmFlags: U32): I32 =>
    @sqlite3_deserialize(pdb, pzSchema.cstring(), ppData.cstring(), pszDb, pszBuf, pmFlags)
    

  fun psqlite3_rtree_geometry_callback(pdb: NullablePointer[Sqlite3] tag, pzGeom: String, pxGeom: NullablePointer[FUNCTIONTYPE] tag, ppContext: Pointer[None] tag): I32 =>
    @sqlite3_rtree_geometry_callback(pdb, pzGeom.cstring(), pxGeom, ppContext)
    

  fun psqlite3_rtree_query_callback(pdb: NullablePointer[Sqlite3] tag, pzQueryFunc: String, pxQueryFunc: NullablePointer[FUNCTIONTYPE] tag, ppContext: Pointer[None] tag, pxDestructor: NullablePointer[FUNCTIONTYPE] tag): I32 =>
    @sqlite3_rtree_query_callback(pdb, pzQueryFunc.cstring(), pxQueryFunc, ppContext, pxDestructor)
    

