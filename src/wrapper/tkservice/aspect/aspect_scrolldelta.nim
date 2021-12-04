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

## ! Parameters for mouse scroll action.

type
  AspectScrollDelta* {.importcpp: "Aspect_ScrollDelta",
                      header: "Aspect_ScrollDelta.hxx", bycopy.} = object
    point* {.importc: "Point".}: NCollectionVec2[cint] ## !< scale position
    delta* {.importc: "Delta".}: cfloat ## !< delta in pixels
    flags* {.importc: "Flags".}: AspectVKeyFlags ## !< key flags
                                             ## ! Return true if action has point defined.


proc hasPoint*(this: AspectScrollDelta): bool {.noSideEffect, cdecl,
    importcpp: "HasPoint", header: "Aspect_ScrollDelta.hxx".}
proc resetPoint*(this: var AspectScrollDelta) {.cdecl, importcpp: "ResetPoint",
    header: "Aspect_ScrollDelta.hxx".}
proc newAspectScrollDelta*(): AspectScrollDelta {.cdecl, constructor,
    importcpp: "Aspect_ScrollDelta(@)", header: "Aspect_ScrollDelta.hxx".}
proc newAspectScrollDelta*(thePnt: NCollectionVec2[cint]; theValue: cfloat;
                          theFlags: AspectVKeyFlags = aspectVKeyFlagsNONE): AspectScrollDelta {.
    cdecl, constructor, importcpp: "Aspect_ScrollDelta(@)", header: "Aspect_ScrollDelta.hxx".}
proc newAspectScrollDelta*(theValue: cfloat;
                          theFlags: AspectVKeyFlags = aspectVKeyFlagsNONE): AspectScrollDelta {.
    cdecl, constructor, importcpp: "Aspect_ScrollDelta(@)", header: "Aspect_ScrollDelta.hxx".}