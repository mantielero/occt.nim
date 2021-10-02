when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

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

type
  Standard_ReadBuffer* {.importcpp: "Standard_ReadBuffer",
                        header: "Standard_ReadBuffer.hxx", bycopy.} = object ## !
                                                                        ## Constructor with
                                                                        ## initialization.
                                                                        ## ! Read next chunk.
                                                                        ## ! @return pointer to the chunk or NULL on error / end of reading buffer
    ## !< data cache
    ## !< current position within the buffer
    ## !< end of the buffer
    ## !< length of entire data to read
    ## !< amount of data already processed
    ## !< length of single chunk that caller would like to read (e.g. iterator increment)
    ## !< number of cached chunks
    ## !< effective length of the buffer to be read at once (multiple of chunk length)


proc constructStandard_ReadBuffer*(theDataLen: int64_t; theChunkLen: csize_t;
                                  theIsPartialPayload: bool = false): Standard_ReadBuffer {.
    cdecl, constructor, importcpp: "Standard_ReadBuffer(@)", dynlib: tkernel.}
proc Init*(this: var Standard_ReadBuffer; theDataLen: int64_t; theChunkLen: csize_t;
          theIsPartialPayload: bool = false) {.cdecl, importcpp: "Init",
    dynlib: tkernel.}
proc IsDone*(this: Standard_ReadBuffer): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkernel.}
proc ReadChunk*[Chunk_T; Stream_T](this: var Standard_ReadBuffer;
                                 theStream: var Stream_T): ptr Chunk_T {.cdecl,
    importcpp: "ReadChunk", dynlib: tkernel.}
proc ReadDataChunk*[Stream_T](this: var Standard_ReadBuffer; theStream: var Stream_T): cstring {.
    cdecl, importcpp: "ReadDataChunk", dynlib: tkernel.}