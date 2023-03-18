#[
The headers can be commented like this:
header.comment(87, 87)

The bindings can be processed like:
binding.insert("Whatever")  #<-- inserts at the beginning
]#
import ../wrapperlib/ed
import std/os
import strformat, strutils, sequtils
import npeg

let folder = "/usr/include/opencascade/"
let prefix = "OSD"
let packageName = "osd"
let c2nimFile = "../opencascade.c2nim"

var 
  name:string
  header:Header
  binding:Binding
  headers:seq[tuple[name:string, header:Header, binding:Binding]]


name = "OSD.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_CachedFileSystem.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Chronometer.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Directory.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_DirectoryIterator.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Disk.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Environment.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Error.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_ErrorList.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_ACCESS_VIOLATION.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_ARRAY_BOUNDS_EXCEEDED.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_CTRL_BREAK.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_FLT_DENORMAL_OPERAND.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_FLT_DIVIDE_BY_ZERO.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_FLT_INEXACT_RESULT.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_FLT_INVALID_OPERATION.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_FLT_OVERFLOW.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_FLT_STACK_CHECK.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_FLT_UNDERFLOW.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_ILLEGAL_INSTRUCTION.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_INT_DIVIDE_BY_ZERO.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_INT_OVERFLOW.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_INVALID_DISPOSITION.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_IN_PAGE_ERROR.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_NONCONTINUABLE_EXCEPTION.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_PRIV_INSTRUCTION.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_STACK_OVERFLOW.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Exception_STATUS_NO_MEMORY.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_File.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_FileIterator.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_FileNode.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_FileSystem.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_FileSystemSelector.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_FromWhere.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Function.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Host.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_KindFile.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_LoadMode.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_LocalFileSystem.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_LockType.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_MAllocHook.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_MemInfo.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_OEMType.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_OSDError.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_OpenFile.hxx"
header = newHeader(folder, name, c2nimFile )
header.replace("::std::ios_base", "std::ios_base")
header.replace("::std::filebuf", "std::filebuf")
header.comment(137,147)
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_OpenMode.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_PThread.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Parallel.hxx"
header = newHeader(folder, name, c2nimFile )
header.comment(214,215)
header.comment(236,237)
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Path.hxx"
header = newHeader(folder, name, c2nimFile )
header.comment(245,245)
header.comment(254,259)
header.comment(268,268)
header.comment(286,286)

binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_PerfMeter.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Process.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Protection.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_SIGBUS.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_SIGHUP.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_SIGILL.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_SIGINT.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_SIGKILL.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_SIGQUIT.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_SIGSEGV.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_SIGSYS.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_SharedLibrary.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Signal.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_SignalMode.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_SingleProtection.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_StreamBuffer.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_SysType.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Thread.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_ThreadFunction.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_ThreadPool.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_Timer.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_WNT.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

name = "OSD_WhoAmI.hxx"
header = newHeader(folder, name, c2nimFile )
binding = header.genBindings #(clean = false)
#binding.ignore = true
headers &= (name, header, binding)
binding.save

