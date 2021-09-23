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
  Graphic3d_Buffer

## ! Buffer of vertex attributes.
## ! This class is intended for advanced usage allowing invalidation of entire buffer content or its sub-part.

type
  Graphic3d_AttribBuffer* {.importcpp: "Graphic3d_AttribBuffer",
                           header: "Graphic3d_AttribBuffer.hxx", bycopy.} = object of Graphic3d_Buffer ##
                                                                                                ## !
                                                                                                ## Empty
                                                                                                ## constructor.
    ## !< invalidated buffer data range (as byte offsets)
    ## !< flag indicating the vertex attributes being interleaved
    ## !< flag indicating that data can be invalidated

  Graphic3d_AttribBufferbase_type* = Graphic3d_Buffer

proc get_type_name*(): cstring {.importcpp: "Graphic3d_AttribBuffer::get_type_name(@)",
                              header: "Graphic3d_AttribBuffer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_AttribBuffer::get_type_descriptor(@)",
    header: "Graphic3d_AttribBuffer.hxx".}
proc DynamicType*(this: Graphic3d_AttribBuffer): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_AttribBuffer.hxx".}
proc constructGraphic3d_AttribBuffer*(theAlloc: handle[NCollection_BaseAllocator]): Graphic3d_AttribBuffer {.
    constructor, importcpp: "Graphic3d_AttribBuffer(@)",
    header: "Graphic3d_AttribBuffer.hxx".}
proc Init*(this: var Graphic3d_AttribBuffer; theNbElems: Standard_Integer;
          theAttribs: ptr Graphic3d_Attribute; theNbAttribs: Standard_Integer): bool {.
    importcpp: "Init", header: "Graphic3d_AttribBuffer.hxx".}
proc Init*(this: var Graphic3d_AttribBuffer; theNbElems: Standard_Integer;
          theAttribs: Graphic3d_Array1OfAttribute): bool {.importcpp: "Init",
    header: "Graphic3d_AttribBuffer.hxx".}
proc IsMutable*(this: Graphic3d_AttribBuffer): Standard_Boolean {.noSideEffect,
    importcpp: "IsMutable", header: "Graphic3d_AttribBuffer.hxx".}
proc SetMutable*(this: var Graphic3d_AttribBuffer; theMutable: Standard_Boolean) {.
    importcpp: "SetMutable", header: "Graphic3d_AttribBuffer.hxx".}
proc IsInterleaved*(this: Graphic3d_AttribBuffer): Standard_Boolean {.noSideEffect,
    importcpp: "IsInterleaved", header: "Graphic3d_AttribBuffer.hxx".}
proc SetInterleaved*(this: var Graphic3d_AttribBuffer;
                    theIsInterleaved: Standard_Boolean) {.
    importcpp: "SetInterleaved", header: "Graphic3d_AttribBuffer.hxx".}
proc InvalidatedRange*(this: Graphic3d_AttribBuffer): Graphic3d_BufferRange {.
    noSideEffect, importcpp: "InvalidatedRange",
    header: "Graphic3d_AttribBuffer.hxx".}
proc Validate*(this: var Graphic3d_AttribBuffer) {.importcpp: "Validate",
    header: "Graphic3d_AttribBuffer.hxx".}
proc Invalidate*(this: var Graphic3d_AttribBuffer) {.importcpp: "Invalidate",
    header: "Graphic3d_AttribBuffer.hxx".}
proc Invalidate*(this: var Graphic3d_AttribBuffer;
                theAttributeIndex: Standard_Integer) {.importcpp: "Invalidate",
    header: "Graphic3d_AttribBuffer.hxx".}
proc Invalidate*(this: var Graphic3d_AttribBuffer;
                theAttributeIndex: Standard_Integer;
                theVertexLower: Standard_Integer; theVertexUpper: Standard_Integer) {.
    importcpp: "Invalidate", header: "Graphic3d_AttribBuffer.hxx".}
proc Invalidate*(this: var Graphic3d_AttribBuffer; theVertexLower: Standard_Integer;
                theVertexUpper: Standard_Integer) {.importcpp: "Invalidate",
    header: "Graphic3d_AttribBuffer.hxx".}
proc invalidate*(this: var Graphic3d_AttribBuffer; theRange: Graphic3d_BufferRange) {.
    importcpp: "invalidate", header: "Graphic3d_AttribBuffer.hxx".}