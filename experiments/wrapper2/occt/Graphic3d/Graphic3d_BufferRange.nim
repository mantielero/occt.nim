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
  Graphic3d_Vec, ../Standard/Standard_Integer

## ! Range of values defined as Start + Length pair.

type
  Graphic3d_BufferRange* {.importcpp: "Graphic3d_BufferRange",
                          header: "Graphic3d_BufferRange.hxx", bycopy.} = object
    Start* {.importc: "Start".}: Standard_Integer ## !< first element within the range
    Length* {.importc: "Length".}: Standard_Integer ## !< number of elements within the range
                                                ## ! Empty constructor.


proc constructGraphic3d_BufferRange*(): Graphic3d_BufferRange {.constructor,
    importcpp: "Graphic3d_BufferRange(@)", header: "Graphic3d_BufferRange.hxx".}
proc constructGraphic3d_BufferRange*(theStart: Standard_Integer;
                                    theLength: Standard_Integer): Graphic3d_BufferRange {.
    constructor, importcpp: "Graphic3d_BufferRange(@)",
    header: "Graphic3d_BufferRange.hxx".}
proc IsEmpty*(this: Graphic3d_BufferRange): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Graphic3d_BufferRange.hxx".}
proc Upper*(this: Graphic3d_BufferRange): Standard_Integer {.noSideEffect,
    importcpp: "Upper", header: "Graphic3d_BufferRange.hxx".}
proc Clear*(this: var Graphic3d_BufferRange) {.importcpp: "Clear",
    header: "Graphic3d_BufferRange.hxx".}
proc Unite*(this: var Graphic3d_BufferRange; theRange: Graphic3d_BufferRange) {.
    importcpp: "Unite", header: "Graphic3d_BufferRange.hxx".}