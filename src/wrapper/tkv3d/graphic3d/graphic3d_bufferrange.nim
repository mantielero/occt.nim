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

## ! Range of values defined as Start + Length pair.



proc newGraphic3dBufferRange*(): Graphic3dBufferRange {.cdecl, constructor,
    importcpp: "Graphic3d_BufferRange(@)", header: "Graphic3d_BufferRange.hxx".}
proc newGraphic3dBufferRange*(theStart: cint; theLength: cint): Graphic3dBufferRange {.
    cdecl, constructor, importcpp: "Graphic3d_BufferRange(@)", header: "Graphic3d_BufferRange.hxx".}
proc isEmpty*(this: Graphic3dBufferRange): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "Graphic3d_BufferRange.hxx".}
proc upper*(this: Graphic3dBufferRange): cint {.noSideEffect, cdecl,
    importcpp: "Upper", header: "Graphic3d_BufferRange.hxx".}
proc clear*(this: var Graphic3dBufferRange) {.cdecl, importcpp: "Clear", header: "Graphic3d_BufferRange.hxx".}
proc unite*(this: var Graphic3dBufferRange; theRange: Graphic3dBufferRange) {.cdecl,
    importcpp: "Unite", header: "Graphic3d_BufferRange.hxx".}

