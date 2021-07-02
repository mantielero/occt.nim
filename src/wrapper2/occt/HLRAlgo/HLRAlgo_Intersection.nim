##  Created on: 1992-08-21
##  Created by: Christophe MARION
##  Copyright (c) 1992-1999 Matra Datavision
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

## ! Describes  an intersection  on   an edge to  hide.
## ! Contains a parameter and   a state (ON =   on  the
## ! face, OUT = above the face, IN = under the Face)

type
  HLRAlgoIntersection* {.importcpp: "HLRAlgo_Intersection",
                        header: "HLRAlgo_Intersection.hxx", bycopy.} = object


proc constructHLRAlgoIntersection*(): HLRAlgoIntersection {.constructor,
    importcpp: "HLRAlgo_Intersection(@)", header: "HLRAlgo_Intersection.hxx".}
proc constructHLRAlgoIntersection*(ori: TopAbsOrientation; lev: StandardInteger;
                                  segInd: StandardInteger; ind: StandardInteger;
                                  p: StandardReal; tol: StandardShortReal;
                                  s: TopAbsState): HLRAlgoIntersection {.
    constructor, importcpp: "HLRAlgo_Intersection(@)",
    header: "HLRAlgo_Intersection.hxx".}
proc orientation*(this: var HLRAlgoIntersection; ori: TopAbsOrientation) {.
    importcpp: "Orientation", header: "HLRAlgo_Intersection.hxx".}
proc orientation*(this: HLRAlgoIntersection): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "HLRAlgo_Intersection.hxx".}
proc level*(this: var HLRAlgoIntersection; lev: StandardInteger) {.importcpp: "Level",
    header: "HLRAlgo_Intersection.hxx".}
proc level*(this: HLRAlgoIntersection): StandardInteger {.noSideEffect,
    importcpp: "Level", header: "HLRAlgo_Intersection.hxx".}
proc segIndex*(this: var HLRAlgoIntersection; segInd: StandardInteger) {.
    importcpp: "SegIndex", header: "HLRAlgo_Intersection.hxx".}
proc segIndex*(this: HLRAlgoIntersection): StandardInteger {.noSideEffect,
    importcpp: "SegIndex", header: "HLRAlgo_Intersection.hxx".}
proc index*(this: var HLRAlgoIntersection; ind: StandardInteger) {.importcpp: "Index",
    header: "HLRAlgo_Intersection.hxx".}
proc index*(this: HLRAlgoIntersection): StandardInteger {.noSideEffect,
    importcpp: "Index", header: "HLRAlgo_Intersection.hxx".}
proc parameter*(this: var HLRAlgoIntersection; p: StandardReal) {.
    importcpp: "Parameter", header: "HLRAlgo_Intersection.hxx".}
proc parameter*(this: HLRAlgoIntersection): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: "HLRAlgo_Intersection.hxx".}
proc tolerance*(this: var HLRAlgoIntersection; t: StandardShortReal) {.
    importcpp: "Tolerance", header: "HLRAlgo_Intersection.hxx".}
proc tolerance*(this: HLRAlgoIntersection): StandardShortReal {.noSideEffect,
    importcpp: "Tolerance", header: "HLRAlgo_Intersection.hxx".}
proc state*(this: var HLRAlgoIntersection; s: TopAbsState) {.importcpp: "State",
    header: "HLRAlgo_Intersection.hxx".}
proc state*(this: HLRAlgoIntersection): TopAbsState {.noSideEffect,
    importcpp: "State", header: "HLRAlgo_Intersection.hxx".}

