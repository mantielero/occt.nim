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

## ! Bounds buffer.

type
  Graphic3dBoundBuffer* {.importcpp: "Graphic3d_BoundBuffer",
                         header: "Graphic3d_BoundBuffer.hxx", bycopy.} = object of NCollectionBuffer ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor.
    colors* {.importc: "Colors".}: ptr Graphic3dVec4 ## !< pointer to facet color values
    bounds* {.importc: "Bounds".}: ptr StandardInteger ## !< pointer to bounds array
    nbBounds* {.importc: "NbBounds".}: StandardInteger ## !< number of bounds
    nbMaxBounds* {.importc: "NbMaxBounds".}: StandardInteger ## !< number of allocated bounds

  Graphic3dBoundBufferbaseType* = NCollectionBuffer

proc getTypeName*(): cstring {.importcpp: "Graphic3d_BoundBuffer::get_type_name(@)",
                            header: "Graphic3d_BoundBuffer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_BoundBuffer::get_type_descriptor(@)",
    header: "Graphic3d_BoundBuffer.hxx".}
proc dynamicType*(this: Graphic3dBoundBuffer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_BoundBuffer.hxx".}
proc constructGraphic3dBoundBuffer*(theAlloc: Handle[NCollectionBaseAllocator]): Graphic3dBoundBuffer {.
    constructor, importcpp: "Graphic3d_BoundBuffer(@)",
    header: "Graphic3d_BoundBuffer.hxx".}
proc init*(this: var Graphic3dBoundBuffer; theNbBounds: StandardInteger;
          theHasColors: StandardBoolean): bool {.importcpp: "Init",
    header: "Graphic3d_BoundBuffer.hxx".}
proc dumpJson*(this: Graphic3dBoundBuffer; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_BoundBuffer.hxx".}
discard "forward decl of Graphic3d_BoundBuffer"
type
  HandleGraphic3dBoundBuffer* = Handle[Graphic3dBoundBuffer]


