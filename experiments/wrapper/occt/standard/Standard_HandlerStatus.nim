# /usr/include/opencascade/Standard_HandlerStatus.hxx --> occt/standard/Standard_HandlerStatus.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardhandlerstatus = "/usr/include/opencascade/Standard_HandlerStatus.hxx"
type
  StandardHandlerStatus* {.size: sizeof(cint), importcpp: "Standard_HandlerStatus",
                          header: headerStandardhandlerstatus.} = enum
    StandardHandlerVoid, StandardHandlerJumped, StandardHandlerProcessed

