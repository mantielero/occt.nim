# /usr/include/opencascade/Standard_PErrorHandler.hxx --> occt/standard/Standard_PErrorHandler.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardperrorhandler = "/usr/include/opencascade/Standard_PErrorHandler.hxx"
discard "forward decl of Standard_ErrorHandler"
type
  StandardPErrorHandler* = ptr StandardErrorHandler
