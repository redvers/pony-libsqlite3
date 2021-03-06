use @sqlite3_libversion[Pointer[U8]]()
use @sqlite3_sourceid[Pointer[U8]]()
use @sqlite3_libversion_number[I32]()
use @sqlite3_compileoption_used[I32](pzOptName: Pointer[U8] tag)
use @sqlite3_compileoption_get[Pointer[U8]](pN: I32)
use @sqlite3_threadsafe[I32]()
use @sqlite3_close[I32](pparg0: NullablePointer[Sqlite3] tag)
use @sqlite3_close_v2[I32](pparg0: NullablePointer[Sqlite3] tag)
use @sqlite3_exec[I32](pparg0: NullablePointer[Sqlite3] tag, psql: Pointer[U8] tag, pcallback: NullablePointer[FUNCTIONTYPE] tag, pparg3: Pointer[None] tag, perrmsg: Pointer[Pointer[U8]] tag)
use @sqlite3_initialize[I32]()
use @sqlite3_shutdown[I32]()
use @sqlite3_os_init[I32]()
use @sqlite3_os_end[I32]()
use @sqlite3_extended_result_codes[I32](pparg0: NullablePointer[Sqlite3] tag, ponoff: I32)
use @sqlite3_last_insert_rowid[I64](pparg0: NullablePointer[Sqlite3] tag)
use @sqlite3_set_last_insert_rowid[None](pparg0: NullablePointer[Sqlite3] tag, pparg1: I64)
use @sqlite3_changes[I32](pparg0: NullablePointer[Sqlite3] tag)
use @sqlite3_total_changes[I32](pparg0: NullablePointer[Sqlite3] tag)
use @sqlite3_interrupt[None](pparg0: NullablePointer[Sqlite3] tag)
use @sqlite3_complete[I32](psql: Pointer[U8] tag)
use @sqlite3_complete16[I32](psql: Pointer[None] tag)
use @sqlite3_busy_handler[I32](pparg0: NullablePointer[Sqlite3] tag, pparg1: NullablePointer[FUNCTIONTYPE] tag, pparg2: Pointer[None] tag)
use @sqlite3_busy_timeout[I32](pparg0: NullablePointer[Sqlite3] tag, pms: I32)
use @sqlite3_get_table[I32](pdb: NullablePointer[Sqlite3] tag, pzSql: Pointer[U8] tag, ppazResult: Pointer[Pointer[U8]] tag, ppnRow: Pointer[I32] tag, ppnColumn: Pointer[I32] tag, ppzErrmsg: Pointer[Pointer[U8]] tag)
use @sqlite3_free_table[None](presult: Pointer[Pointer[U8]] tag)
use @sqlite3_malloc[Pointer[None]](pparg0: I32)
use @sqlite3_malloc64[Pointer[None]](pparg0: U64)
use @sqlite3_realloc[Pointer[None]](pparg0: Pointer[None] tag, pparg1: I32)
use @sqlite3_realloc64[Pointer[None]](pparg0: Pointer[None] tag, pparg1: U64)
use @sqlite3_free[None](pparg0: Pointer[None] tag)
use @sqlite3_msize[U64](pparg0: Pointer[None] tag)
use @sqlite3_memory_used[I64]()
use @sqlite3_memory_highwater[I64](presetFlag: I32)
use @sqlite3_randomness[None](pN: I32, pP: Pointer[None] tag)
use @sqlite3_set_authorizer[I32](pparg0: NullablePointer[Sqlite3] tag, pxAuth: NullablePointer[FUNCTIONTYPE] tag, ppUserData: Pointer[None] tag)
use @sqlite3_trace[Pointer[None]](pparg0: NullablePointer[Sqlite3] tag, pxTrace: NullablePointer[FUNCTIONTYPE] tag, pparg2: Pointer[None] tag)
use @sqlite3_profile[Pointer[None]](pparg0: NullablePointer[Sqlite3] tag, pxProfile: NullablePointer[FUNCTIONTYPE] tag, pparg2: Pointer[None] tag)
use @sqlite3_trace_v2[I32](pparg0: NullablePointer[Sqlite3] tag, puMask: U32, pxCallback: NullablePointer[FUNCTIONTYPE] tag, ppCtx: Pointer[None] tag)
use @sqlite3_progress_handler[None](pparg0: NullablePointer[Sqlite3] tag, pparg1: I32, pparg2: NullablePointer[FUNCTIONTYPE] tag, pparg3: Pointer[None] tag)
use @sqlite3_open[I32](pfilename: Pointer[U8] tag, pppDb: Array[NullablePointer[Sqlite3]] tag)
use @sqlite3_open16[I32](pfilename: Pointer[None] tag, pppDb: Array[NullablePointer[Sqlite3]] tag)
use @sqlite3_open_v2[I32](pfilename: Pointer[U8] tag, pppDb: Array[NullablePointer[Sqlite3]] tag, pflags: I32, pzVfs: Pointer[U8] tag)
use @sqlite3_uri_parameter[Pointer[U8]](pzFilename: Pointer[U8] tag, pzParam: Pointer[U8] tag)
use @sqlite3_uri_boolean[I32](pzFile: Pointer[U8] tag, pzParam: Pointer[U8] tag, pbDefault: I32)
use @sqlite3_uri_int64[I64](pparg0: Pointer[U8] tag, pparg1: Pointer[U8] tag, pparg2: I64)
use @sqlite3_uri_key[Pointer[U8]](pzFilename: Pointer[U8] tag, pN: I32)
use @sqlite3_filename_database[Pointer[U8]](pparg0: Pointer[U8] tag)
use @sqlite3_filename_journal[Pointer[U8]](pparg0: Pointer[U8] tag)
use @sqlite3_filename_wal[Pointer[U8]](pparg0: Pointer[U8] tag)
use @sqlite3_database_file_object[NullablePointer[Sqlite3file]](pparg0: Pointer[U8] tag)
use @sqlite3_create_filename[Pointer[U8]](pzDatabase: Pointer[U8] tag, pzJournal: Pointer[U8] tag, pzWal: Pointer[U8] tag, pnParam: I32, pazParam: Pointer[Pointer[U8]] tag)
use @sqlite3_free_filename[None](pparg0: Pointer[U8] tag)
use @sqlite3_errcode[I32](pdb: NullablePointer[Sqlite3] tag)
use @sqlite3_extended_errcode[I32](pdb: NullablePointer[Sqlite3] tag)
use @sqlite3_errmsg[Pointer[U8]](pparg0: NullablePointer[Sqlite3] tag)
use @sqlite3_errmsg16[Pointer[None]](pparg0: NullablePointer[Sqlite3] tag)
use @sqlite3_errstr[Pointer[U8]](pparg0: I32)
use @sqlite3_limit[I32](pparg0: NullablePointer[Sqlite3] tag, pid: I32, pnewVal: I32)
use @sqlite3_prepare[I32](pdb: NullablePointer[Sqlite3] tag, pzSql: Pointer[U8] tag, pnByte: I32, pppStmt: Array[NullablePointer[Sqlite3stmt]] tag, ppzTail: Pointer[Pointer[U8]] tag)
use @sqlite3_prepare_v2[I32](pdb: NullablePointer[Sqlite3] tag, pzSql: Pointer[U8] tag, pnByte: I32, pppStmt: Array[NullablePointer[Sqlite3stmt]] tag, ppzTail: Pointer[Pointer[U8]] tag)
use @sqlite3_prepare_v3[I32](pdb: NullablePointer[Sqlite3] tag, pzSql: Pointer[U8] tag, pnByte: I32, pprepFlags: U32, pppStmt: Array[NullablePointer[Sqlite3stmt]] tag, ppzTail: Pointer[Pointer[U8]] tag)
use @sqlite3_prepare16[I32](pdb: NullablePointer[Sqlite3] tag, pzSql: Pointer[None] tag, pnByte: I32, pppStmt: Array[NullablePointer[Sqlite3stmt]] tag, ppzTail: NullablePointer[Pointer[None]] tag)
use @sqlite3_prepare16_v2[I32](pdb: NullablePointer[Sqlite3] tag, pzSql: Pointer[None] tag, pnByte: I32, pppStmt: Array[NullablePointer[Sqlite3stmt]] tag, ppzTail: NullablePointer[Pointer[None]] tag)
use @sqlite3_prepare16_v3[I32](pdb: NullablePointer[Sqlite3] tag, pzSql: Pointer[None] tag, pnByte: I32, pprepFlags: U32, pppStmt: Array[NullablePointer[Sqlite3stmt]] tag, ppzTail: NullablePointer[Pointer[None]] tag)
use @sqlite3_sql[Pointer[U8]](ppStmt: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_expanded_sql[Pointer[U8]](ppStmt: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_normalized_sql[Pointer[U8]](ppStmt: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_stmt_readonly[I32](ppStmt: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_stmt_isexplain[I32](ppStmt: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_stmt_busy[I32](pparg0: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_bind_blob[I32](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: Pointer[None] tag, pn: I32, pparg4: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_bind_blob64[I32](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: Pointer[None] tag, pparg3: U64, pparg4: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_bind_double[I32](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: F64)
use @sqlite3_bind_int[I32](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: I32)
use @sqlite3_bind_int64[I32](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: I64)
use @sqlite3_bind_null[I32](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32)
use @sqlite3_bind_text[I32](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: Pointer[U8] tag, pparg3: I32, pparg4: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_bind_text16[I32](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: Pointer[None] tag, pparg3: I32, pparg4: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_bind_text64[I32](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: Pointer[U8] tag, pparg3: U64, pparg4: NullablePointer[FUNCTIONTYPE] tag, pencoding: U8)
use @sqlite3_bind_value[I32](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: NullablePointer[Sqlite3value] tag)
use @sqlite3_bind_pointer[I32](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: Pointer[None] tag, pparg3: Pointer[U8] tag, pparg4: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_bind_zeroblob[I32](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pn: I32)
use @sqlite3_bind_zeroblob64[I32](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32, pparg2: U64)
use @sqlite3_bind_parameter_count[I32](pparg0: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_bind_parameter_name[Pointer[U8]](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32)
use @sqlite3_bind_parameter_index[I32](pparg0: NullablePointer[Sqlite3stmt] tag, pzName: Pointer[U8] tag)
use @sqlite3_clear_bindings[I32](pparg0: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_column_count[I32](ppStmt: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_column_name[Pointer[U8]](pparg0: NullablePointer[Sqlite3stmt] tag, pN: I32)
use @sqlite3_column_name16[Pointer[None]](pparg0: NullablePointer[Sqlite3stmt] tag, pN: I32)
use @sqlite3_column_database_name[Pointer[U8]](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32)
use @sqlite3_column_database_name16[Pointer[None]](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32)
use @sqlite3_column_table_name[Pointer[U8]](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32)
use @sqlite3_column_table_name16[Pointer[None]](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32)
use @sqlite3_column_origin_name[Pointer[U8]](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32)
use @sqlite3_column_origin_name16[Pointer[None]](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32)
use @sqlite3_column_decltype[Pointer[U8]](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32)
use @sqlite3_column_decltype16[Pointer[None]](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: I32)
use @sqlite3_step[I32](pparg0: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_data_count[I32](ppStmt: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_column_blob[Pointer[None]](pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32)
use @sqlite3_column_double[F64](pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32)
use @sqlite3_column_int[I32](pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32)
use @sqlite3_column_int64[I64](pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32)
use @sqlite3_column_text[Pointer[U8]](pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32)
use @sqlite3_column_text16[Pointer[None]](pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32)
use @sqlite3_column_value[NullablePointer[Sqlite3value]](pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32)
use @sqlite3_column_bytes[I32](pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32)
use @sqlite3_column_bytes16[I32](pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32)
use @sqlite3_column_type[I32](pparg0: NullablePointer[Sqlite3stmt] tag, piCol: I32)
use @sqlite3_finalize[I32](ppStmt: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_reset[I32](ppStmt: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_create_function[I32](pdb: NullablePointer[Sqlite3] tag, pzFunctionName: Pointer[U8] tag, pnArg: I32, peTextRep: I32, ppApp: Pointer[None] tag, pxFunc: NullablePointer[FUNCTIONTYPE] tag, pxStep: NullablePointer[FUNCTIONTYPE] tag, pxFinal: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_create_function16[I32](pdb: NullablePointer[Sqlite3] tag, pzFunctionName: Pointer[None] tag, pnArg: I32, peTextRep: I32, ppApp: Pointer[None] tag, pxFunc: NullablePointer[FUNCTIONTYPE] tag, pxStep: NullablePointer[FUNCTIONTYPE] tag, pxFinal: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_create_function_v2[I32](pdb: NullablePointer[Sqlite3] tag, pzFunctionName: Pointer[U8] tag, pnArg: I32, peTextRep: I32, ppApp: Pointer[None] tag, pxFunc: NullablePointer[FUNCTIONTYPE] tag, pxStep: NullablePointer[FUNCTIONTYPE] tag, pxFinal: NullablePointer[FUNCTIONTYPE] tag, pxDestroy: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_create_window_function[I32](pdb: NullablePointer[Sqlite3] tag, pzFunctionName: Pointer[U8] tag, pnArg: I32, peTextRep: I32, ppApp: Pointer[None] tag, pxStep: NullablePointer[FUNCTIONTYPE] tag, pxFinal: NullablePointer[FUNCTIONTYPE] tag, pxValue: NullablePointer[FUNCTIONTYPE] tag, pxInverse: NullablePointer[FUNCTIONTYPE] tag, pxDestroy: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_aggregate_count[I32](pparg0: NullablePointer[Sqlite3context] tag)
use @sqlite3_expired[I32](pparg0: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_transfer_bindings[I32](pparg0: NullablePointer[Sqlite3stmt] tag, pparg1: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_global_recover[I32]()
use @sqlite3_thread_cleanup[None]()
use @sqlite3_memory_alarm[I32](pparg0: NullablePointer[FUNCTIONTYPE] tag, pparg1: Pointer[None] tag, pparg2: I64)
use @sqlite3_value_blob[Pointer[None]](pparg0: NullablePointer[Sqlite3value] tag)
use @sqlite3_value_double[F64](pparg0: NullablePointer[Sqlite3value] tag)
use @sqlite3_value_int[I32](pparg0: NullablePointer[Sqlite3value] tag)
use @sqlite3_value_int64[I64](pparg0: NullablePointer[Sqlite3value] tag)
use @sqlite3_value_pointer[Pointer[None]](pparg0: NullablePointer[Sqlite3value] tag, pparg1: Pointer[U8] tag)
use @sqlite3_value_text[Pointer[U8]](pparg0: NullablePointer[Sqlite3value] tag)
use @sqlite3_value_text16[Pointer[None]](pparg0: NullablePointer[Sqlite3value] tag)
use @sqlite3_value_text16le[Pointer[None]](pparg0: NullablePointer[Sqlite3value] tag)
use @sqlite3_value_text16be[Pointer[None]](pparg0: NullablePointer[Sqlite3value] tag)
use @sqlite3_value_bytes[I32](pparg0: NullablePointer[Sqlite3value] tag)
use @sqlite3_value_bytes16[I32](pparg0: NullablePointer[Sqlite3value] tag)
use @sqlite3_value_type[I32](pparg0: NullablePointer[Sqlite3value] tag)
use @sqlite3_value_numeric_type[I32](pparg0: NullablePointer[Sqlite3value] tag)
use @sqlite3_value_nochange[I32](pparg0: NullablePointer[Sqlite3value] tag)
use @sqlite3_value_frombind[I32](pparg0: NullablePointer[Sqlite3value] tag)
use @sqlite3_value_subtype[U32](pparg0: NullablePointer[Sqlite3value] tag)
use @sqlite3_value_dup[NullablePointer[Sqlite3value]](pparg0: NullablePointer[Sqlite3value] tag)
use @sqlite3_value_free[None](pparg0: NullablePointer[Sqlite3value] tag)
use @sqlite3_aggregate_context[Pointer[None]](pparg0: NullablePointer[Sqlite3context] tag, pnBytes: I32)
use @sqlite3_user_data[Pointer[None]](pparg0: NullablePointer[Sqlite3context] tag)
use @sqlite3_context_db_handle[NullablePointer[Sqlite3]](pparg0: NullablePointer[Sqlite3context] tag)
use @sqlite3_get_auxdata[Pointer[None]](pparg0: NullablePointer[Sqlite3context] tag, pN: I32)
use @sqlite3_set_auxdata[None](pparg0: NullablePointer[Sqlite3context] tag, pN: I32, pparg2: Pointer[None] tag, pparg3: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_result_blob[None](pparg0: NullablePointer[Sqlite3context] tag, pparg1: Pointer[None] tag, pparg2: I32, pparg3: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_result_blob64[None](pparg0: NullablePointer[Sqlite3context] tag, pparg1: Pointer[None] tag, pparg2: U64, pparg3: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_result_double[None](pparg0: NullablePointer[Sqlite3context] tag, pparg1: F64)
use @sqlite3_result_error[None](pparg0: NullablePointer[Sqlite3context] tag, pparg1: Pointer[U8] tag, pparg2: I32)
use @sqlite3_result_error16[None](pparg0: NullablePointer[Sqlite3context] tag, pparg1: Pointer[None] tag, pparg2: I32)
use @sqlite3_result_error_toobig[None](pparg0: NullablePointer[Sqlite3context] tag)
use @sqlite3_result_error_nomem[None](pparg0: NullablePointer[Sqlite3context] tag)
use @sqlite3_result_error_code[None](pparg0: NullablePointer[Sqlite3context] tag, pparg1: I32)
use @sqlite3_result_int[None](pparg0: NullablePointer[Sqlite3context] tag, pparg1: I32)
use @sqlite3_result_int64[None](pparg0: NullablePointer[Sqlite3context] tag, pparg1: I64)
use @sqlite3_result_null[None](pparg0: NullablePointer[Sqlite3context] tag)
use @sqlite3_result_text[None](pparg0: NullablePointer[Sqlite3context] tag, pparg1: Pointer[U8] tag, pparg2: I32, pparg3: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_result_text64[None](pparg0: NullablePointer[Sqlite3context] tag, pparg1: Pointer[U8] tag, pparg2: U64, pparg3: NullablePointer[FUNCTIONTYPE] tag, pencoding: U8)
use @sqlite3_result_text16[None](pparg0: NullablePointer[Sqlite3context] tag, pparg1: Pointer[None] tag, pparg2: I32, pparg3: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_result_text16le[None](pparg0: NullablePointer[Sqlite3context] tag, pparg1: Pointer[None] tag, pparg2: I32, pparg3: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_result_text16be[None](pparg0: NullablePointer[Sqlite3context] tag, pparg1: Pointer[None] tag, pparg2: I32, pparg3: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_result_value[None](pparg0: NullablePointer[Sqlite3context] tag, pparg1: NullablePointer[Sqlite3value] tag)
use @sqlite3_result_pointer[None](pparg0: NullablePointer[Sqlite3context] tag, pparg1: Pointer[None] tag, pparg2: Pointer[U8] tag, pparg3: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_result_zeroblob[None](pparg0: NullablePointer[Sqlite3context] tag, pn: I32)
use @sqlite3_result_zeroblob64[I32](pparg0: NullablePointer[Sqlite3context] tag, pn: U64)
use @sqlite3_result_subtype[None](pparg0: NullablePointer[Sqlite3context] tag, pparg1: U32)
use @sqlite3_create_collation[I32](pparg0: NullablePointer[Sqlite3] tag, pzName: Pointer[U8] tag, peTextRep: I32, ppArg: Pointer[None] tag, pxCompare: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_create_collation_v2[I32](pparg0: NullablePointer[Sqlite3] tag, pzName: Pointer[U8] tag, peTextRep: I32, ppArg: Pointer[None] tag, pxCompare: NullablePointer[FUNCTIONTYPE] tag, pxDestroy: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_create_collation16[I32](pparg0: NullablePointer[Sqlite3] tag, pzName: Pointer[None] tag, peTextRep: I32, ppArg: Pointer[None] tag, pxCompare: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_collation_needed[I32](pparg0: NullablePointer[Sqlite3] tag, pparg1: Pointer[None] tag, pparg2: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_collation_needed16[I32](pparg0: NullablePointer[Sqlite3] tag, pparg1: Pointer[None] tag, pparg2: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_sleep[I32](pparg0: I32)
use @sqlite3_win32_set_directory[I32](ptype: U64, pzValue: Pointer[None] tag)
use @sqlite3_win32_set_directory8[I32](ptype: U64, pzValue: Pointer[U8] tag)
use @sqlite3_win32_set_directory16[I32](ptype: U64, pzValue: Pointer[None] tag)
use @sqlite3_get_autocommit[I32](pparg0: NullablePointer[Sqlite3] tag)
use @sqlite3_db_handle[NullablePointer[Sqlite3]](pparg0: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_db_filename[Pointer[U8]](pdb: NullablePointer[Sqlite3] tag, pzDbName: Pointer[U8] tag)
use @sqlite3_db_readonly[I32](pdb: NullablePointer[Sqlite3] tag, pzDbName: Pointer[U8] tag)
use @sqlite3_txn_state[I32](pparg0: NullablePointer[Sqlite3] tag, pzSchema: Pointer[U8] tag)
use @sqlite3_next_stmt[NullablePointer[Sqlite3stmt]](ppDb: NullablePointer[Sqlite3] tag, ppStmt: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_commit_hook[Pointer[None]](pparg0: NullablePointer[Sqlite3] tag, pparg1: NullablePointer[FUNCTIONTYPE] tag, pparg2: Pointer[None] tag)
use @sqlite3_rollback_hook[Pointer[None]](pparg0: NullablePointer[Sqlite3] tag, pparg1: NullablePointer[FUNCTIONTYPE] tag, pparg2: Pointer[None] tag)
use @sqlite3_update_hook[Pointer[None]](pparg0: NullablePointer[Sqlite3] tag, pparg1: NullablePointer[FUNCTIONTYPE] tag, pparg2: Pointer[None] tag)
use @sqlite3_enable_shared_cache[I32](pparg0: I32)
use @sqlite3_release_memory[I32](pparg0: I32)
use @sqlite3_db_release_memory[I32](pparg0: NullablePointer[Sqlite3] tag)
use @sqlite3_soft_heap_limit64[I64](pN: I64)
use @sqlite3_hard_heap_limit64[I64](pN: I64)
use @sqlite3_soft_heap_limit[None](pN: I32)
use @sqlite3_table_column_metadata[I32](pdb: NullablePointer[Sqlite3] tag, pzDbName: Pointer[U8] tag, pzTableName: Pointer[U8] tag, pzColumnName: Pointer[U8] tag, ppzDataType: Pointer[Pointer[U8]] tag, ppzCollSeq: Pointer[Pointer[U8]] tag, ppNotNull: Pointer[I32] tag, ppPrimaryKey: Pointer[I32] tag, ppAutoinc: Pointer[I32] tag)
use @sqlite3_load_extension[I32](pdb: NullablePointer[Sqlite3] tag, pzFile: Pointer[U8] tag, pzProc: Pointer[U8] tag, ppzErrMsg: Pointer[Pointer[U8]] tag)
use @sqlite3_enable_load_extension[I32](pdb: NullablePointer[Sqlite3] tag, ponoff: I32)
use @sqlite3_auto_extension[I32](pxEntryPoint: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_cancel_auto_extension[I32](pxEntryPoint: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_reset_auto_extension[None]()
use @sqlite3_create_module[I32](pdb: NullablePointer[Sqlite3] tag, pzName: Pointer[U8] tag, pp: NullablePointer[Sqlite3module] tag, ppClientData: Pointer[None] tag)
use @sqlite3_create_module_v2[I32](pdb: NullablePointer[Sqlite3] tag, pzName: Pointer[U8] tag, pp: NullablePointer[Sqlite3module] tag, ppClientData: Pointer[None] tag, pxDestroy: NullablePointer[FUNCTIONTYPE] tag)
use @sqlite3_drop_modules[I32](pdb: NullablePointer[Sqlite3] tag, pazKeep: Pointer[Pointer[U8]] tag)
use @sqlite3_declare_vtab[I32](pparg0: NullablePointer[Sqlite3] tag, pzSQL: Pointer[U8] tag)
use @sqlite3_overload_function[I32](pparg0: NullablePointer[Sqlite3] tag, pzFuncName: Pointer[U8] tag, pnArg: I32)
use @sqlite3_blob_open[I32](pparg0: NullablePointer[Sqlite3] tag, pzDb: Pointer[U8] tag, pzTable: Pointer[U8] tag, pzColumn: Pointer[U8] tag, piRow: I64, pflags: I32, pppBlob: Array[NullablePointer[Sqlite3blob]] tag)
use @sqlite3_blob_reopen[I32](pparg0: NullablePointer[Sqlite3blob] tag, pparg1: I64)
use @sqlite3_blob_close[I32](pparg0: NullablePointer[Sqlite3blob] tag)
use @sqlite3_blob_bytes[I32](pparg0: NullablePointer[Sqlite3blob] tag)
use @sqlite3_blob_read[I32](pparg0: NullablePointer[Sqlite3blob] tag, pZ: Pointer[None] tag, pN: I32, piOffset: I32)
use @sqlite3_blob_write[I32](pparg0: NullablePointer[Sqlite3blob] tag, pz: Pointer[None] tag, pn: I32, piOffset: I32)
use @sqlite3_vfs_find[NullablePointer[Sqlite3vfs]](pzVfsName: Pointer[U8] tag)
use @sqlite3_vfs_register[I32](pparg0: NullablePointer[Sqlite3vfs] tag, pmakeDflt: I32)
use @sqlite3_vfs_unregister[I32](pparg0: NullablePointer[Sqlite3vfs] tag)
use @sqlite3_mutex_alloc[NullablePointer[Sqlite3mutex]](pparg0: I32)
use @sqlite3_mutex_free[None](pparg0: NullablePointer[Sqlite3mutex] tag)
use @sqlite3_mutex_enter[None](pparg0: NullablePointer[Sqlite3mutex] tag)
use @sqlite3_mutex_try[I32](pparg0: NullablePointer[Sqlite3mutex] tag)
use @sqlite3_mutex_leave[None](pparg0: NullablePointer[Sqlite3mutex] tag)
use @sqlite3_mutex_held[I32](pparg0: NullablePointer[Sqlite3mutex] tag)
use @sqlite3_mutex_notheld[I32](pparg0: NullablePointer[Sqlite3mutex] tag)
use @sqlite3_db_mutex[NullablePointer[Sqlite3mutex]](pparg0: NullablePointer[Sqlite3] tag)
use @sqlite3_file_control[I32](pparg0: NullablePointer[Sqlite3] tag, pzDbName: Pointer[U8] tag, pop: I32, pparg3: Pointer[None] tag)
use @sqlite3_keyword_count[I32]()
use @sqlite3_keyword_name[I32](pparg0: I32, pparg1: Pointer[Pointer[U8]] tag, pparg2: Pointer[I32] tag)
use @sqlite3_keyword_check[I32](pparg0: Pointer[U8] tag, pparg1: I32)
use @sqlite3_str_new[NullablePointer[Sqlite3str]](pparg0: NullablePointer[Sqlite3] tag)
use @sqlite3_str_finish[Pointer[U8]](pparg0: NullablePointer[Sqlite3str] tag)
use @sqlite3_str_append[None](pparg0: NullablePointer[Sqlite3str] tag, pzIn: Pointer[U8] tag, pN: I32)
use @sqlite3_str_appendall[None](pparg0: NullablePointer[Sqlite3str] tag, pzIn: Pointer[U8] tag)
use @sqlite3_str_appendchar[None](pparg0: NullablePointer[Sqlite3str] tag, pN: I32, pC: U8)
use @sqlite3_str_reset[None](pparg0: NullablePointer[Sqlite3str] tag)
use @sqlite3_str_errcode[I32](pparg0: NullablePointer[Sqlite3str] tag)
use @sqlite3_str_length[I32](pparg0: NullablePointer[Sqlite3str] tag)
use @sqlite3_str_value[Pointer[U8]](pparg0: NullablePointer[Sqlite3str] tag)
use @sqlite3_status[I32](pop: I32, ppCurrent: Pointer[I32] tag, ppHighwater: Pointer[I32] tag, presetFlag: I32)
use @sqlite3_status64[I32](pop: I32, ppCurrent: Pointer[I64] tag, ppHighwater: Pointer[I64] tag, presetFlag: I32)
use @sqlite3_db_status[I32](pparg0: NullablePointer[Sqlite3] tag, pop: I32, ppCur: Pointer[I32] tag, ppHiwtr: Pointer[I32] tag, presetFlg: I32)
use @sqlite3_stmt_status[I32](pparg0: NullablePointer[Sqlite3stmt] tag, pop: I32, presetFlg: I32)
use @sqlite3_backup_init[NullablePointer[Sqlite3backup]](ppDest: NullablePointer[Sqlite3] tag, pzDestName: Pointer[U8] tag, ppSource: NullablePointer[Sqlite3] tag, pzSourceName: Pointer[U8] tag)
use @sqlite3_backup_step[I32](pp: NullablePointer[Sqlite3backup] tag, pnPage: I32)
use @sqlite3_backup_finish[I32](pp: NullablePointer[Sqlite3backup] tag)
use @sqlite3_backup_remaining[I32](pp: NullablePointer[Sqlite3backup] tag)
use @sqlite3_backup_pagecount[I32](pp: NullablePointer[Sqlite3backup] tag)
use @sqlite3_unlock_notify[I32](ppBlocked: NullablePointer[Sqlite3] tag, pxNotify: NullablePointer[FUNCTIONTYPE] tag, ppNotifyArg: Pointer[None] tag)
use @sqlite3_stricmp[I32](pparg0: Pointer[U8] tag, pparg1: Pointer[U8] tag)
use @sqlite3_strnicmp[I32](pparg0: Pointer[U8] tag, pparg1: Pointer[U8] tag, pparg2: I32)
use @sqlite3_strglob[I32](pzGlob: Pointer[U8] tag, pzStr: Pointer[U8] tag)
use @sqlite3_strlike[I32](pzGlob: Pointer[U8] tag, pzStr: Pointer[U8] tag, pcEsc: U32)
use @sqlite3_wal_hook[Pointer[None]](pparg0: NullablePointer[Sqlite3] tag, pparg1: NullablePointer[FUNCTIONTYPE] tag, pparg2: Pointer[None] tag)
use @sqlite3_wal_autocheckpoint[I32](pdb: NullablePointer[Sqlite3] tag, pN: I32)
use @sqlite3_wal_checkpoint[I32](pdb: NullablePointer[Sqlite3] tag, pzDb: Pointer[U8] tag)
use @sqlite3_wal_checkpoint_v2[I32](pdb: NullablePointer[Sqlite3] tag, pzDb: Pointer[U8] tag, peMode: I32, ppnLog: Pointer[I32] tag, ppnCkpt: Pointer[I32] tag)
use @sqlite3_vtab_on_conflict[I32](pparg0: NullablePointer[Sqlite3] tag)
use @sqlite3_vtab_nochange[I32](pparg0: NullablePointer[Sqlite3context] tag)
use @sqlite3_vtab_collation[Pointer[U8]](pparg0: NullablePointer[Sqlite3indexinfo] tag, pparg1: I32)
use @sqlite3_stmt_scanstatus[I32](ppStmt: NullablePointer[Sqlite3stmt] tag, pidx: I32, piScanStatusOp: I32, ppOut: Pointer[None] tag)
use @sqlite3_stmt_scanstatus_reset[None](pparg0: NullablePointer[Sqlite3stmt] tag)
use @sqlite3_db_cacheflush[I32](pparg0: NullablePointer[Sqlite3] tag)
use @sqlite3_system_errno[I32](pparg0: NullablePointer[Sqlite3] tag)
use @sqlite3_snapshot_get[I32](pdb: NullablePointer[Sqlite3] tag, pzSchema: Pointer[U8] tag, pppSnapshot: Array[NullablePointer[Sqlite3snapshot]] tag)
use @sqlite3_snapshot_open[I32](pdb: NullablePointer[Sqlite3] tag, pzSchema: Pointer[U8] tag, ppSnapshot: NullablePointer[Sqlite3snapshot] tag)
use @sqlite3_snapshot_free[None](pparg0: NullablePointer[Sqlite3snapshot] tag)
use @sqlite3_snapshot_cmp[I32](pp1: NullablePointer[Sqlite3snapshot] tag, pp2: NullablePointer[Sqlite3snapshot] tag)
use @sqlite3_snapshot_recover[I32](pdb: NullablePointer[Sqlite3] tag, pzDb: Pointer[U8] tag)
use @sqlite3_serialize[Pointer[U8]](pdb: NullablePointer[Sqlite3] tag, pzSchema: Pointer[U8] tag, ppiSize: Pointer[I64] tag, pmFlags: U32)
use @sqlite3_deserialize[I32](pdb: NullablePointer[Sqlite3] tag, pzSchema: Pointer[U8] tag, ppData: Pointer[U8] tag, pszDb: I64, pszBuf: I64, pmFlags: U32)
use @sqlite3_rtree_geometry_callback[I32](pdb: NullablePointer[Sqlite3] tag, pzGeom: Pointer[U8] tag, pxGeom: NullablePointer[FUNCTIONTYPE] tag, ppContext: Pointer[None] tag)
use @sqlite3_rtree_query_callback[I32](pdb: NullablePointer[Sqlite3] tag, pzQueryFunc: Pointer[U8] tag, pxQueryFunc: NullablePointer[FUNCTIONTYPE] tag, ppContext: Pointer[None] tag, pxDestructor: NullablePointer[FUNCTIONTYPE] tag)
