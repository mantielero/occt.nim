##  Copyright (c) 2019 OPEN CASCADE SAS
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
  Aspect_VKeyFlags, ../NCollection/NCollection_Vec2, ../Standard/Standard_Real

## ! Parameters for mouse scroll action.

type
  Aspect_ScrollDelta* {.importcpp: "Aspect_ScrollDelta",
                       header: "Aspect_ScrollDelta.hxx", bycopy.} = object
    Point* {.importc: "Point".}: NCollection_Vec2[cint] ## !< scale position
    Delta* {.importc: "Delta".}: Standard_Real ## !< delta in pixels
    Flags* {.importc: "Flags".}: Aspect_VKeyFlags ## !< key flags
                                              ## ! Return true if action has point defined.


proc HasPoint*(this: Aspect_ScrollDelta): bool {.noSideEffect, importcpp: "HasPoint",
    header: "Aspect_ScrollDelta.hxx".}
proc ResetPoint*(this: var Aspect_ScrollDelta) {.importcpp: "ResetPoint",
    header: "Aspect_ScrollDelta.hxx".}
proc constructAspect_ScrollDelta*(): Aspect_ScrollDelta {.constructor,
    importcpp: "Aspect_ScrollDelta(@)", header: "Aspect_ScrollDelta.hxx".}
proc constructAspect_ScrollDelta*(thePnt: NCollection_Vec2[cint];
                                 theValue: Standard_Real; theFlags: Aspect_VKeyFlags = Aspect_VKeyFlags_NONE): Aspect_ScrollDelta {.
    constructor, importcpp: "Aspect_ScrollDelta(@)",
    header: "Aspect_ScrollDelta.hxx".}
proc constructAspect_ScrollDelta*(theValue: Standard_Real; theFlags: Aspect_VKeyFlags = Aspect_VKeyFlags_NONE): Aspect_ScrollDelta {.
    constructor, importcpp: "Aspect_ScrollDelta(@)",
    header: "Aspect_ScrollDelta.hxx".}