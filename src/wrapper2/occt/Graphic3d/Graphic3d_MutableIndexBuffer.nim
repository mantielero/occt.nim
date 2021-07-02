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

type
  Graphic3dMutableIndexBuffer* {.importcpp: "Graphic3d_MutableIndexBuffer",
                                header: "Graphic3d_MutableIndexBuffer.hxx", bycopy.} = object of Graphic3dIndexBuffer ##
                                                                                                               ## !
                                                                                                               ## Empty
                                                                                                               ## constructor.
    ## !< invalidated buffer data range (as byte offsets)

  Graphic3dMutableIndexBufferbaseType* = Graphic3dIndexBuffer

proc getTypeName*(): cstring {.importcpp: "Graphic3d_MutableIndexBuffer::get_type_name(@)",
                            header: "Graphic3d_MutableIndexBuffer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_MutableIndexBuffer::get_type_descriptor(@)",
    header: "Graphic3d_MutableIndexBuffer.hxx".}
proc dynamicType*(this: Graphic3dMutableIndexBuffer): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_MutableIndexBuffer.hxx".}
proc constructGraphic3dMutableIndexBuffer*(
    theAlloc: Handle[NCollectionBaseAllocator]): Graphic3dMutableIndexBuffer {.
    constructor, importcpp: "Graphic3d_MutableIndexBuffer(@)",
    header: "Graphic3d_MutableIndexBuffer.hxx".}
proc isMutable*(this: Graphic3dMutableIndexBuffer): StandardBoolean {.noSideEffect,
    importcpp: "IsMutable", header: "Graphic3d_MutableIndexBuffer.hxx".}
proc invalidatedRange*(this: Graphic3dMutableIndexBuffer): Graphic3dBufferRange {.
    noSideEffect, importcpp: "InvalidatedRange",
    header: "Graphic3d_MutableIndexBuffer.hxx".}
proc validate*(this: var Graphic3dMutableIndexBuffer) {.importcpp: "Validate",
    header: "Graphic3d_MutableIndexBuffer.hxx".}
proc invalidate*(this: var Graphic3dMutableIndexBuffer) {.importcpp: "Invalidate",
    header: "Graphic3d_MutableIndexBuffer.hxx".}
proc invalidate*(this: var Graphic3dMutableIndexBuffer;
                theIndexLower: StandardInteger; theIndexUpper: StandardInteger) {.
    importcpp: "Invalidate", header: "Graphic3d_MutableIndexBuffer.hxx".}
proc invalidate*(this: var Graphic3dMutableIndexBuffer;
                theRange: Graphic3dBufferRange) {.importcpp: "invalidate",
    header: "Graphic3d_MutableIndexBuffer.hxx".}

