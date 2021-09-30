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
  TopTransCurveTransition* {.importcpp: "TopTrans_CurveTransition",
                            header: "TopTrans_CurveTransition.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Compare
                                                                                 ## two
                                                                                 ## curvature
                                                                                 ## and
                                                                                 ## return
                                                                                 ## true
                                                                                 ## if
                                                                                 ## N1,C1
                                                                                 ## is
                                                                                 ##
                                                                                 ## !
                                                                                 ## before
                                                                                 ## N2,C2
                                                                                 ## in
                                                                                 ## the
                                                                                 ## edge
                                                                                 ## orientation


proc `new`*(this: var TopTransCurveTransition; theSize: csize_t): pointer {.
    importcpp: "TopTrans_CurveTransition::operator new",
    header: "TopTrans_CurveTransition.hxx".}
proc `delete`*(this: var TopTransCurveTransition; theAddress: pointer) {.
    importcpp: "TopTrans_CurveTransition::operator delete",
    header: "TopTrans_CurveTransition.hxx".}
proc `new[]`*(this: var TopTransCurveTransition; theSize: csize_t): pointer {.
    importcpp: "TopTrans_CurveTransition::operator new[]",
    header: "TopTrans_CurveTransition.hxx".}
proc `delete[]`*(this: var TopTransCurveTransition; theAddress: pointer) {.
    importcpp: "TopTrans_CurveTransition::operator delete[]",
    header: "TopTrans_CurveTransition.hxx".}
proc `new`*(this: var TopTransCurveTransition; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopTrans_CurveTransition::operator new",
    header: "TopTrans_CurveTransition.hxx".}
proc `delete`*(this: var TopTransCurveTransition; a2: pointer; a3: pointer) {.
    importcpp: "TopTrans_CurveTransition::operator delete",
    header: "TopTrans_CurveTransition.hxx".}
proc constructTopTransCurveTransition*(): TopTransCurveTransition {.constructor,
    importcpp: "TopTrans_CurveTransition(@)",
    header: "TopTrans_CurveTransition.hxx".}
proc reset*(this: var TopTransCurveTransition; tgt: Dir; norm: Dir; curv: StandardReal) {.
    importcpp: "Reset", header: "TopTrans_CurveTransition.hxx".}
proc reset*(this: var TopTransCurveTransition; tgt: Dir) {.importcpp: "Reset",
    header: "TopTrans_CurveTransition.hxx".}
proc compare*(this: var TopTransCurveTransition; tole: StandardReal; tang: Dir;
             norm: Dir; curv: StandardReal; s: TopAbsOrientation;
             `or`: TopAbsOrientation) {.importcpp: "Compare",
                                      header: "TopTrans_CurveTransition.hxx".}
proc stateBefore*(this: TopTransCurveTransition): TopAbsState {.noSideEffect,
    importcpp: "StateBefore", header: "TopTrans_CurveTransition.hxx".}
proc stateAfter*(this: TopTransCurveTransition): TopAbsState {.noSideEffect,
    importcpp: "StateAfter", header: "TopTrans_CurveTransition.hxx".}