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

## ! Index buffer.

type
  Graphic3dIndexBuffer* {.importcpp: "Graphic3d_IndexBuffer",
                         header: "Graphic3d_IndexBuffer.hxx", bycopy.} = object of Graphic3dBuffer ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor.

  Graphic3dIndexBufferbaseType* = Graphic3dBuffer

proc getTypeName*(): cstring {.importcpp: "Graphic3d_IndexBuffer::get_type_name(@)",
                            header: "Graphic3d_IndexBuffer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_IndexBuffer::get_type_descriptor(@)",
    header: "Graphic3d_IndexBuffer.hxx".}
proc dynamicType*(this: Graphic3dIndexBuffer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_IndexBuffer.hxx".}
proc constructGraphic3dIndexBuffer*(theAlloc: Handle[NCollectionBaseAllocator]): Graphic3dIndexBuffer {.
    constructor, importcpp: "Graphic3d_IndexBuffer(@)",
    header: "Graphic3d_IndexBuffer.hxx".}
proc init*[IndexTypeT](this: var Graphic3dIndexBuffer; theNbElems: StandardInteger): bool {.
    importcpp: "Init", header: "Graphic3d_IndexBuffer.hxx".}
proc initInt32*(this: var Graphic3dIndexBuffer; theNbElems: StandardInteger): bool {.
    importcpp: "InitInt32", header: "Graphic3d_IndexBuffer.hxx".}
proc index*(this: Graphic3dIndexBuffer; theIndex: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "Index", header: "Graphic3d_IndexBuffer.hxx".}
proc setIndex*(this: var Graphic3dIndexBuffer; theIndex: StandardInteger;
              theValue: StandardInteger) {.importcpp: "SetIndex",
    header: "Graphic3d_IndexBuffer.hxx".}
proc dumpJson*(this: Graphic3dIndexBuffer; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_IndexBuffer.hxx".}
discard "forward decl of Graphic3d_IndexBuffer"
type
  HandleGraphic3dIndexBuffer* = Handle[Graphic3dIndexBuffer]


