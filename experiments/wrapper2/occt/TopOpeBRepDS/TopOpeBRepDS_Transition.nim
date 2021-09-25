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

type
  TopOpeBRepDS_Transition* {.importcpp: "TopOpeBRepDS_Transition",
                            header: "TopOpeBRepDS_Transition.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## returns
                                                                                ## the
                                                                                ## orientation
                                                                                ## corresponding
                                                                                ## to
                                                                                ## state
                                                                                ## <S>
                                                                                ##
                                                                                ## !
                                                                                ## (if
                                                                                ## one
                                                                                ## at
                                                                                ## least
                                                                                ## of
                                                                                ## the
                                                                                ## internal
                                                                                ## states
                                                                                ## is
                                                                                ## ON)


proc constructTopOpeBRepDS_Transition*(): TopOpeBRepDS_Transition {.constructor,
    importcpp: "TopOpeBRepDS_Transition(@)", header: "TopOpeBRepDS_Transition.hxx".}
proc constructTopOpeBRepDS_Transition*(stateBefore: TopAbsState;
                                      stateAfter: TopAbsState; shapeBefore: TopAbsShapeEnum = topAbsFACE;
                                      shapeAfter: TopAbsShapeEnum = topAbsFACE): TopOpeBRepDS_Transition {.
    constructor, importcpp: "TopOpeBRepDS_Transition(@)",
    header: "TopOpeBRepDS_Transition.hxx".}
proc constructTopOpeBRepDS_Transition*(o: TopAbsOrientation): TopOpeBRepDS_Transition {.
    constructor, importcpp: "TopOpeBRepDS_Transition(@)",
    header: "TopOpeBRepDS_Transition.hxx".}
proc set*(this: var TopOpeBRepDS_Transition; stateBefore: TopAbsState;
         stateAfter: TopAbsState; shapeBefore: TopAbsShapeEnum = topAbsFACE;
         shapeAfter: TopAbsShapeEnum = topAbsFACE) {.importcpp: "Set",
    header: "TopOpeBRepDS_Transition.hxx".}
proc stateBefore*(this: var TopOpeBRepDS_Transition; s: TopAbsState) {.
    importcpp: "StateBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc stateAfter*(this: var TopOpeBRepDS_Transition; s: TopAbsState) {.
    importcpp: "StateAfter", header: "TopOpeBRepDS_Transition.hxx".}
proc shapeBefore*(this: var TopOpeBRepDS_Transition; se: TopAbsShapeEnum) {.
    importcpp: "ShapeBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc shapeAfter*(this: var TopOpeBRepDS_Transition; se: TopAbsShapeEnum) {.
    importcpp: "ShapeAfter", header: "TopOpeBRepDS_Transition.hxx".}
proc before*(this: var TopOpeBRepDS_Transition; s: TopAbsState;
            shapeBefore: TopAbsShapeEnum = topAbsFACE) {.importcpp: "Before",
    header: "TopOpeBRepDS_Transition.hxx".}
proc after*(this: var TopOpeBRepDS_Transition; s: TopAbsState;
           shapeAfter: TopAbsShapeEnum = topAbsFACE) {.importcpp: "After",
    header: "TopOpeBRepDS_Transition.hxx".}
proc index*(this: var TopOpeBRepDS_Transition; i: int) {.importcpp: "Index",
    header: "TopOpeBRepDS_Transition.hxx".}
proc indexBefore*(this: var TopOpeBRepDS_Transition; i: int) {.
    importcpp: "IndexBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc indexAfter*(this: var TopOpeBRepDS_Transition; i: int) {.importcpp: "IndexAfter",
    header: "TopOpeBRepDS_Transition.hxx".}
proc before*(this: TopOpeBRepDS_Transition): TopAbsState {.noSideEffect,
    importcpp: "Before", header: "TopOpeBRepDS_Transition.hxx".}
proc oNBefore*(this: TopOpeBRepDS_Transition): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ONBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc after*(this: TopOpeBRepDS_Transition): TopAbsState {.noSideEffect,
    importcpp: "After", header: "TopOpeBRepDS_Transition.hxx".}
proc oNAfter*(this: TopOpeBRepDS_Transition): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ONAfter", header: "TopOpeBRepDS_Transition.hxx".}
proc shapeBefore*(this: TopOpeBRepDS_Transition): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc shapeAfter*(this: TopOpeBRepDS_Transition): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeAfter", header: "TopOpeBRepDS_Transition.hxx".}
proc index*(this: TopOpeBRepDS_Transition): int {.noSideEffect, importcpp: "Index",
    header: "TopOpeBRepDS_Transition.hxx".}
proc indexBefore*(this: TopOpeBRepDS_Transition): int {.noSideEffect,
    importcpp: "IndexBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc indexAfter*(this: TopOpeBRepDS_Transition): int {.noSideEffect,
    importcpp: "IndexAfter", header: "TopOpeBRepDS_Transition.hxx".}
proc set*(this: var TopOpeBRepDS_Transition; o: TopAbsOrientation) {.importcpp: "Set",
    header: "TopOpeBRepDS_Transition.hxx".}
proc orientation*(this: TopOpeBRepDS_Transition; s: TopAbsState;
                 t: TopAbsShapeEnum = topAbsFACE): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "TopOpeBRepDS_Transition.hxx".}
proc complement*(this: TopOpeBRepDS_Transition): TopOpeBRepDS_Transition {.
    noSideEffect, importcpp: "Complement", header: "TopOpeBRepDS_Transition.hxx".}
proc isUnknown*(this: TopOpeBRepDS_Transition): bool {.noSideEffect,
    importcpp: "IsUnknown", header: "TopOpeBRepDS_Transition.hxx".}
