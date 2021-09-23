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

import
  ../Standard/Standard_Transient, ../Standard/Standard_Type

discard "forward decl of AVBufferPool"
discard "forward decl of AVBufferRef"
type
  Media_BufferPool* {.importcpp: "Media_BufferPool",
                     header: "Media_BufferPool.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor
                                                                                      ##
                                                                                      ## prevent
                                                                                      ## copies

  Media_BufferPoolbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Media_BufferPool::get_type_name(@)",
                              header: "Media_BufferPool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Media_BufferPool::get_type_descriptor(@)",
    header: "Media_BufferPool.hxx".}
proc DynamicType*(this: Media_BufferPool): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Media_BufferPool.hxx".}
proc constructMedia_BufferPool*(): Media_BufferPool {.constructor,
    importcpp: "Media_BufferPool(@)", header: "Media_BufferPool.hxx".}
proc destroyMedia_BufferPool*(this: var Media_BufferPool) {.
    importcpp: "#.~Media_BufferPool()", header: "Media_BufferPool.hxx".}
proc Release*(this: var Media_BufferPool) {.importcpp: "Release",
                                        header: "Media_BufferPool.hxx".}
proc Init*(this: var Media_BufferPool; theBufferSize: cint): bool {.importcpp: "Init",
    header: "Media_BufferPool.hxx".}
proc BufferSize*(this: Media_BufferPool): cint {.noSideEffect,
    importcpp: "BufferSize", header: "Media_BufferPool.hxx".}
proc GetBuffer*(this: var Media_BufferPool): ptr AVBufferRef {.importcpp: "GetBuffer",
    header: "Media_BufferPool.hxx".}