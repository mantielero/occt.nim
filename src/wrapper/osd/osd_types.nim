import ../standard/standard_types
import ../ncollection/ncollection_types
import cppstl

type
  SharedPtr* = CppSharedPtr
  IStream* = Standard_IStream

type
  Osd* {.importcpp: "OSD", header: "OSD.hxx", bycopy.} = object 

  OSD_Chronometer* {.importcpp: "OSD_Chronometer", header: "OSD_Chronometer.hxx",
                    bycopy, pure, inheritable.} = object 

  OSD_DirectoryIterator* {.importcpp: "OSD_DirectoryIterator",
                          header: "OSD_DirectoryIterator.hxx", bycopy.} = object 

  OSD_Disk* {.importcpp: "OSD_Disk", header: "OSD_Disk.hxx", bycopy.} = object 

  OSD_Environment* {.importcpp: "OSD_Environment", header: "OSD_Environment.hxx",
                    bycopy.} = object 

  OSD_Error* {.importcpp: "OSD_Error", header: "OSD_Error.hxx", bycopy.} = object 

  OSD_Exception* {.importcpp: "OSD_Exception", header: "OSD_Exception.hxx", bycopy.} = object 

  HandleOSD_Exception* = Handle[OSD_Exception]


  OSD_ExceptionACCESS_VIOLATION* {.importcpp: "OSD_Exception_ACCESS_VIOLATION", header: "OSD_Exception_ACCESS_VIOLATION.hxx", bycopy.} = object 

  HandleOSD_ExceptionACCESS_VIOLATION* = Handle[OSD_ExceptionACCESS_VIOLATION]

  OSD_ExceptionARRAY_BOUNDS_EXCEEDED* {.importcpp: "OSD_Exception_ARRAY_BOUNDS_EXCEEDED", header: "OSD_Exception_ARRAY_BOUNDS_EXCEEDED.hxx", bycopy.} = object 

  HandleOSD_ExceptionARRAY_BOUNDS_EXCEEDED* = Handle[
      OSD_ExceptionARRAY_BOUNDS_EXCEEDED]

  OSD_ExceptionCTRL_BREAK* {.importcpp: "HandleOSD_Exception_CTRL_BREAK", header: "HandleOSD_Exception_CTRL_BREAK.hxx", bycopy.} = object 

  HandleOSD_ExceptionCTRL_BREAK* = Handle[OSD_ExceptionCTRL_BREAK]



  OSD_ExceptionFLT_DENORMAL_OPERAND* {.importcpp: "OSD_Exception_FLT_DENORMAL_OPERAND", header: "OSD_Exception_FLT_DENORMAL_OPERAND.hxx", bycopy.} = object 


  HandleOSD_ExceptionFLT_DENORMAL_OPERAND* = Handle[
      OSD_ExceptionFLT_DENORMAL_OPERAND]


  OSD_ExceptionFLT_DIVIDE_BY_ZERO* {.importcpp: "OSD_Exception_FLT_DIVIDE_BY_ZERO", header: "OSD_Exception_FLT_DIVIDE_BY_ZERO.hxx", bycopy.} = object 

  HandleOSD_ExceptionFLT_DIVIDE_BY_ZERO* = Handle[OSD_ExceptionFLT_DIVIDE_BY_ZERO]


  OSD_ExceptionFLT_INEXACT_RESULT* {.importcpp: "OSD_Exception_FLT_INEXACT_RESULT", header: "OSD_Exception_FLT_INEXACT_RESULT.hxx", bycopy.} = object 

  HandleOSD_ExceptionFLT_INEXACT_RESULT* = Handle[OSD_ExceptionFLT_INEXACT_RESULT]


  OSD_ExceptionFLT_INVALID_OPERATION* {.importcpp: "OSD_Exception_FLT_INVALID_OPERATION", header: "OSD_Exception_FLT_INVALID_OPERATION.hxx", bycopy.} = object 

  HandleOSD_ExceptionFLT_INVALID_OPERATION* = Handle[
      OSD_ExceptionFLT_INVALID_OPERATION]




  OSD_ExceptionFLT_OVERFLOW* {.importcpp: "OSD_Exception_FLT_OVERFLOW", header: "OSD_Exception_FLT_OVERFLOW.hxx", bycopy.} = object 

  HandleOSD_ExceptionFLT_OVERFLOW* = Handle[OSD_ExceptionFLT_OVERFLOW]

  OSD_ExceptionFLT_STACK_CHECK* {.importcpp: "OSD_Exception_FLT_STACK_CHECK", header: "OSD_Exception_FLT_STACK_CHECK.hxx", bycopy.} = object 

  HandleOSD_ExceptionFLT_STACK_CHECK* = Handle[OSD_ExceptionFLT_STACK_CHECK]

  OSD_ExceptionFLT_UNDERFLOW* {.importcpp: "OSD_Exception_FLT_UNDERFLOW", header: "OSD_Exception_FLT_UNDERFLOW.hxx", bycopy.} = object 

  HandleOSD_ExceptionFLT_UNDERFLOW* = Handle[OSD_ExceptionFLT_UNDERFLOW]

  OSD_ExceptionILLEGAL_INSTRUCTION* {.importcpp: "OSD_Exception_ILLEGAL_INSTRUCTION", header: "OSD_Exception_ILLEGAL_INSTRUCTION.hxx", bycopy.} = object 

  HandleOSD_ExceptionILLEGAL_INSTRUCTION* = Handle[
      OSD_ExceptionILLEGAL_INSTRUCTION]

  OSD_ExceptionIN_PAGE_ERROR* {.importcpp: "OSD_Exception_IN_PAGE_ERROR", header: "OSD_Exception_IN_PAGE_ERROR.hxx", bycopy.} = object 

  HandleOSD_ExceptionIN_PAGE_ERROR* = Handle[OSD_ExceptionIN_PAGE_ERROR]

  OSD_ExceptionINT_DIVIDE_BY_ZERO* {.importcpp: "OSD_Exception_INT_DIVIDE_BY_ZERO", header: "OSD_Exception_INT_DIVIDE_BY_ZERO.hxx", bycopy.} = object 

  HandleOSD_ExceptionINT_DIVIDE_BY_ZERO* = Handle[OSD_ExceptionINT_DIVIDE_BY_ZERO]

  OSD_ExceptionINT_OVERFLOW* {.importcpp: "OSD_Exception_INT_OVERFLOW", header: "OSD_Exception_INT_OVERFLOW.hxx", bycopy.} = object 

  HandleOSD_ExceptionINT_OVERFLOW* = Handle[OSD_ExceptionINT_OVERFLOW]

  OSD_ExceptionINVALID_DISPOSITION* {.importcpp: "OSD_Exception_INVALID_DISPOSITION", header: "OSD_Exception_INVALID_DISPOSITION.hxx", bycopy.} = object 

  HandleOSD_ExceptionINVALID_DISPOSITION* = Handle[
      OSD_ExceptionINVALID_DISPOSITION]

  OSD_ExceptionNONCONTINUABLE_EXCEPTION* {.importcpp: "OSD_Exception_NONCONTINUABLE_EXCEPTION", header: "OSD_Exception_NONCONTINUABLE_EXCEPTION.hxx", bycopy.} = object 

  HandleOSD_ExceptionNONCONTINUABLE_EXCEPTION* = Handle[
      OSD_ExceptionNONCONTINUABLE_EXCEPTION]

  OSD_ExceptionPRIV_INSTRUCTION* {.importcpp: "OSD_Exception_PRIV_INSTRUCTION", header: "OSD_Exception_PRIV_INSTRUCTION.hxx", bycopy.} = object 

  HandleOSD_ExceptionPRIV_INSTRUCTION* = Handle[OSD_ExceptionPRIV_INSTRUCTION]

  OSD_ExceptionSTACK_OVERFLOW* {.importcpp: "OSD_Exception_STACK_OVERFLOW", header: "OSD_Exception_STACK_OVERFLOW.hxx", bycopy.} = object 

  HandleOSD_ExceptionSTACK_OVERFLOW* = Handle[OSD_ExceptionSTACK_OVERFLOW]

  OSD_ExceptionSTATUS_NO_MEMORY* {.importcpp: "OSD_Exception_STATUS_NO_MEMORY", header: "OSD_Exception_STATUS_NO_MEMORY.hxx", bycopy.} = object 

  HandleOSD_ExceptionSTATUS_NO_MEMORY* = Handle[OSD_ExceptionSTATUS_NO_MEMORY]

  OSD_FileIterator* {.importcpp: "OSD_FileIterator",
                     header: "OSD_FileIterator.hxx", bycopy.} = object 

  OSD_FileNode* {.importcpp: "OSD_FileNode", header: "OSD_FileNode.hxx", 
                  bycopy, pure, inheritable.} = object 

  OSD_File* {.importcpp: "OSD_File", header: "OSD_File.hxx", bycopy.} = object of OSD_FileNode 

  OSD_Directory* {.importcpp: "OSD_Directory", header: "OSD_Directory.hxx", bycopy.} = object of OSD_FileNode 

  OSD_FileSystem* {.importcpp: "OSD_FileSystem", header: "OSD_FileSystem.hxx", bycopy.} = object of StandardTransient 

  OSD_CachedFileSystem* {.importcpp: "OSD_CachedFileSystem",
                         header: "OSD_CachedFileSystem.hxx", bycopy.} = object of OSD_FileSystem 

  OSD_FileSystemSelector* {.importcpp: "OSD_FileSystemSelector",
                           header: "OSD_FileSystemSelector.hxx", bycopy.} = object of OSD_FileSystem 

  OSD_FromWhere* {.size: sizeof(cint), importcpp: "OSD_FromWhere",
                  header: "OSD_FromWhere.hxx".} = enum
    OSD_FromBeginning, OSD_FromHere, OSD_FromEnd

  OSD_Function* = proc (): cint {.cdecl, varargs.}

  OSD_Host* {.importcpp: "OSD_Host", header: "OSD_Host.hxx", bycopy.} = object 

  OSD_KindFile* {.size: sizeof(cint), importcpp: "OSD_KindFile",
                 header: "OSD_KindFile.hxx".} = enum
    oSD_FILE, 
    oSD_DIRECTORY, 
    oSD_LINK, 
    oSD_SOCKET, 
    oSD_UNKNOWN

  OSD_LoadMode* {.size: sizeof(cint), importcpp: "OSD_LoadMode",
                 header: "OSD_LoadMode.hxx".} = enum
    OSD_RTLD_LAZY, OSD_RTLD_NOW

  OSD_LocalFileSystem* {.importcpp: "OSD_LocalFileSystem",
                        header: "OSD_LocalFileSystem.hxx", bycopy.} = object of OSD_FileSystem 

  OSD_LockType* {.size: sizeof(cint), importcpp: "OSD_LockType",
                 header: "OSD_LockType.hxx".} = enum
    OSD_NoLock, OSD_ReadLock, OSD_WriteLock, OSD_ExclusiveLock

  OSD_MAllocHook* {.importcpp: "OSD_MAllocHook", header: "OSD_MAllocHook.hxx", bycopy.} = object 

  OSD_MAllocHookCallback* {.importcpp: "OSD_MAllocHook::Callback",
                           header: "OSD_MAllocHook.hxx", bycopy,
                           pure,inheritable.} = object 

  OSD_MAllocHookLogFileHandler* {.importcpp: "OSD_MAllocHook::LogFileHandler",
                                 header: "OSD_MAllocHook.hxx", bycopy.} = object of OSD_MAllocHookCallback 

  OSD_MAllocHookCollectBySize* {.importcpp: "OSD_MAllocHook::CollectBySize",
                                header: "OSD_MAllocHook.hxx", bycopy.} = object of OSD_MAllocHookCallback 
    myMutex* {.importc: "myMutex".}: StandardMutex 
    myArray* {.importc: "myArray".}: ptr OSD_MAllocHookCollectBySizeNumbers 
    myTotalLeftSize* {.importc: "myTotalLeftSize".}: PtrdiffT 
    myTotalPeakSize* {.importc: "myTotalPeakSize".}: csize_t 
    myBreakSize* {.importc: "myBreakSize".}: csize_t 
    myBreakPeak* {.importc: "myBreakPeak".}: csize_t 

  OSD_MAllocHookCollectBySizeNumbers* {.importcpp: "OSD_MAllocHook::CollectBySize::Numbers",
                                       header: "OSD_MAllocHook.hxx", bycopy.} = object
    nbAlloc* {.importc: "nbAlloc".}: cint
    nbFree* {.importc: "nbFree".}: cint
    nbLeftPeak* {.importc: "nbLeftPeak".}: cint

  OSD_MemInfo* {.importcpp: "OSD_MemInfo", header: "OSD_MemInfo.hxx", bycopy.} = object 

  OSD_MemInfoCounter* {.size: sizeof(cint), importcpp: "OSD_MemInfo::Counter",
                       header: "OSD_MemInfo.hxx".} = enum
    MemPrivate = 0,             
    MemVirtual,               
    MemWorkingSet,            
    MemWorkingSetPeak,        
    MemSwapUsage,             
    MemSwapUsagePeak,         
    MemHeapUsage,             
    MemCounterNB              

  OSD_OEMType* {.size: sizeof(cint), importcpp: "OSD_OEMType",
                header: "OSD_OEMType.hxx".} = enum
    OSD_Unavailable, OSD_SUN, OSD_DEC, OSD_SGI, OSD_NEC, OSD_MAC, OSD_PC, OSD_HP,
    OSD_IBM, OSD_VAX, OSD_LIN, OSD_AIX

  OSD_OpenMode* {.size: sizeof(cint), importcpp: "OSD_OpenMode",
                 header: "OSD_OpenMode.hxx".} = enum
    OSD_ReadOnly, OSD_WriteOnly, OSD_ReadWrite

  OSD_OSDError* {.importcpp: "OSD_OSDError", header: "OSD_OSDError.hxx", bycopy.} = object 

  HandleOSD_OSDError* = Handle[OSD_OSDError]

  OSD_Parallel* {.importcpp: "OSD_Parallel", header: "OSD_Parallel.hxx", bycopy.} = object 

  OSD_Path* {.importcpp: "OSD_Path", header: "OSD_Path.hxx", bycopy.} = object 

  OSD_PerfMeter* {.importcpp: "OSD_PerfMeter", header: "OSD_PerfMeter.hxx", bycopy.} = object 

  OSD_Process* {.importcpp: "OSD_Process", header: "OSD_Process.hxx", bycopy.} = object 

  OSD_Protection* {.importcpp: "OSD_Protection", header: "OSD_Protection.hxx", bycopy.} = object 

  OSD_SharedLibrary* {.importcpp: "OSD_SharedLibrary",
                      header: "OSD_SharedLibrary.hxx", bycopy.} = object 

  OSD_SIGBUS* {.importcpp: "OSD_SIGBUS", header: "OSD_SIGBUS.hxx", bycopy.} = object 

  HandleOSD_SIGBUS* = Handle[OSD_SIGBUS]


  OSD_SIGHUP* {.importcpp: "OSD_SIGHUP", header: "OSD_SIGHUP.hxx", bycopy.} = object 

  HandleOSD_SIGHUP* = Handle[OSD_SIGHUP]


  OSD_SIGILL* {.importcpp: "OSD_SIGILL", header: "OSD_SIGILL.hxx", bycopy.} = object 

  HandleOSD_SIGILL* = Handle[OSD_SIGILL]


  OSD_SIGINT* {.importcpp: "OSD_SIGINT", header: "OSD_SIGINT.hxx", bycopy.} = object 

  HandleOSD_SIGINT* = Handle[OSD_SIGINT]


  OSD_SIGKILL* {.importcpp: "OSD_SIGKILL", header: "OSD_SIGKILL.hxx", bycopy.} = object 

  HandleOSD_SIGKILL* = Handle[OSD_SIGKILL]


  OSD_SIGNAL* {.importcpp: "OSD_SIGNAL", header: "OSD_SIGNAL.hxx", bycopy.} = object 

  HandleOSD_Signal* = Handle[OSD_SIGNAL]

  OSD_SignalMode* {.size: sizeof(cint), importcpp: "OSD_SignalMode",
                   header: "OSD_SignalMode.hxx".} = enum
    OSD_SignalModeAsIs,       
    OSD_SignalModeSet,        
    OSD_SignalModeSetUnhandled, 
    OSD_SignalModeUnset       

  OSD_SIGQUIT* {.importcpp: "OSD_SIGQUIT", header: "OSD_SIGQUIT.hxx", bycopy.} = object 

  HandleOSD_SIGQUIT* = Handle[OSD_SIGQUIT]

  OSD_SIGSEGV* {.importcpp: "OSD_SIGSEGV", header: "OSD_SIGSEGV.hxx", bycopy.} = object 

  HandleOSD_SIGSEGV* = Handle[OSD_SIGSEGV]

  OSD_SIGSYS* {.importcpp: "OSD_SIGSYS", header: "OSD_SIGSYS.hxx", bycopy.} = object 

  HandleOSD_SIGSYS* = Handle[OSD_SIGSYS]

  OSD_SingleProtection* {.size: sizeof(cint), importcpp: "OSD_SingleProtection",
                         header: "OSD_SingleProtection.hxx".} = enum
    OSD_None, OSD_R, OSD_W, OSD_RW, OSD_X, OSD_RX, OSD_WX, OSD_RWX, OSD_D, OSD_RD, OSD_WD,
    OSD_RWD, OSD_XD, OSD_RXD, OSD_WXD, OSD_RWXD

  OSD_StreamBuffer*[T] {.importcpp: "OSD_StreamBuffer<\'0>",
                        header: "OSD_StreamBuffer.hxx", bycopy.} = object #of T 

  OSD_IStreamBuffer* = OSD_StreamBuffer[Standard_Istream]

  OSD_OStreamBuffer* = OSD_StreamBuffer[Standard_Ostream]


  #OSD_IOStreamBuffer* = OSD_StreamBuffer[Standard_IOstream]

  OSD_SysType* {.size: sizeof(cint), importcpp: "OSD_SysType",
                header: "OSD_SysType.hxx".} = enum
    oSD_SysType_Unknown, 
    oSD_Default, 
    oSD_UnixBSD, 
    oSD_UnixSystemV, 
    oSD_VMS, 
    oSD_OS2, 
    oSD_OSF,
    oSD_MacOs, 
    oSD_Taligent, 
    oSD_WindowsNT, 
    oSD_LinuxREDHAT, 
    oSD_Aix

  OSD_Thread* {.importcpp: "OSD_Thread", header: "OSD_Thread.hxx", bycopy,
                pure, inheritable.} = object 

  OSD_ThreadFunction* = proc (data: pointer): pointer {.cdecl.}

  OSD_ThreadPool* {.importcpp: "OSD_ThreadPool", header: "OSD_ThreadPool.hxx", bycopy.} = object of StandardTransient 

  OSD_ThreadPoolLauncher* {.importcpp: "OSD_ThreadPool::Launcher",
                           header: "OSD_ThreadPool.hxx", bycopy.} = object 

  OSD_Timer* {.importcpp: "OSD_Timer", header: "OSD_Timer.hxx", bycopy.} = object of OSD_Chronometer 

  OSD_WhoAmI* {.size: sizeof(cint), importcpp: "OSD_WhoAmI", header: "OSD_WhoAmI.hxx".} = enum
    OSD_WDirectory, OSD_WDirectoryIterator, OSD_WEnvironment, OSD_WFile,
    OSD_WFileNode, OSD_WFileIterator, OSD_WPath, OSD_WProcess, OSD_WProtection,
    OSD_WHost, OSD_WDisk, OSD_WChronometer, OSD_WTimer, OSD_WPackage,
    OSD_WEnvironmentIterator

  # WINDOWS THING...
  Dir_Response* {.size: sizeof(cint), importcpp: "DIR_RESPONSE",
                 header: "OSD_WNT.hxx".} = enum
    DIR_ABORT, DIR_RETRY, DIR_IGNORE

  # File_Ace* {.importcpp: "FILE_ACE", header: "OSD_WNT.hxx", bycopy.} = object
  #   header* {.importc: "header".}: Ace_Header
  #   dwMask* {.importc: "dwMask".}: Dword
  #   pSID* {.importc: "pSID".}: Psid

  # Pfile_Ace* = ptr File_Ace

  # Move_Dir_Proc* = proc (a1: Lpcwstr; a2: Lpcwstr) {.cdecl.}

  # Copy_Dir_Proc* = proc (a1: Lpcwstr; a2: Lpcwstr) {.cdecl.}

  # Delete_Dir_Proc* = proc (a1: Lpcwstr) {.cdecl.}

  # Response_Dir_Proc* = proc (a1: Lpcwstr): Dir_Response {.cdecl.}


