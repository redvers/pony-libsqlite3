struct Sqlite3


struct FUNCTIONTYPE


struct Sqlite3file
  var ppMethods: NullablePointer[Sqlite3iomethods] = NullablePointer[Sqlite3iomethods].none()

struct Sqlite3iomethods
  var piVersion: I32 = I32(0)
  var pxClose: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxRead: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxWrite: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxTruncate: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxSync: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxFileSize: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxLock: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxUnlock: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxCheckReservedLock: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxFileControl: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxSectorSize: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxDeviceCharacteristics: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxShmMap: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxShmLock: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxShmBarrier: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxShmUnmap: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxFetch: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxUnfetch: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()

struct Sqlite3mutex


struct Sqlite3apiroutines


struct Sqlite3vfs
  var piVersion: I32 = I32(0)
  var pszOsFile: I32 = I32(0)
  var pmxPathname: I32 = I32(0)
  var ppNext: NullablePointer[Sqlite3vfs] = NullablePointer[Sqlite3vfs].none()
  var pzName: Pointer[U8] = Pointer[U8]
  var ppAppData: Pointer[None] = Pointer[None]
  var pxOpen: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxDelete: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxAccess: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxFullPathname: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxDlOpen: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxDlError: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxDlSym: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxDlClose: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxRandomness: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxSleep: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxCurrentTime: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxGetLastError: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxCurrentTimeInt64: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxSetSystemCall: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxGetSystemCall: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxNextSystemCall: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()

struct Sqlite3memmethods
  var pxMalloc: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxFree: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxRealloc: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxSize: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxRoundup: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxInit: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxShutdown: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var ppAppData: Pointer[None] = Pointer[None]

struct Sqlite3stmt


struct Sqlite3value


struct Sqlite3context


struct Sqlite3vtab
  var ppModule: NullablePointer[Sqlite3module] = NullablePointer[Sqlite3module].none()
  var pnRef: I32 = I32(0)
  var pzErrMsg: Pointer[U8] = Pointer[U8]

struct Sqlite3indexinfo
  var pnConstraint: I32 = I32(0)
  var paConstraint: NullablePointer[Sqlite3indexconstraint] = NullablePointer[Sqlite3indexconstraint].none()
  var pnOrderBy: I32 = I32(0)
  var paOrderBy: NullablePointer[Sqlite3indexorderby] = NullablePointer[Sqlite3indexorderby].none()
  var paConstraintUsage: NullablePointer[Sqlite3indexconstraintusage] = NullablePointer[Sqlite3indexconstraintusage].none()
  var pidxNum: I32 = I32(0)
  var pidxStr: Pointer[U8] = Pointer[U8]
  var pneedToFreeIdxStr: I32 = I32(0)
  var porderByConsumed: I32 = I32(0)
  var pestimatedCost: F64 = F64(0)
  var pestimatedRows: I64 = I64(0)
  var pidxFlags: I32 = I32(0)
  var pcolUsed: U64 = U64(0)

struct Sqlite3vtabcursor
  var ppVtab: NullablePointer[Sqlite3vtab] = NullablePointer[Sqlite3vtab].none()

struct Sqlite3module
  var piVersion: I32 = I32(0)
  var pxCreate: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxConnect: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxBestIndex: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxDisconnect: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxDestroy: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxOpen: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxClose: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxFilter: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxNext: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxEof: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxColumn: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxRowid: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxUpdate: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxBegin: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxSync: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxCommit: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxRollback: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxFindFunction: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxRename: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxSavepoint: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxRelease: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxRollbackTo: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxShadowName: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()

struct Sqlite3blob


struct Sqlite3mutexmethods
  var pxMutexInit: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxMutexEnd: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxMutexAlloc: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxMutexFree: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxMutexEnter: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxMutexTry: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxMutexLeave: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxMutexHeld: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxMutexNotheld: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()

struct Sqlite3str


struct Sqlite3pcache


struct Sqlite3pcachepage
  var ppBuf: Pointer[None] = Pointer[None]
  var ppExtra: Pointer[None] = Pointer[None]

struct Sqlite3pcachemethods2
  var piVersion: I32 = I32(0)
  var ppArg: Pointer[None] = Pointer[None]
  var pxInit: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxShutdown: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxCreate: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxCachesize: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxPagecount: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxFetch: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxUnpin: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxRekey: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxTruncate: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxDestroy: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxShrink: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()

struct Sqlite3pcachemethods
  var ppArg: Pointer[None] = Pointer[None]
  var pxInit: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxShutdown: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxCreate: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxCachesize: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxPagecount: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxFetch: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxUnpin: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxRekey: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxTruncate: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxDestroy: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()

struct Sqlite3backup


struct Sqlite3snapshot
  var phidden: Pointer[U8] = Pointer[U8]

struct Sqlite3rtreegeometry
  var ppContext: Pointer[None] = Pointer[None]
  var pnParam: I32 = I32(0)
  var paParam: Pointer[F64] = Pointer[F64]
  var ppUser: Pointer[None] = Pointer[None]
  var pxDelUser: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()

struct Sqlite3rtreequeryinfo
  var ppContext: Pointer[None] = Pointer[None]
  var pnParam: I32 = I32(0)
  var paParam: Pointer[F64] = Pointer[F64]
  var ppUser: Pointer[None] = Pointer[None]
  var pxDelUser: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var paCoord: Pointer[F64] = Pointer[F64]
  var panQueue: Pointer[U32] = Pointer[U32]
  var pnCoord: I32 = I32(0)
  var piLevel: I32 = I32(0)
  var pmxLevel: I32 = I32(0)
  var piRowid: I64 = I64(0)
  var prParentScore: F64 = F64(0)
  var peParentWithin: I32 = I32(0)
  var peWithin: I32 = I32(0)
  var prScore: F64 = F64(0)
  var papSqlParam: Pointer[NullablePointer[Sqlite3value]] = Pointer[NullablePointer[Sqlite3value]]

struct Fts5ExtensionApi
  var piVersion: I32 = I32(0)
  var pxUserData: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxColumnCount: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxRowCount: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxColumnTotalSize: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxTokenize: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxPhraseCount: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxPhraseSize: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxInstCount: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxInst: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxRowid: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxColumnText: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxColumnSize: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxQueryPhrase: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxSetAuxdata: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxGetAuxdata: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxPhraseFirst: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxPhraseNext: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxPhraseFirstColumn: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxPhraseNextColumn: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()

struct Fts5PhraseIter
  var pa: Pointer[U8] = Pointer[U8]
  var pb: Pointer[U8] = Pointer[U8]

struct Fts5tokenizer
  var pxCreate: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxDelete: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxTokenize: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()

struct Fts5api
  var piVersion: I32 = I32(0)
  var pxCreateTokenizer: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxFindTokenizer: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()
  var pxCreateFunction: NullablePointer[FUNCTIONTYPE] = NullablePointer[FUNCTIONTYPE].none()

struct Sqlite3indexconstraint


struct Sqlite3indexorderby


struct Sqlite3indexconstraintusage


