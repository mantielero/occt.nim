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

## ! Structure holding touch position - original and current location.

type
  AspectTouch* {.importcpp: "Aspect_Touch", header: "Aspect_Touch.hxx", bycopy.} = object
    `from`* {.importc: "From".}: NCollectionVec2[StandardReal] ## !< original touch position
    to* {.importc: "To".}: NCollectionVec2[StandardReal] ## !< current  touch position
    isPreciseDevice* {.importc: "IsPreciseDevice".}: StandardBoolean ## !< precise device input (e.g. mouse cursor, NOT emulated from touch screen)
                                                                 ## ! Return values delta.


proc delta*(this: AspectTouch): NCollectionVec2[StandardReal] {.noSideEffect,
    importcpp: "Delta", header: "Aspect_Touch.hxx".}
proc constructAspectTouch*(): AspectTouch {.constructor,
    importcpp: "Aspect_Touch(@)", header: "Aspect_Touch.hxx".}
proc constructAspectTouch*(thePnt: NCollectionVec2[StandardReal];
                          theIsPreciseDevice: StandardBoolean): AspectTouch {.
    constructor, importcpp: "Aspect_Touch(@)", header: "Aspect_Touch.hxx".}
proc constructAspectTouch*(theX: StandardReal; theY: StandardReal;
                          theIsPreciseDevice: StandardBoolean): AspectTouch {.
    constructor, importcpp: "Aspect_Touch(@)", header: "Aspect_Touch.hxx".}

