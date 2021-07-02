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

## ! Buffer of vertex attributes.
## ! This class is intended for advanced usage allowing invalidation of entire buffer content or its sub-part.

type
  Graphic3dAttribBuffer* {.importcpp: "Graphic3d_AttribBuffer",
                          header: "Graphic3d_AttribBuffer.hxx", bycopy.} = object of Graphic3dBuffer ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor.
    ## !< invalidated buffer data range (as byte offsets)
    ## !< flag indicating the vertex attributes being interleaved
    ## !< flag indicating that data can be invalidated

  Graphic3dAttribBufferbaseType* = Graphic3dBuffer

proc getTypeName*(): cstring {.importcpp: "Graphic3d_AttribBuffer::get_type_name(@)",
                            header: "Graphic3d_AttribBuffer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_AttribBuffer::get_type_descriptor(@)",
    header: "Graphic3d_AttribBuffer.hxx".}
proc dynamicType*(this: Graphic3dAttribBuffer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_AttribBuffer.hxx".}
proc constructGraphic3dAttribBuffer*(theAlloc: Handle[NCollectionBaseAllocator]): Graphic3dAttribBuffer {.
    constructor, importcpp: "Graphic3d_AttribBuffer(@)",
    header: "Graphic3d_AttribBuffer.hxx".}
proc init*(this: var Graphic3dAttribBuffer; theNbElems: StandardInteger;
          theAttribs: ptr Graphic3dAttribute; theNbAttribs: StandardInteger): bool {.
    importcpp: "Init", header: "Graphic3d_AttribBuffer.hxx".}
proc init*(this: var Graphic3dAttribBuffer; theNbElems: StandardInteger;
          theAttribs: Graphic3dArray1OfAttribute): bool {.importcpp: "Init",
    header: "Graphic3d_AttribBuffer.hxx".}
proc isMutable*(this: Graphic3dAttribBuffer): StandardBoolean {.noSideEffect,
    importcpp: "IsMutable", header: "Graphic3d_AttribBuffer.hxx".}
proc setMutable*(this: var Graphic3dAttribBuffer; theMutable: StandardBoolean) {.
    importcpp: "SetMutable", header: "Graphic3d_AttribBuffer.hxx".}
proc isInterleaved*(this: Graphic3dAttribBuffer): StandardBoolean {.noSideEffect,
    importcpp: "IsInterleaved", header: "Graphic3d_AttribBuffer.hxx".}
proc setInterleaved*(this: var Graphic3dAttribBuffer;
                    theIsInterleaved: StandardBoolean) {.
    importcpp: "SetInterleaved", header: "Graphic3d_AttribBuffer.hxx".}
proc invalidatedRange*(this: Graphic3dAttribBuffer): Graphic3dBufferRange {.
    noSideEffect, importcpp: "InvalidatedRange",
    header: "Graphic3d_AttribBuffer.hxx".}
proc validate*(this: var Graphic3dAttribBuffer) {.importcpp: "Validate",
    header: "Graphic3d_AttribBuffer.hxx".}
proc invalidate*(this: var Graphic3dAttribBuffer) {.importcpp: "Invalidate",
    header: "Graphic3d_AttribBuffer.hxx".}
proc invalidate*(this: var Graphic3dAttribBuffer; theAttributeIndex: StandardInteger) {.
    importcpp: "Invalidate", header: "Graphic3d_AttribBuffer.hxx".}
proc invalidate*(this: var Graphic3dAttribBuffer;
                theAttributeIndex: StandardInteger;
                theVertexLower: StandardInteger; theVertexUpper: StandardInteger) {.
    importcpp: "Invalidate", header: "Graphic3d_AttribBuffer.hxx".}
proc invalidate*(this: var Graphic3dAttribBuffer; theVertexLower: StandardInteger;
                theVertexUpper: StandardInteger) {.importcpp: "Invalidate",
    header: "Graphic3d_AttribBuffer.hxx".}
proc invalidate*(this: var Graphic3dAttribBuffer; theRange: Graphic3dBufferRange) {.
    importcpp: "invalidate", header: "Graphic3d_AttribBuffer.hxx".}

