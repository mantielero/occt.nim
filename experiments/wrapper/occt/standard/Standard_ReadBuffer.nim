# /usr/include/opencascade/Standard_ReadBuffer.hxx --> occt/standard/Standard_ReadBuffer.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardreadbuffer = "/usr/include/opencascade/Standard_ReadBuffer.hxx"
type
  StandardReadBuffer* {.importcpp: "Standard_ReadBuffer",
                       header: headerStandardreadbuffer, bycopy.} = object


proc constructStandardReadBuffer*(theDataLen: int64T; theChunkLen: csize_t;
                                 theIsPartialPayload: bool = false): StandardReadBuffer {.
    constructor, importcpp: "Standard_ReadBuffer(@)",
    header: headerStandardreadbuffer.}
proc init*(this: var StandardReadBuffer; theDataLen: int64T; theChunkLen: csize_t;
          theIsPartialPayload: bool = false) {.importcpp: "Init",
    header: headerStandardreadbuffer.}
proc isDone*(this: StandardReadBuffer): bool {.noSideEffect, importcpp: "IsDone",
    header: headerStandardreadbuffer.}
proc readChunk*[ChunkT; StreamT](this: var StandardReadBuffer; theStream: var StreamT): ptr ChunkT {.
    importcpp: "ReadChunk", header: headerStandardreadbuffer.}
proc readDataChunk*[StreamT](this: var StandardReadBuffer; theStream: var StreamT): cstring {.
    importcpp: "ReadDataChunk", header: headerStandardreadbuffer.}