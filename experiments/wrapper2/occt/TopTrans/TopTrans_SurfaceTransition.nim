##  Created on: 1992-01-30
##  Created by: Didier PIFFAULT
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

discard "forward decl of gp_Dir"
type
  TopTransSurfaceTransition* {.importcpp: "TopTrans_SurfaceTransition",
                              header: "TopTrans_SurfaceTransition.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Create
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## Surface
                                                                                     ## Transition.


proc constructTopTransSurfaceTransition*(): TopTransSurfaceTransition {.
    constructor, importcpp: "TopTrans_SurfaceTransition(@)",
    header: "TopTrans_SurfaceTransition.hxx".}
proc reset*(this: var TopTransSurfaceTransition; tgt: Dir; norm: Dir; maxD: Dir;
           minD: Dir; maxCurv: cfloat; minCurv: cfloat) {.importcpp: "Reset",
    header: "TopTrans_SurfaceTransition.hxx".}
proc reset*(this: var TopTransSurfaceTransition; tgt: Dir; norm: Dir) {.
    importcpp: "Reset", header: "TopTrans_SurfaceTransition.hxx".}
proc compare*(this: var TopTransSurfaceTransition; tole: cfloat; norm: Dir; maxD: Dir;
             minD: Dir; maxCurv: cfloat; minCurv: cfloat; s: TopAbsOrientation;
             o: TopAbsOrientation) {.importcpp: "Compare",
                                   header: "TopTrans_SurfaceTransition.hxx".}
proc compare*(this: var TopTransSurfaceTransition; tole: cfloat; norm: Dir;
             s: TopAbsOrientation; o: TopAbsOrientation) {.importcpp: "Compare",
    header: "TopTrans_SurfaceTransition.hxx".}
proc stateBefore*(this: TopTransSurfaceTransition): TopAbsState {.noSideEffect,
    importcpp: "StateBefore", header: "TopTrans_SurfaceTransition.hxx".}
proc stateAfter*(this: TopTransSurfaceTransition): TopAbsState {.noSideEffect,
    importcpp: "StateAfter", header: "TopTrans_SurfaceTransition.hxx".}
proc getBefore*(tran: TopAbsOrientation): TopAbsState {.
    importcpp: "TopTrans_SurfaceTransition::GetBefore(@)",
    header: "TopTrans_SurfaceTransition.hxx".}
proc getAfter*(tran: TopAbsOrientation): TopAbsState {.
    importcpp: "TopTrans_SurfaceTransition::GetAfter(@)",
    header: "TopTrans_SurfaceTransition.hxx".}

























