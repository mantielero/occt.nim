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
                              header: "TopTrans_SurfaceTransition.hxx", bycopy.} = object


proc `new`*(this: var TopTransSurfaceTransition; theSize: csize_t): pointer {.
    importcpp: "TopTrans_SurfaceTransition::operator new",
    header: "TopTrans_SurfaceTransition.hxx".}
proc `delete`*(this: var TopTransSurfaceTransition; theAddress: pointer) {.
    importcpp: "TopTrans_SurfaceTransition::operator delete",
    header: "TopTrans_SurfaceTransition.hxx".}
proc `new[]`*(this: var TopTransSurfaceTransition; theSize: csize_t): pointer {.
    importcpp: "TopTrans_SurfaceTransition::operator new[]",
    header: "TopTrans_SurfaceTransition.hxx".}
proc `delete[]`*(this: var TopTransSurfaceTransition; theAddress: pointer) {.
    importcpp: "TopTrans_SurfaceTransition::operator delete[]",
    header: "TopTrans_SurfaceTransition.hxx".}
proc `new`*(this: var TopTransSurfaceTransition; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopTrans_SurfaceTransition::operator new",
    header: "TopTrans_SurfaceTransition.hxx".}
proc `delete`*(this: var TopTransSurfaceTransition; a2: pointer; a3: pointer) {.
    importcpp: "TopTrans_SurfaceTransition::operator delete",
    header: "TopTrans_SurfaceTransition.hxx".}
proc constructTopTransSurfaceTransition*(): TopTransSurfaceTransition {.
    constructor, importcpp: "TopTrans_SurfaceTransition(@)",
    header: "TopTrans_SurfaceTransition.hxx".}
proc reset*(this: var TopTransSurfaceTransition; tgt: Dir; norm: Dir; maxD: Dir;
           minD: Dir; maxCurv: StandardReal; minCurv: StandardReal) {.
    importcpp: "Reset", header: "TopTrans_SurfaceTransition.hxx".}
proc reset*(this: var TopTransSurfaceTransition; tgt: Dir; norm: Dir) {.
    importcpp: "Reset", header: "TopTrans_SurfaceTransition.hxx".}
proc compare*(this: var TopTransSurfaceTransition; tole: StandardReal; norm: Dir;
             maxD: Dir; minD: Dir; maxCurv: StandardReal; minCurv: StandardReal;
             s: TopAbsOrientation; o: TopAbsOrientation) {.importcpp: "Compare",
    header: "TopTrans_SurfaceTransition.hxx".}
proc compare*(this: var TopTransSurfaceTransition; tole: StandardReal; norm: Dir;
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