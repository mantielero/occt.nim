import ../standard/standard_types
import ../ncollection/ncollection_types
import graphic3d_types





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



proc newGraphic3dAttribBuffer*(theAlloc: Handle[NCollectionBaseAllocator]): Graphic3dAttribBuffer {.
    cdecl, constructor, importcpp: "Graphic3d_AttribBuffer(@)", header: "Graphic3d_AttribBuffer.hxx".}
proc init*(this: var Graphic3dAttribBuffer; theNbElems: cint;
          theAttribs: ptr Graphic3dAttribute; theNbAttribs: cint): bool {.cdecl,
    importcpp: "Init", header: "Graphic3d_AttribBuffer.hxx".}
proc init*(this: var Graphic3dAttribBuffer; theNbElems: cint;
          theAttribs: Graphic3dArray1OfAttribute): bool {.cdecl, importcpp: "Init",
    header: "Graphic3d_AttribBuffer.hxx".}
proc isMutable*(this: Graphic3dAttribBuffer): bool {.noSideEffect, cdecl,
    importcpp: "IsMutable", header: "Graphic3d_AttribBuffer.hxx".}
proc setMutable*(this: var Graphic3dAttribBuffer; theMutable: bool) {.cdecl,
    importcpp: "SetMutable", header: "Graphic3d_AttribBuffer.hxx".}
proc isInterleaved*(this: Graphic3dAttribBuffer): bool {.noSideEffect, cdecl,
    importcpp: "IsInterleaved", header: "Graphic3d_AttribBuffer.hxx".}
proc setInterleaved*(this: var Graphic3dAttribBuffer; theIsInterleaved: bool) {.cdecl,
    importcpp: "SetInterleaved", header: "Graphic3d_AttribBuffer.hxx".}
proc invalidatedRange*(this: Graphic3dAttribBuffer): Graphic3dBufferRange {.
    noSideEffect, cdecl, importcpp: "InvalidatedRange", header: "Graphic3d_AttribBuffer.hxx".}
proc validate*(this: var Graphic3dAttribBuffer) {.cdecl, importcpp: "Validate",
    header: "Graphic3d_AttribBuffer.hxx".}
proc invalidate*(this: var Graphic3dAttribBuffer) {.cdecl, importcpp: "Invalidate",
    header: "Graphic3d_AttribBuffer.hxx".}
proc invalidate*(this: var Graphic3dAttribBuffer; theAttributeIndex: cint) {.cdecl,
    importcpp: "Invalidate", header: "Graphic3d_AttribBuffer.hxx".}
proc invalidate*(this: var Graphic3dAttribBuffer; theAttributeIndex: cint;
                theVertexLower: cint; theVertexUpper: cint) {.cdecl,
    importcpp: "Invalidate", header: "Graphic3d_AttribBuffer.hxx".}
proc invalidate*(this: var Graphic3dAttribBuffer; theVertexLower: cint;
                theVertexUpper: cint) {.cdecl, importcpp: "Invalidate", header: "Graphic3d_AttribBuffer.hxx".}
proc invalidate*(this: var Graphic3dAttribBuffer; theRange: Graphic3dBufferRange) {.
    cdecl, importcpp: "invalidate", header: "Graphic3d_AttribBuffer.hxx".}


