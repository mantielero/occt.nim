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

type
  Graphic3dBufferRange* {.importcpp: "Graphic3d_BufferRange",
                         header: "Graphic3d_BufferRange.hxx", bycopy.} = object
    start* {.importc: "Start".}: int ## !< first element within the range
    length* {.importc: "Length".}: int ## !< number of elements within the range
                                   ## ! Empty constructor.


proc constructGraphic3dBufferRange*(): Graphic3dBufferRange {.constructor,
    importcpp: "Graphic3d_BufferRange(@)", header: "Graphic3d_BufferRange.hxx".}
proc constructGraphic3dBufferRange*(theStart: int; theLength: int): Graphic3dBufferRange {.
    constructor, importcpp: "Graphic3d_BufferRange(@)",
    header: "Graphic3d_BufferRange.hxx".}
proc isEmpty*(this: Graphic3dBufferRange): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "Graphic3d_BufferRange.hxx".}
proc upper*(this: Graphic3dBufferRange): int {.noSideEffect, importcpp: "Upper",
    header: "Graphic3d_BufferRange.hxx".}
proc clear*(this: var Graphic3dBufferRange) {.importcpp: "Clear",
    header: "Graphic3d_BufferRange.hxx".}
proc unite*(this: var Graphic3dBufferRange; theRange: Graphic3dBufferRange) {.
    importcpp: "Unite", header: "Graphic3d_BufferRange.hxx".}
