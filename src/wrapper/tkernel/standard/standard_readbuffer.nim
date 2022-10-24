import standard_types

##  Copyright (c) 2017-2019 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement..

## ! Auxiliary tool for buffered reading from input stream within chunks of constant size.



proc constructStandardReadBuffer*(theDataLen: int; theChunkLen: csize_t;
                                 theIsPartialPayload: bool = false): StandardReadBuffer {.
    cdecl, constructor, importcpp: "Standard_ReadBuffer(@)", header: "Standard_ReadBuffer.hxx".}
proc init*(this: var StandardReadBuffer; theDataLen: int; theChunkLen: csize_t;
          theIsPartialPayload: bool = false) {.cdecl, importcpp: "Init",
    header: "Standard_ReadBuffer.hxx".}
proc isDone*(this: StandardReadBuffer): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Standard_ReadBuffer.hxx".}
proc readChunk*[ChunkT; StreamT](this: var StandardReadBuffer; theStream: var StreamT): ptr ChunkT {.
    cdecl, importcpp: "ReadChunk", header: "Standard_ReadBuffer.hxx".}
proc readDataChunk*[StreamT](this: var StandardReadBuffer; theStream: var StreamT): cstring {.
    cdecl, importcpp: "ReadDataChunk", header: "Standard_ReadBuffer.hxx".}
