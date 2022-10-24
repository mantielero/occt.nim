import topopebrepds_types

##  Created on: 1994-05-26
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1994-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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



proc newTopOpeBRepDS_Transition*(): TopOpeBRepDS_Transition {.cdecl, constructor,
    importcpp: "TopOpeBRepDS_Transition(@)", header: "TopOpeBRepDS_Transition.hxx".}
proc newTopOpeBRepDS_Transition*(stateBefore: TopAbsState; stateAfter: TopAbsState;
                                shapeBefore: TopAbsShapeEnum = topAbsFACE;
                                shapeAfter: TopAbsShapeEnum = topAbsFACE): TopOpeBRepDS_Transition {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_Transition(@)", header: "TopOpeBRepDS_Transition.hxx".}
proc newTopOpeBRepDS_Transition*(o: TopAbsOrientation): TopOpeBRepDS_Transition {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_Transition(@)", header: "TopOpeBRepDS_Transition.hxx".}
proc set*(this: var TopOpeBRepDS_Transition; stateBefore: TopAbsState;
         stateAfter: TopAbsState; shapeBefore: TopAbsShapeEnum = topAbsFACE;
         shapeAfter: TopAbsShapeEnum = topAbsFACE) {.cdecl, importcpp: "Set",
    header: "TopOpeBRepDS_Transition.hxx".}
proc stateBefore*(this: var TopOpeBRepDS_Transition; s: TopAbsState) {.cdecl,
    importcpp: "StateBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc stateAfter*(this: var TopOpeBRepDS_Transition; s: TopAbsState) {.cdecl,
    importcpp: "StateAfter", header: "TopOpeBRepDS_Transition.hxx".}
proc shapeBefore*(this: var TopOpeBRepDS_Transition; se: TopAbsShapeEnum) {.cdecl,
    importcpp: "ShapeBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc shapeAfter*(this: var TopOpeBRepDS_Transition; se: TopAbsShapeEnum) {.cdecl,
    importcpp: "ShapeAfter", header: "TopOpeBRepDS_Transition.hxx".}
proc before*(this: var TopOpeBRepDS_Transition; s: TopAbsState;
            shapeBefore: TopAbsShapeEnum = topAbsFACE) {.cdecl, importcpp: "Before",
    header: "TopOpeBRepDS_Transition.hxx".}
proc after*(this: var TopOpeBRepDS_Transition; s: TopAbsState;
           shapeAfter: TopAbsShapeEnum = topAbsFACE) {.cdecl, importcpp: "After",
    header: "TopOpeBRepDS_Transition.hxx".}
proc index*(this: var TopOpeBRepDS_Transition; i: cint) {.cdecl, importcpp: "Index",
    header: "TopOpeBRepDS_Transition.hxx".}
proc indexBefore*(this: var TopOpeBRepDS_Transition; i: cint) {.cdecl,
    importcpp: "IndexBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc indexAfter*(this: var TopOpeBRepDS_Transition; i: cint) {.cdecl,
    importcpp: "IndexAfter", header: "TopOpeBRepDS_Transition.hxx".}
proc before*(this: TopOpeBRepDS_Transition): TopAbsState {.noSideEffect, cdecl,
    importcpp: "Before", header: "TopOpeBRepDS_Transition.hxx".}
proc oNBefore*(this: TopOpeBRepDS_Transition): TopAbsShapeEnum {.noSideEffect, cdecl,
    importcpp: "ONBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc after*(this: TopOpeBRepDS_Transition): TopAbsState {.noSideEffect, cdecl,
    importcpp: "After", header: "TopOpeBRepDS_Transition.hxx".}
proc oNAfter*(this: TopOpeBRepDS_Transition): TopAbsShapeEnum {.noSideEffect, cdecl,
    importcpp: "ONAfter", header: "TopOpeBRepDS_Transition.hxx".}
proc shapeBefore*(this: TopOpeBRepDS_Transition): TopAbsShapeEnum {.noSideEffect,
    cdecl, importcpp: "ShapeBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc shapeAfter*(this: TopOpeBRepDS_Transition): TopAbsShapeEnum {.noSideEffect,
    cdecl, importcpp: "ShapeAfter", header: "TopOpeBRepDS_Transition.hxx".}
proc index*(this: TopOpeBRepDS_Transition): cint {.noSideEffect, cdecl,
    importcpp: "Index", header: "TopOpeBRepDS_Transition.hxx".}
proc indexBefore*(this: TopOpeBRepDS_Transition): cint {.noSideEffect, cdecl,
    importcpp: "IndexBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc indexAfter*(this: TopOpeBRepDS_Transition): cint {.noSideEffect, cdecl,
    importcpp: "IndexAfter", header: "TopOpeBRepDS_Transition.hxx".}
proc set*(this: var TopOpeBRepDS_Transition; o: TopAbsOrientation) {.cdecl,
    importcpp: "Set", header: "TopOpeBRepDS_Transition.hxx".}
proc orientation*(this: TopOpeBRepDS_Transition; s: TopAbsState;
                 t: TopAbsShapeEnum = topAbsFACE): TopAbsOrientation {.noSideEffect,
    cdecl, importcpp: "Orientation", header: "TopOpeBRepDS_Transition.hxx".}
proc complement*(this: TopOpeBRepDS_Transition): TopOpeBRepDS_Transition {.
    noSideEffect, cdecl, importcpp: "Complement", header: "TopOpeBRepDS_Transition.hxx".}
proc isUnknown*(this: TopOpeBRepDS_Transition): bool {.noSideEffect, cdecl,
    importcpp: "IsUnknown", header: "TopOpeBRepDS_Transition.hxx".}
