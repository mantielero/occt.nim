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
  Graphic3d_Buffer

## ! Index buffer.

type
  Graphic3d_IndexBuffer* {.importcpp: "Graphic3d_IndexBuffer",
                          header: "Graphic3d_IndexBuffer.hxx", bycopy.} = object of Graphic3d_Buffer ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor.

  Graphic3d_IndexBufferbase_type* = Graphic3d_Buffer

proc get_type_name*(): cstring {.importcpp: "Graphic3d_IndexBuffer::get_type_name(@)",
                              header: "Graphic3d_IndexBuffer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_IndexBuffer::get_type_descriptor(@)",
    header: "Graphic3d_IndexBuffer.hxx".}
proc DynamicType*(this: Graphic3d_IndexBuffer): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_IndexBuffer.hxx".}
proc constructGraphic3d_IndexBuffer*(theAlloc: handle[NCollection_BaseAllocator]): Graphic3d_IndexBuffer {.
    constructor, importcpp: "Graphic3d_IndexBuffer(@)",
    header: "Graphic3d_IndexBuffer.hxx".}
proc Init*[IndexType_t](this: var Graphic3d_IndexBuffer;
                       theNbElems: Standard_Integer): bool {.importcpp: "Init",
    header: "Graphic3d_IndexBuffer.hxx".}
proc InitInt32*(this: var Graphic3d_IndexBuffer; theNbElems: Standard_Integer): bool {.
    importcpp: "InitInt32", header: "Graphic3d_IndexBuffer.hxx".}
proc Index*(this: Graphic3d_IndexBuffer; theIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "Graphic3d_IndexBuffer.hxx".}
proc SetIndex*(this: var Graphic3d_IndexBuffer; theIndex: Standard_Integer;
              theValue: Standard_Integer) {.importcpp: "SetIndex",
    header: "Graphic3d_IndexBuffer.hxx".}
proc DumpJson*(this: Graphic3d_IndexBuffer; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_IndexBuffer.hxx".}
discard "forward decl of Graphic3d_IndexBuffer"
type
  Handle_Graphic3d_IndexBuffer* = handle[Graphic3d_IndexBuffer]
