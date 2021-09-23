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

import
  Graphic3d_BufferRange, Graphic3d_Vec, ../NCollection/NCollection_Array1,
  ../NCollection/NCollection_Buffer, ../Standard/Standard_NotImplemented

## ! Type of attribute in Vertex Buffer

type
  Graphic3d_TypeOfAttribute* {.size: sizeof(cint),
                              importcpp: "Graphic3d_TypeOfAttribute",
                              header: "Graphic3d_Buffer.hxx".} = enum
    Graphic3d_TOA_POS = 0,      ## !< vertex position
    Graphic3d_TOA_NORM,       ## !< normal
    Graphic3d_TOA_UV,         ## !< texture coordinates
    Graphic3d_TOA_COLOR,      ## !< per-vertex color
    Graphic3d_TOA_CUSTOM      ## !< custom attributes


## ! Type of the element in Vertex or Index Buffer

type
  Graphic3d_TypeOfData* {.size: sizeof(cint), importcpp: "Graphic3d_TypeOfData",
                         header: "Graphic3d_Buffer.hxx".} = enum
    Graphic3d_TOD_USHORT,     ## !< unsigned 16-bit integer
    Graphic3d_TOD_UINT,       ## !< unsigned 32-bit integer
    Graphic3d_TOD_VEC2,       ## !< 2-components float vector
    Graphic3d_TOD_VEC3,       ## !< 3-components float vector
    Graphic3d_TOD_VEC4,       ## !< 4-components float vector
    Graphic3d_TOD_VEC4UB,     ## !< 4-components unsigned byte vector
    Graphic3d_TOD_FLOAT       ## !< float value


## ! Vertex attribute definition.

type
  Graphic3d_Attribute* {.importcpp: "Graphic3d_Attribute",
                        header: "Graphic3d_Buffer.hxx", bycopy.} = object
    Id* {.importc: "Id".}: Graphic3d_TypeOfAttribute ## !< attribute identifier in vertex shader, 0 is reserved for vertex position
    DataType* {.importc: "DataType".}: Graphic3d_TypeOfData ## !< vec2,vec3,vec4,vec4ub


proc Stride*(this: Graphic3d_Attribute): Standard_Integer {.noSideEffect,
    importcpp: "Stride", header: "Graphic3d_Buffer.hxx".}
proc Stride*(theType: Graphic3d_TypeOfData): Standard_Integer {.
    importcpp: "Graphic3d_Attribute::Stride(@)", header: "Graphic3d_Buffer.hxx".}
type
  Graphic3d_Array1OfAttribute* = NCollection_Array1[Graphic3d_Attribute]

## ! Buffer of vertex attributes.

type
  Graphic3d_Buffer* {.importcpp: "Graphic3d_Buffer",
                     header: "Graphic3d_Buffer.hxx", bycopy.} = object of NCollection_Buffer ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @return
                                                                                      ## data
                                                                                      ## offset
                                                                                      ## to
                                                                                      ## specified
                                                                                      ## attribute
                                                                                      ##
                                                                                      ## !
                                                                                      ## Release
                                                                                      ## buffer.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Flag
                                                                                      ## indicating
                                                                                      ## that
                                                                                      ## attributes
                                                                                      ## in
                                                                                      ## the
                                                                                      ## buffer
                                                                                      ## are
                                                                                      ## interleaved;
                                                                                      ## TRUE
                                                                                      ## by
                                                                                      ## default.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Requires
                                                                                      ## sub-classing
                                                                                      ## for
                                                                                      ## creating
                                                                                      ## a
                                                                                      ## non-interleaved
                                                                                      ## buffer
                                                                                      ## (advanced
                                                                                      ## usage).
    Stride* {.importc: "Stride".}: Standard_Integer ## !< the distance to the attributes of the next vertex within interleaved array
    NbElements* {.importc: "NbElements".}: Standard_Integer ## !< number of the elements (@sa NbMaxElements() specifying the number of initially allocated number of elements)
    NbAttributes* {.importc: "NbAttributes".}: Standard_Integer ## !< number of vertex attributes

  Graphic3d_Bufferbase_type* = NCollection_Buffer

proc get_type_name*(): cstring {.importcpp: "Graphic3d_Buffer::get_type_name(@)",
                              header: "Graphic3d_Buffer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_Buffer::get_type_descriptor(@)",
    header: "Graphic3d_Buffer.hxx".}
