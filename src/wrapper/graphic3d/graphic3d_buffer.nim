import ../standard/standard_types
import ../ncollection/ncollection_types
import graphic3d_types





##  Copyright (c) 2014 OPEN CASCADE SAS
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

## ! Type of attribute in Vertex Buffer









proc stride*(this: Graphic3dAttribute): cint {.noSideEffect, cdecl,
    importcpp: "Stride", header: "Graphic3d_Buffer.hxx".}
proc stride*(theType: Graphic3dTypeOfData): cint {.cdecl,
    importcpp: "Graphic3d_Attribute::Stride(@)", header: "Graphic3d_Buffer.hxx".}




proc newGraphic3dBuffer*(theAlloc: Handle[NCollectionBaseAllocator]): Graphic3dBuffer {.
    cdecl, constructor, importcpp: "Graphic3d_Buffer(@)", header: "Graphic3d_Buffer.hxx".}
proc nbMaxElements*(this: Graphic3dBuffer): cint {.noSideEffect, cdecl,
    importcpp: "NbMaxElements", header: "Graphic3d_Buffer.hxx".}
proc attributesArray*(this: Graphic3dBuffer): ptr Graphic3dAttribute {.noSideEffect,
    cdecl, importcpp: "AttributesArray", header: "Graphic3d_Buffer.hxx".}
proc attribute*(this: Graphic3dBuffer; theAttribIndex: cint): Graphic3dAttribute {.
    noSideEffect, cdecl, importcpp: "Attribute", header: "Graphic3d_Buffer.hxx".}
proc changeAttribute*(this: var Graphic3dBuffer; theAttribIndex: cint): var Graphic3dAttribute {.
    cdecl, importcpp: "ChangeAttribute", header: "Graphic3d_Buffer.hxx".}
proc findAttribute*(this: Graphic3dBuffer; theAttrib: Graphic3dTypeOfAttribute): cint {.
    noSideEffect, cdecl, importcpp: "FindAttribute", header: "Graphic3d_Buffer.hxx".}
proc attributeOffset*(this: Graphic3dBuffer; theAttribIndex: cint): cint {.
    noSideEffect, cdecl, importcpp: "AttributeOffset", header: "Graphic3d_Buffer.hxx".}
proc data*(this: Graphic3dBuffer; theAttribIndex: cint): ptr StandardByte {.
    noSideEffect, cdecl, importcpp: "Data", header: "Graphic3d_Buffer.hxx".}
proc changeData*(this: var Graphic3dBuffer; theAttribIndex: cint): ptr StandardByte {.
    cdecl, importcpp: "ChangeData", header: "Graphic3d_Buffer.hxx".}
#proc value*(this: Graphic3dBuffer; theElem: cint): ptr StandardByte {.noSideEffect,
#    cdecl, importcpp: "value", header: "Graphic3d_Buffer.hxx".}
#proc changeValue*(this: var Graphic3dBuffer; theElem: cint): ptr StandardByte {.cdecl,
#    importcpp: "changeValue", header: "Graphic3d_Buffer.hxx".}
proc value*[TypeT](this: Graphic3dBuffer; theElem: cint): TypeT {.noSideEffect, cdecl,
    importcpp: "Value", header: "Graphic3d_Buffer.hxx".}
proc changeValue*[TypeT](this: var Graphic3dBuffer; theElem: cint): var TypeT {.cdecl,
    importcpp: "ChangeValue", header: "Graphic3d_Buffer.hxx".}
## using statement

## using statement

proc changeAttributeData*(this: var Graphic3dBuffer;
                         theAttrib: Graphic3dTypeOfAttribute;
                         theAttribIndex: var cint; theAttribStride: var csize_t): ptr StandardByte {.
    cdecl, importcpp: "ChangeAttributeData", header: "Graphic3d_Buffer.hxx".}
proc attributeData*(this: Graphic3dBuffer; theAttrib: Graphic3dTypeOfAttribute;
                   theAttribIndex: var cint; theAttribStride: var csize_t): ptr StandardByte {.
    noSideEffect, cdecl, importcpp: "AttributeData", header: "Graphic3d_Buffer.hxx".}
proc release*(this: var Graphic3dBuffer) {.cdecl, importcpp: "release", header: "Graphic3d_Buffer.hxx".}
proc init*(this: var Graphic3dBuffer; theNbElems: cint;
          theAttribs: ptr Graphic3dAttribute; theNbAttribs: cint): bool {.cdecl,
    importcpp: "Init", header: "Graphic3d_Buffer.hxx".}
proc init*(this: var Graphic3dBuffer; theNbElems: cint;
          theAttribs: Graphic3dArray1OfAttribute): bool {.cdecl, importcpp: "Init",
    header: "Graphic3d_Buffer.hxx".}
proc isInterleaved*(this: Graphic3dBuffer): bool {.noSideEffect, cdecl,
    importcpp: "IsInterleaved", header: "Graphic3d_Buffer.hxx".}
proc isMutable*(this: Graphic3dBuffer): bool {.noSideEffect, cdecl,
    importcpp: "IsMutable", header: "Graphic3d_Buffer.hxx".}
proc invalidatedRange*(this: Graphic3dBuffer): Graphic3dBufferRange {.noSideEffect,
    cdecl, importcpp: "InvalidatedRange", header: "Graphic3d_Buffer.hxx".}
proc validate*(this: var Graphic3dBuffer) {.cdecl, importcpp: "Validate", header: "Graphic3d_Buffer.hxx".}
proc invalidate*(this: var Graphic3dBuffer) {.cdecl, importcpp: "Invalidate",
    header: "Graphic3d_Buffer.hxx".}
proc dumpJson*(this: Graphic3dBuffer; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_Buffer.hxx".}



