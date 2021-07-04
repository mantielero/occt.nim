##  Copyright (c) 2018 OPEN CASCADE SAS
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
  Graphic3d_IndexBuffer

## ! Mutable index buffer.

type
  Graphic3d_MutableIndexBuffer* {.importcpp: "Graphic3d_MutableIndexBuffer",
                                 header: "Graphic3d_MutableIndexBuffer.hxx",
                                 bycopy.} = object of Graphic3d_IndexBuffer ## ! Empty
                                                                       ## constructor.
    ## !< invalidated buffer data range (as byte offsets)

  Graphic3d_MutableIndexBufferbase_type* = Graphic3d_IndexBuffer

proc get_type_name*(): cstring {.importcpp: "Graphic3d_MutableIndexBuffer::get_type_name(@)",
                              header: "Graphic3d_MutableIndexBuffer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_MutableIndexBuffer::get_type_descriptor(@)",
    header: "Graphic3d_MutableIndexBuffer.hxx".}
proc DynamicType*(this: Graphic3d_MutableIndexBuffer): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_MutableIndexBuffer.hxx".}
proc constructGraphic3d_MutableIndexBuffer*(
    theAlloc: handle[NCollection_BaseAllocator]): Graphic3d_MutableIndexBuffer {.
    constructor, importcpp: "Graphic3d_MutableIndexBuffer(@)",
    header: "Graphic3d_MutableIndexBuffer.hxx".}
proc IsMutable*(this: Graphic3d_MutableIndexBuffer): Standard_Boolean {.
    noSideEffect, importcpp: "IsMutable",
    header: "Graphic3d_MutableIndexBuffer.hxx".}
proc InvalidatedRange*(this: Graphic3d_MutableIndexBuffer): Graphic3d_BufferRange {.
    noSideEffect, importcpp: "InvalidatedRange",
    header: "Graphic3d_MutableIndexBuffer.hxx".}
proc Validate*(this: var Graphic3d_MutableIndexBuffer) {.importcpp: "Validate",
    header: "Graphic3d_MutableIndexBuffer.hxx".}
proc Invalidate*(this: var Graphic3d_MutableIndexBuffer) {.importcpp: "Invalidate",
    header: "Graphic3d_MutableIndexBuffer.hxx".}
proc Invalidate*(this: var Graphic3d_MutableIndexBuffer;
                theIndexLower: Standard_Integer; theIndexUpper: Standard_Integer) {.
    importcpp: "Invalidate", header: "Graphic3d_MutableIndexBuffer.hxx".}
proc invalidate*(this: var Graphic3d_MutableIndexBuffer;
                theRange: Graphic3d_BufferRange) {.importcpp: "invalidate",
    header: "Graphic3d_MutableIndexBuffer.hxx".}