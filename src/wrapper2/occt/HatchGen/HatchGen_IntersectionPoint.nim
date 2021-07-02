##  Created on: 1993-10-29
##  Created by: Jean Marc LACHAUME
##  Copyright (c) 1993-1999 Matra Datavision
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
  HatchGenIntersectionPoint* {.importcpp: "HatchGen_IntersectionPoint",
                              header: "HatchGen_IntersectionPoint.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Sets
                                                                                     ## the
                                                                                     ## index
                                                                                     ## of
                                                                                     ## the
                                                                                     ## supporting
                                                                                     ## curve.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## intersection
                                                                                     ## point.


proc setIndex*(this: var HatchGenIntersectionPoint; index: StandardInteger) {.
    importcpp: "SetIndex", header: "HatchGen_IntersectionPoint.hxx".}
proc index*(this: HatchGenIntersectionPoint): StandardInteger {.noSideEffect,
    importcpp: "Index", header: "HatchGen_IntersectionPoint.hxx".}
proc setParameter*(this: var HatchGenIntersectionPoint; parameter: StandardReal) {.
    importcpp: "SetParameter", header: "HatchGen_IntersectionPoint.hxx".}
proc parameter*(this: HatchGenIntersectionPoint): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: "HatchGen_IntersectionPoint.hxx".}
proc setPosition*(this: var HatchGenIntersectionPoint; position: TopAbsOrientation) {.
    importcpp: "SetPosition", header: "HatchGen_IntersectionPoint.hxx".}
proc position*(this: HatchGenIntersectionPoint): TopAbsOrientation {.noSideEffect,
    importcpp: "Position", header: "HatchGen_IntersectionPoint.hxx".}
proc setStateBefore*(this: var HatchGenIntersectionPoint; state: TopAbsState) {.
    importcpp: "SetStateBefore", header: "HatchGen_IntersectionPoint.hxx".}
proc stateBefore*(this: HatchGenIntersectionPoint): TopAbsState {.noSideEffect,
    importcpp: "StateBefore", header: "HatchGen_IntersectionPoint.hxx".}
proc setStateAfter*(this: var HatchGenIntersectionPoint; state: TopAbsState) {.
    importcpp: "SetStateAfter", header: "HatchGen_IntersectionPoint.hxx".}
proc stateAfter*(this: HatchGenIntersectionPoint): TopAbsState {.noSideEffect,
    importcpp: "StateAfter", header: "HatchGen_IntersectionPoint.hxx".}
proc setSegmentBeginning*(this: var HatchGenIntersectionPoint;
                         state: StandardBoolean = standardTrue) {.
    importcpp: "SetSegmentBeginning", header: "HatchGen_IntersectionPoint.hxx".}
proc segmentBeginning*(this: HatchGenIntersectionPoint): StandardBoolean {.
    noSideEffect, importcpp: "SegmentBeginning",
    header: "HatchGen_IntersectionPoint.hxx".}
proc setSegmentEnd*(this: var HatchGenIntersectionPoint;
                   state: StandardBoolean = standardTrue) {.
    importcpp: "SetSegmentEnd", header: "HatchGen_IntersectionPoint.hxx".}
proc segmentEnd*(this: HatchGenIntersectionPoint): StandardBoolean {.noSideEffect,
    importcpp: "SegmentEnd", header: "HatchGen_IntersectionPoint.hxx".}
proc dump*(this: HatchGenIntersectionPoint; index: StandardInteger = 0) {.noSideEffect,
    importcpp: "Dump", header: "HatchGen_IntersectionPoint.hxx".}

