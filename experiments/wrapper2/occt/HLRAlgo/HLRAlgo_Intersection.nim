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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopAbs/TopAbs_Orientation,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_ShortReal, ../TopAbs/TopAbs_State

## ! Describes  an intersection  on   an edge to  hide.
## ! Contains a parameter and   a state (ON =   on  the
## ! face, OUT = above the face, IN = under the Face)

type
  HLRAlgo_Intersection* {.importcpp: "HLRAlgo_Intersection",
                         header: "HLRAlgo_Intersection.hxx", bycopy.} = object


proc constructHLRAlgo_Intersection*(): HLRAlgo_Intersection {.constructor,
    importcpp: "HLRAlgo_Intersection(@)", header: "HLRAlgo_Intersection.hxx".}
proc constructHLRAlgo_Intersection*(Ori: TopAbs_Orientation; Lev: Standard_Integer;
                                   SegInd: Standard_Integer;
                                   Ind: Standard_Integer; P: Standard_Real;
                                   Tol: Standard_ShortReal; S: TopAbs_State): HLRAlgo_Intersection {.
    constructor, importcpp: "HLRAlgo_Intersection(@)",
    header: "HLRAlgo_Intersection.hxx".}
proc Orientation*(this: var HLRAlgo_Intersection; Ori: TopAbs_Orientation) {.
    importcpp: "Orientation", header: "HLRAlgo_Intersection.hxx".}
proc Orientation*(this: HLRAlgo_Intersection): TopAbs_Orientation {.noSideEffect,
    importcpp: "Orientation", header: "HLRAlgo_Intersection.hxx".}
proc Level*(this: var HLRAlgo_Intersection; Lev: Standard_Integer) {.
    importcpp: "Level", header: "HLRAlgo_Intersection.hxx".}
proc Level*(this: HLRAlgo_Intersection): Standard_Integer {.noSideEffect,
    importcpp: "Level", header: "HLRAlgo_Intersection.hxx".}
proc SegIndex*(this: var HLRAlgo_Intersection; SegInd: Standard_Integer) {.
    importcpp: "SegIndex", header: "HLRAlgo_Intersection.hxx".}
proc SegIndex*(this: HLRAlgo_Intersection): Standard_Integer {.noSideEffect,
    importcpp: "SegIndex", header: "HLRAlgo_Intersection.hxx".}
proc Index*(this: var HLRAlgo_Intersection; Ind: Standard_Integer) {.
    importcpp: "Index", header: "HLRAlgo_Intersection.hxx".}
proc Index*(this: HLRAlgo_Intersection): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "HLRAlgo_Intersection.hxx".}
proc Parameter*(this: var HLRAlgo_Intersection; P: Standard_Real) {.
    importcpp: "Parameter", header: "HLRAlgo_Intersection.hxx".}
proc Parameter*(this: HLRAlgo_Intersection): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "HLRAlgo_Intersection.hxx".}
proc Tolerance*(this: var HLRAlgo_Intersection; T: Standard_ShortReal) {.
    importcpp: "Tolerance", header: "HLRAlgo_Intersection.hxx".}
proc Tolerance*(this: HLRAlgo_Intersection): Standard_ShortReal {.noSideEffect,
    importcpp: "Tolerance", header: "HLRAlgo_Intersection.hxx".}
proc State*(this: var HLRAlgo_Intersection; S: TopAbs_State) {.importcpp: "State",
    header: "HLRAlgo_Intersection.hxx".}
proc State*(this: HLRAlgo_Intersection): TopAbs_State {.noSideEffect,
    importcpp: "State", header: "HLRAlgo_Intersection.hxx".}