proc DynamicType*(this: Graphic3d_Buffer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_Buffer.hxx".}
proc constructGraphic3d_Buffer*(theAlloc: handle[NCollection_BaseAllocator]): Graphic3d_Buffer {.
    constructor, importcpp: "Graphic3d_Buffer(@)", header: "Graphic3d_Buffer.hxx".}
proc NbMaxElements*(this: Graphic3d_Buffer): Standard_Integer {.noSideEffect,
    importcpp: "NbMaxElements", header: "Graphic3d_Buffer.hxx".}
proc AttributesArray*(this: Graphic3d_Buffer): ptr Graphic3d_Attribute {.
    noSideEffect, importcpp: "AttributesArray", header: "Graphic3d_Buffer.hxx".}
proc Attribute*(this: Graphic3d_Buffer; theAttribIndex: Standard_Integer): Graphic3d_Attribute {.
    noSideEffect, importcpp: "Attribute", header: "Graphic3d_Buffer.hxx".}
proc ChangeAttribute*(this: var Graphic3d_Buffer; theAttribIndex: Standard_Integer): var Graphic3d_Attribute {.
    importcpp: "ChangeAttribute", header: "Graphic3d_Buffer.hxx".}
proc FindAttribute*(this: Graphic3d_Buffer; theAttrib: Graphic3d_TypeOfAttribute): Standard_Integer {.
    noSideEffect, importcpp: "FindAttribute", header: "Graphic3d_Buffer.hxx".}
proc AttributeOffset*(this: Graphic3d_Buffer; theAttribIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "AttributeOffset", header: "Graphic3d_Buffer.hxx".}
proc Data*(this: Graphic3d_Buffer; theAttribIndex: Standard_Integer): ptr Standard_Byte {.
    noSideEffect, importcpp: "Data", header: "Graphic3d_Buffer.hxx".}
proc ChangeData*(this: var Graphic3d_Buffer; theAttribIndex: Standard_Integer): ptr Standard_Byte {.
    importcpp: "ChangeData", header: "Graphic3d_Buffer.hxx".}
proc value*(this: Graphic3d_Buffer; theElem: Standard_Integer): ptr Standard_Byte {.
    noSideEffect, importcpp: "value", header: "Graphic3d_Buffer.hxx".}
proc changeValue*(this: var Graphic3d_Buffer; theElem: Standard_Integer): ptr Standard_Byte {.
    importcpp: "changeValue", header: "Graphic3d_Buffer.hxx".}
proc Value*[Type_t](this: Graphic3d_Buffer; theElem: Standard_Integer): Type_t {.
    noSideEffect, importcpp: "Value", header: "Graphic3d_Buffer.hxx".}
proc ChangeValue*[Type_t](this: var Graphic3d_Buffer; theElem: Standard_Integer): var Type_t {.
    importcpp: "ChangeValue", header: "Graphic3d_Buffer.hxx".}
## using statement

## using statement

proc ChangeAttributeData*(this: var Graphic3d_Buffer;
                         theAttrib: Graphic3d_TypeOfAttribute;
                         theAttribIndex: var Standard_Integer;
                         theAttribStride: var Standard_Size): ptr Standard_Byte {.
    importcpp: "ChangeAttributeData", header: "Graphic3d_Buffer.hxx".}
proc AttributeData*(this: Graphic3d_Buffer; theAttrib: Graphic3d_TypeOfAttribute;
                   theAttribIndex: var Standard_Integer;
                   theAttribStride: var Standard_Size): ptr Standard_Byte {.
    noSideEffect, importcpp: "AttributeData", header: "Graphic3d_Buffer.hxx".}
proc release*(this: var Graphic3d_Buffer) {.importcpp: "release",
                                        header: "Graphic3d_Buffer.hxx".}
proc Init*(this: var Graphic3d_Buffer; theNbElems: Standard_Integer;
          theAttribs: ptr Graphic3d_Attribute; theNbAttribs: Standard_Integer): bool {.
    importcpp: "Init", header: "Graphic3d_Buffer.hxx".}
proc Init*(this: var Graphic3d_Buffer; theNbElems: Standard_Integer;
          theAttribs: Graphic3d_Array1OfAttribute): bool {.importcpp: "Init",
    header: "Graphic3d_Buffer.hxx".}
proc IsInterleaved*(this: Graphic3d_Buffer): Standard_Boolean {.noSideEffect,
    importcpp: "IsInterleaved", header: "Graphic3d_Buffer.hxx".}
proc IsMutable*(this: Graphic3d_Buffer): Standard_Boolean {.noSideEffect,
    importcpp: "IsMutable", header: "Graphic3d_Buffer.hxx".}
proc InvalidatedRange*(this: Graphic3d_Buffer): Graphic3d_BufferRange {.
    noSideEffect, importcpp: "InvalidatedRange", header: "Graphic3d_Buffer.hxx".}
proc Validate*(this: var Graphic3d_Buffer) {.importcpp: "Validate",
    header: "Graphic3d_Buffer.hxx".}
proc Invalidate*(this: var Graphic3d_Buffer) {.importcpp: "Invalidate",
    header: "Graphic3d_Buffer.hxx".}
proc DumpJson*(this: Graphic3d_Buffer; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_Buffer.hxx".}
discard "forward decl of Graphic3d_Buffer"
type
  Handle_Graphic3d_Buffer* = handle[Graphic3d_Buffer]
