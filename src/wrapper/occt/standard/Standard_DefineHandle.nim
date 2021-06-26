# /usr/include/opencascade/Standard_DefineHandle.hxx --> occt/standard/Standard_DefineHandle.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandarddefinehandle = "/usr/include/opencascade/Standard_DefineHandle.hxx"
discard "forward decl of Standard_Transient"
discard "forward decl of Standard_Persistent"
discard "forward decl of Standard_Type"