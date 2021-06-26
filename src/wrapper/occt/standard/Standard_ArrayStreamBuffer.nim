# /usr/include/opencascade/Standard_ArrayStreamBuffer.hxx --> occt/standard/Standard_ArrayStreamBuffer.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardarraystreambuffer = "/usr/include/opencascade/Standard_ArrayStreamBuffer.hxx"
type
  StandardArrayStreamBuffer* {.importcpp: "Standard_ArrayStreamBuffer",
                              header: headerStandardarraystreambuffer, bycopy.} = object of Streambuf


proc constructStandardArrayStreamBuffer*(theBegin: cstring; theSize: csize_t): StandardArrayStreamBuffer {.
    constructor, importcpp: "Standard_ArrayStreamBuffer(@)",
    header: headerStandardarraystreambuffer.}
proc destroyStandardArrayStreamBuffer*(this: var StandardArrayStreamBuffer) {.
    importcpp: "#.~Standard_ArrayStreamBuffer()",
    header: headerStandardarraystreambuffer.}
proc init*(this: var StandardArrayStreamBuffer; theBegin: cstring; theSize: csize_t) {.
    importcpp: "Init", header: headerStandardarraystreambuffer.}
proc xsgetn*(this: var StandardArrayStreamBuffer; thePtr: cstring;
            theCount: Streamsize): Streamsize {.importcpp: "xsgetn",
    header: headerStandardarraystreambuffer.}