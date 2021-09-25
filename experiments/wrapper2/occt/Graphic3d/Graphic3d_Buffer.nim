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

type
  Graphic3dTypeOfAttribute* {.size: sizeof(cint),
                             importcpp: "Graphic3d_TypeOfAttribute",
                             header: "Graphic3d_Buffer.hxx".} = enum
    Graphic3dTOA_POS = 0,       ## !< vertex position
    Graphic3dTOA_NORM,        ## !< normal
    Graphic3dTOA_UV,          ## !< texture coordinates
    Graphic3dTOA_COLOR,       ## !< per-vertex color
    Graphic3dTOA_CUSTOM       ## !< custom attributes


## ! Type of the element in Vertex or Index Buffer

type
  Graphic3dTypeOfData* {.size: sizeof(cint), importcpp: "Graphic3d_TypeOfData",
                        header: "Graphic3d_Buffer.hxx".} = enum
    Graphic3dTOD_USHORT,      ## !< unsigned 16-bit integer
    Graphic3dTOD_UINT,        ## !< unsigned 32-bit integer
    Graphic3dTOD_VEC2,        ## !< 2-components float vector
    Graphic3dTOD_VEC3,        ## !< 3-components float vector
    Graphic3dTOD_VEC4,        ## !< 4-components float vector
    Graphic3dTOD_VEC4UB,      ## !< 4-components unsigned byte vector
    Graphic3dTOD_FLOAT        ## !< float value


## ! Vertex attribute definition.

type
  Graphic3dAttribute* {.importcpp: "Graphic3d_Attribute",
                       header: "Graphic3d_Buffer.hxx", bycopy.} = object
    id* {.importc: "Id".}: Graphic3dTypeOfAttribute ## !< attribute identifier in vertex shader, 0 is reserved for vertex position
    dataType* {.importc: "DataType".}: Graphic3dTypeOfData ## !< vec2,vec3,vec4,vec4ub


proc stride*(this: Graphic3dAttribute): int {.noSideEffect, importcpp: "Stride",
    header: "Graphic3d_Buffer.hxx".}
proc stride*(theType: Graphic3dTypeOfData): int {.
    importcpp: "Graphic3d_Attribute::Stride(@)", header: "Graphic3d_Buffer.hxx".}
type
  Graphic3dArray1OfAttribute* = NCollectionArray1[Graphic3dAttribute]

## ! Buffer of vertex attributes.

type
  Graphic3dBuffer* {.importcpp: "Graphic3d_Buffer", header: "Graphic3d_Buffer.hxx",
                    bycopy.} = object of NCollectionBuffer ## ! Empty constructor.
                                                      ## ! @return data offset to specified attribute
                                                      ## ! Release buffer.
                                                      ## ! Flag indicating that attributes in the buffer are interleaved; TRUE by default.
                                                      ## ! Requires sub-classing for creating a non-interleaved buffer (advanced usage).
    stride* {.importc: "Stride".}: int ## !< the distance to the attributes of the next vertex within interleaved array
    nbElements* {.importc: "NbElements".}: int ## !< number of the elements (@sa NbMaxElements() specifying the number of initially allocated number of elements)
    nbAttributes* {.importc: "NbAttributes".}: int ## !< number of vertex attributes

  Graphic3dBufferbaseType* = NCollectionBuffer

proc getTypeName*(): cstring {.importcpp: "Graphic3d_Buffer::get_type_name(@)",
                            header: "Graphic3d_Buffer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_Buffer::get_type_descriptor(@)",
    header: "Graphic3d_Buffer.hxx".}
