##  Created by: Kirill GAVRILOV
##  Copyright (c) 2019 OPEN CASCADE SAS
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
##  commercial license or contractual agreement.

discard "forward decl of AVBufferPool"
discard "forward decl of AVBufferRef"
type
  MediaBufferPool* {.importcpp: "Media_BufferPool", header: "Media_BufferPool.hxx",
                    bycopy.} = object of StandardTransient ## ! Empty constructor
                                                      ##  prevent copies

  MediaBufferPoolbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Media_BufferPool::get_type_name(@)",
                            header: "Media_BufferPool.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Media_BufferPool::get_type_descriptor(@)",
    header: "Media_BufferPool.hxx".}
proc dynamicType*(this: MediaBufferPool): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Media_BufferPool.hxx".}
proc constructMediaBufferPool*(): MediaBufferPool {.constructor,
    importcpp: "Media_BufferPool(@)", header: "Media_BufferPool.hxx".}
proc destroyMediaBufferPool*(this: var MediaBufferPool) {.
    importcpp: "#.~Media_BufferPool()", header: "Media_BufferPool.hxx".}
proc release*(this: var MediaBufferPool) {.importcpp: "Release",
                                       header: "Media_BufferPool.hxx".}
proc init*(this: var MediaBufferPool; theBufferSize: cint): bool {.importcpp: "Init",
    header: "Media_BufferPool.hxx".}
proc bufferSize*(this: MediaBufferPool): cint {.noSideEffect,
    importcpp: "BufferSize", header: "Media_BufferPool.hxx".}
proc getBuffer*(this: var MediaBufferPool): ptr AVBufferRef {.importcpp: "GetBuffer",
    header: "Media_BufferPool.hxx".}
