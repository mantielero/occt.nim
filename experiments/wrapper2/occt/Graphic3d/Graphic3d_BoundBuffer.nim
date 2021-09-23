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

## ! Bounds buffer.

type
  Graphic3d_BoundBuffer* {.importcpp: "Graphic3d_BoundBuffer",
                          header: "Graphic3d_BoundBuffer.hxx", bycopy.} = object of NCollection_Buffer ##
                                                                                                ## !
                                                                                                ## Empty
                                                                                                ## constructor.
    Colors* {.importc: "Colors".}: ptr Graphic3d_Vec4 ## !< pointer to facet color values
    Bounds* {.importc: "Bounds".}: ptr Standard_Integer ## !< pointer to bounds array
    NbBounds* {.importc: "NbBounds".}: Standard_Integer ## !< number of bounds
    NbMaxBounds* {.importc: "NbMaxBounds".}: Standard_Integer ## !< number of allocated bounds

  Graphic3d_BoundBufferbase_type* = NCollection_Buffer

proc get_type_name*(): cstring {.importcpp: "Graphic3d_BoundBuffer::get_type_name(@)",
                              header: "Graphic3d_BoundBuffer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_BoundBuffer::get_type_descriptor(@)",
    header: "Graphic3d_BoundBuffer.hxx".}
proc DynamicType*(this: Graphic3d_BoundBuffer): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_BoundBuffer.hxx".}
proc constructGraphic3d_BoundBuffer*(theAlloc: handle[NCollection_BaseAllocator]): Graphic3d_BoundBuffer {.
    constructor, importcpp: "Graphic3d_BoundBuffer(@)",
    header: "Graphic3d_BoundBuffer.hxx".}
proc Init*(this: var Graphic3d_BoundBuffer; theNbBounds: Standard_Integer;
          theHasColors: Standard_Boolean): bool {.importcpp: "Init",
    header: "Graphic3d_BoundBuffer.hxx".}
proc DumpJson*(this: Graphic3d_BoundBuffer; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_BoundBuffer.hxx".}
discard "forward decl of Graphic3d_BoundBuffer"
type
  Handle_Graphic3d_BoundBuffer* = handle[Graphic3d_BoundBuffer]
