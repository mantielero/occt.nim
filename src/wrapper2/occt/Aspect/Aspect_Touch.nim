##  Copyright (c) 2016-2019 OPEN CASCADE SAS
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
  ../NCollection/NCollection_Vec2, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

## ! Structure holding touch position - original and current location.

type
  Aspect_Touch* {.importcpp: "Aspect_Touch", header: "Aspect_Touch.hxx", bycopy.} = object
    From* {.importc: "From".}: NCollection_Vec2[Standard_Real] ## !< original touch position
    To* {.importc: "To".}: NCollection_Vec2[Standard_Real] ## !< current  touch position
    IsPreciseDevice* {.importc: "IsPreciseDevice".}: Standard_Boolean ## !< precise device input (e.g. mouse cursor, NOT emulated from touch screen)
                                                                  ## ! Return values delta.


proc Delta*(this: Aspect_Touch): NCollection_Vec2[Standard_Real] {.noSideEffect,
    importcpp: "Delta", header: "Aspect_Touch.hxx".}
proc constructAspect_Touch*(): Aspect_Touch {.constructor,
    importcpp: "Aspect_Touch(@)", header: "Aspect_Touch.hxx".}
proc constructAspect_Touch*(thePnt: NCollection_Vec2[Standard_Real];
                           theIsPreciseDevice: Standard_Boolean): Aspect_Touch {.
    constructor, importcpp: "Aspect_Touch(@)", header: "Aspect_Touch.hxx".}
proc constructAspect_Touch*(theX: Standard_Real; theY: Standard_Real;
                           theIsPreciseDevice: Standard_Boolean): Aspect_Touch {.
    constructor, importcpp: "Aspect_Touch(@)", header: "Aspect_Touch.hxx".}