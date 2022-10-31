import ../../tkernel/standard/standard_types
import ../../tkernel/ncollection/ncollection_types
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

## ! Mutable index buffer.



proc newGraphic3dMutableIndexBuffer*(theAlloc: Handle[NCollectionBaseAllocator]): Graphic3dMutableIndexBuffer {.
    cdecl, constructor, importcpp: "Graphic3d_MutableIndexBuffer(@)", header: "Graphic3d_MutableIndexBuffer.hxx".}
proc isMutable*(this: Graphic3dMutableIndexBuffer): bool {.noSideEffect, cdecl,
    importcpp: "IsMutable", header: "Graphic3d_MutableIndexBuffer.hxx".}
proc invalidatedRange*(this: Graphic3dMutableIndexBuffer): Graphic3dBufferRange {.
    noSideEffect, cdecl, importcpp: "InvalidatedRange", header: "Graphic3d_MutableIndexBuffer.hxx".}
proc validate*(this: var Graphic3dMutableIndexBuffer) {.cdecl, importcpp: "Validate",
    header: "Graphic3d_MutableIndexBuffer.hxx".}
proc invalidate*(this: var Graphic3dMutableIndexBuffer) {.cdecl,
    importcpp: "Invalidate", header: "Graphic3d_MutableIndexBuffer.hxx".}
proc invalidate*(this: var Graphic3dMutableIndexBuffer; theIndexLower: cint;
                theIndexUpper: cint) {.cdecl, importcpp: "Invalidate", header: "Graphic3d_MutableIndexBuffer.hxx".}
proc invalidate*(this: var Graphic3dMutableIndexBuffer;
                theRange: Graphic3dBufferRange) {.cdecl, importcpp: "invalidate",
    header: "Graphic3d_MutableIndexBuffer.hxx".}