proc dynamicType*(this: Graphic3dBuffer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_Buffer.hxx".}
proc constructGraphic3dBuffer*(theAlloc: Handle[NCollectionBaseAllocator]): Graphic3dBuffer {.
    constructor, importcpp: "Graphic3d_Buffer(@)", header: "Graphic3d_Buffer.hxx".}
proc nbMaxElements*(this: Graphic3dBuffer): int {.noSideEffect,
    importcpp: "NbMaxElements", header: "Graphic3d_Buffer.hxx".}
proc attributesArray*(this: Graphic3dBuffer): ptr Graphic3dAttribute {.noSideEffect,
    importcpp: "AttributesArray", header: "Graphic3d_Buffer.hxx".}
proc attribute*(this: Graphic3dBuffer; theAttribIndex: int): Graphic3dAttribute {.
    noSideEffect, importcpp: "Attribute", header: "Graphic3d_Buffer.hxx".}
proc changeAttribute*(this: var Graphic3dBuffer; theAttribIndex: int): var Graphic3dAttribute {.
    importcpp: "ChangeAttribute", header: "Graphic3d_Buffer.hxx".}
proc findAttribute*(this: Graphic3dBuffer; theAttrib: Graphic3dTypeOfAttribute): int {.
    noSideEffect, importcpp: "FindAttribute", header: "Graphic3d_Buffer.hxx".}
proc attributeOffset*(this: Graphic3dBuffer; theAttribIndex: int): int {.noSideEffect,
    importcpp: "AttributeOffset", header: "Graphic3d_Buffer.hxx".}
proc data*(this: Graphic3dBuffer; theAttribIndex: int): ptr StandardByte {.
    noSideEffect, importcpp: "Data", header: "Graphic3d_Buffer.hxx".}
proc changeData*(this: var Graphic3dBuffer; theAttribIndex: int): ptr StandardByte {.
    importcpp: "ChangeData", header: "Graphic3d_Buffer.hxx".}
proc value*(this: Graphic3dBuffer; theElem: int): ptr StandardByte {.noSideEffect,
    importcpp: "value", header: "Graphic3d_Buffer.hxx".}
proc changeValue*(this: var Graphic3dBuffer; theElem: int): ptr StandardByte {.
    importcpp: "changeValue", header: "Graphic3d_Buffer.hxx".}
proc value*[TypeT](this: Graphic3dBuffer; theElem: int): TypeT {.noSideEffect,
    importcpp: "Value", header: "Graphic3d_Buffer.hxx".}
proc changeValue*[TypeT](this: var Graphic3dBuffer; theElem: int): var TypeT {.
    importcpp: "ChangeValue", header: "Graphic3d_Buffer.hxx".}
## using statement

## using statement

proc changeAttributeData*(this: var Graphic3dBuffer;
                         theAttrib: Graphic3dTypeOfAttribute;
                         theAttribIndex: var int; theAttribStride: var StandardSize): ptr StandardByte {.
    importcpp: "ChangeAttributeData", header: "Graphic3d_Buffer.hxx".}
proc attributeData*(this: Graphic3dBuffer; theAttrib: Graphic3dTypeOfAttribute;
                   theAttribIndex: var int; theAttribStride: var StandardSize): ptr StandardByte {.
    noSideEffect, importcpp: "AttributeData", header: "Graphic3d_Buffer.hxx".}
proc release*(this: var Graphic3dBuffer) {.importcpp: "release",
                                       header: "Graphic3d_Buffer.hxx".}
proc init*(this: var Graphic3dBuffer; theNbElems: int;
          theAttribs: ptr Graphic3dAttribute; theNbAttribs: int): bool {.
    importcpp: "Init", header: "Graphic3d_Buffer.hxx".}
proc init*(this: var Graphic3dBuffer; theNbElems: int;
          theAttribs: Graphic3dArray1OfAttribute): bool {.importcpp: "Init",
    header: "Graphic3d_Buffer.hxx".}
proc isInterleaved*(this: Graphic3dBuffer): bool {.noSideEffect,
    importcpp: "IsInterleaved", header: "Graphic3d_Buffer.hxx".}
proc isMutable*(this: Graphic3dBuffer): bool {.noSideEffect, importcpp: "IsMutable",
    header: "Graphic3d_Buffer.hxx".}
proc invalidatedRange*(this: Graphic3dBuffer): Graphic3dBufferRange {.noSideEffect,
    importcpp: "InvalidatedRange", header: "Graphic3d_Buffer.hxx".}
proc validate*(this: var Graphic3dBuffer) {.importcpp: "Validate",
                                        header: "Graphic3d_Buffer.hxx".}
proc invalidate*(this: var Graphic3dBuffer) {.importcpp: "Invalidate",
    header: "Graphic3d_Buffer.hxx".}
proc dumpJson*(this: Graphic3dBuffer; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Graphic3d_Buffer.hxx".}
discard "forward decl of Graphic3d_Buffer"
type
  HandleGraphic3dBuffer* = Handle[Graphic3dBuffer]

