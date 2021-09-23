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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopAbs/TopAbs_State, ../TopAbs/TopAbs_ShapeEnum,
  ../Standard/Standard_Integer, ../TopAbs/TopAbs_Orientation,
  ../Standard/Standard_Boolean, ../Standard/Standard_OStream

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
proc constructTopOpeBRepDS_Transition*(StateBefore: TopAbs_State;
                                      StateAfter: TopAbs_State; ShapeBefore: TopAbs_ShapeEnum = TopAbs_FACE;
    ShapeAfter: TopAbs_ShapeEnum = TopAbs_FACE): TopOpeBRepDS_Transition {.
    constructor, importcpp: "TopOpeBRepDS_Transition(@)",
    header: "TopOpeBRepDS_Transition.hxx".}
proc constructTopOpeBRepDS_Transition*(O: TopAbs_Orientation): TopOpeBRepDS_Transition {.
    constructor, importcpp: "TopOpeBRepDS_Transition(@)",
    header: "TopOpeBRepDS_Transition.hxx".}
proc Set*(this: var TopOpeBRepDS_Transition; StateBefore: TopAbs_State;
         StateAfter: TopAbs_State; ShapeBefore: TopAbs_ShapeEnum = TopAbs_FACE;
         ShapeAfter: TopAbs_ShapeEnum = TopAbs_FACE) {.importcpp: "Set",
    header: "TopOpeBRepDS_Transition.hxx".}
proc StateBefore*(this: var TopOpeBRepDS_Transition; S: TopAbs_State) {.
    importcpp: "StateBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc StateAfter*(this: var TopOpeBRepDS_Transition; S: TopAbs_State) {.
    importcpp: "StateAfter", header: "TopOpeBRepDS_Transition.hxx".}
proc ShapeBefore*(this: var TopOpeBRepDS_Transition; SE: TopAbs_ShapeEnum) {.
    importcpp: "ShapeBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc ShapeAfter*(this: var TopOpeBRepDS_Transition; SE: TopAbs_ShapeEnum) {.
    importcpp: "ShapeAfter", header: "TopOpeBRepDS_Transition.hxx".}
proc Before*(this: var TopOpeBRepDS_Transition; S: TopAbs_State;
            ShapeBefore: TopAbs_ShapeEnum = TopAbs_FACE) {.importcpp: "Before",
    header: "TopOpeBRepDS_Transition.hxx".}
proc After*(this: var TopOpeBRepDS_Transition; S: TopAbs_State;
           ShapeAfter: TopAbs_ShapeEnum = TopAbs_FACE) {.importcpp: "After",
    header: "TopOpeBRepDS_Transition.hxx".}
proc Index*(this: var TopOpeBRepDS_Transition; I: Standard_Integer) {.
    importcpp: "Index", header: "TopOpeBRepDS_Transition.hxx".}
proc IndexBefore*(this: var TopOpeBRepDS_Transition; I: Standard_Integer) {.
    importcpp: "IndexBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc IndexAfter*(this: var TopOpeBRepDS_Transition; I: Standard_Integer) {.
    importcpp: "IndexAfter", header: "TopOpeBRepDS_Transition.hxx".}
proc Before*(this: TopOpeBRepDS_Transition): TopAbs_State {.noSideEffect,
    importcpp: "Before", header: "TopOpeBRepDS_Transition.hxx".}
proc ONBefore*(this: TopOpeBRepDS_Transition): TopAbs_ShapeEnum {.noSideEffect,
    importcpp: "ONBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc After*(this: TopOpeBRepDS_Transition): TopAbs_State {.noSideEffect,
    importcpp: "After", header: "TopOpeBRepDS_Transition.hxx".}
proc ONAfter*(this: TopOpeBRepDS_Transition): TopAbs_ShapeEnum {.noSideEffect,
    importcpp: "ONAfter", header: "TopOpeBRepDS_Transition.hxx".}
proc ShapeBefore*(this: TopOpeBRepDS_Transition): TopAbs_ShapeEnum {.noSideEffect,
    importcpp: "ShapeBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc ShapeAfter*(this: TopOpeBRepDS_Transition): TopAbs_ShapeEnum {.noSideEffect,
    importcpp: "ShapeAfter", header: "TopOpeBRepDS_Transition.hxx".}
proc Index*(this: TopOpeBRepDS_Transition): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRepDS_Transition.hxx".}
proc IndexBefore*(this: TopOpeBRepDS_Transition): Standard_Integer {.noSideEffect,
    importcpp: "IndexBefore", header: "TopOpeBRepDS_Transition.hxx".}
proc IndexAfter*(this: TopOpeBRepDS_Transition): Standard_Integer {.noSideEffect,
    importcpp: "IndexAfter", header: "TopOpeBRepDS_Transition.hxx".}
proc Set*(this: var TopOpeBRepDS_Transition; O: TopAbs_Orientation) {.
    importcpp: "Set", header: "TopOpeBRepDS_Transition.hxx".}
proc Orientation*(this: TopOpeBRepDS_Transition; S: TopAbs_State;
                 T: TopAbs_ShapeEnum = TopAbs_FACE): TopAbs_Orientation {.
    noSideEffect, importcpp: "Orientation", header: "TopOpeBRepDS_Transition.hxx".}
proc Complement*(this: TopOpeBRepDS_Transition): TopOpeBRepDS_Transition {.
    noSideEffect, importcpp: "Complement", header: "TopOpeBRepDS_Transition.hxx".}
proc IsUnknown*(this: TopOpeBRepDS_Transition): Standard_Boolean {.noSideEffect,
    importcpp: "IsUnknown", header: "TopOpeBRepDS_Transition.hxx".}