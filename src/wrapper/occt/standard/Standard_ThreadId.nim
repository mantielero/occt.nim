# /usr/include/opencascade/Standard_ThreadId.hxx --> occt/standard/Standard_ThreadId.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardthreadid = "/usr/include/opencascade/Standard_ThreadId.hxx"
type
  StandardThreadId* = StandardSize