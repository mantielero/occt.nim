# /usr/include/opencascade/Standard_ReadLineBuffer.hxx --> occt/standard/Standard_ReadLineBuffer.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardreadlinebuffer = "/usr/include/opencascade/Standard_ReadLineBuffer.hxx"
type
  StandardReadLineBuffer* {.importcpp: "Standard_ReadLineBuffer",
                           header: headerStandardreadlinebuffer, bycopy.} = object


proc constructStandardReadLineBuffer*(theMaxBufferSizeBytes: csize_t): StandardReadLineBuffer {.
    constructor, importcpp: "Standard_ReadLineBuffer(@)",
    header: headerStandardreadlinebuffer.}
proc destroyStandardReadLineBuffer*(this: var StandardReadLineBuffer) {.
    importcpp: "#.~Standard_ReadLineBuffer()",
    header: headerStandardreadlinebuffer.}
proc clear*(this: var StandardReadLineBuffer) {.importcpp: "Clear",
    header: headerStandardreadlinebuffer.}
proc readLine*[StreamT](this: var StandardReadLineBuffer; theStream: var StreamT;
                       theLineLength: var csize_t): cstring {.importcpp: "ReadLine",
    header: headerStandardreadlinebuffer.}
proc readLine*[StreamT](this: var StandardReadLineBuffer; theStream: var StreamT;
                       theLineLength: var csize_t; theReadData: var int64T): cstring {.
    importcpp: "ReadLine", header: headerStandardreadlinebuffer.}
proc isMultilineMode*(this: StandardReadLineBuffer): bool {.noSideEffect,
    importcpp: "IsMultilineMode", header: headerStandardreadlinebuffer.}
proc toPutGapInMultiline*(this: StandardReadLineBuffer): bool {.noSideEffect,
    importcpp: "ToPutGapInMultiline", header: headerStandardreadlinebuffer.}
proc setMultilineMode*(this: var StandardReadLineBuffer; theMultilineMode: bool;
                      theToPutGap: bool = true) {.importcpp: "SetMultilineMode",
    header: headerStandardreadlinebuffer.}