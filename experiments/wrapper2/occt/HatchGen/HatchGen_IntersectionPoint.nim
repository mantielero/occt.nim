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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../TopAbs/TopAbs_Orientation, ../TopAbs/TopAbs_State,
  ../Standard/Standard_Boolean

type
  HatchGen_IntersectionPoint* {.importcpp: "HatchGen_IntersectionPoint",
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


proc SetIndex*(this: var HatchGen_IntersectionPoint; Index: Standard_Integer) {.
    importcpp: "SetIndex", header: "HatchGen_IntersectionPoint.hxx".}
proc Index*(this: HatchGen_IntersectionPoint): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "HatchGen_IntersectionPoint.hxx".}
proc SetParameter*(this: var HatchGen_IntersectionPoint; Parameter: Standard_Real) {.
    importcpp: "SetParameter", header: "HatchGen_IntersectionPoint.hxx".}
proc Parameter*(this: HatchGen_IntersectionPoint): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "HatchGen_IntersectionPoint.hxx".}
proc SetPosition*(this: var HatchGen_IntersectionPoint; Position: TopAbs_Orientation) {.
    importcpp: "SetPosition", header: "HatchGen_IntersectionPoint.hxx".}
proc Position*(this: HatchGen_IntersectionPoint): TopAbs_Orientation {.noSideEffect,
    importcpp: "Position", header: "HatchGen_IntersectionPoint.hxx".}
proc SetStateBefore*(this: var HatchGen_IntersectionPoint; State: TopAbs_State) {.
    importcpp: "SetStateBefore", header: "HatchGen_IntersectionPoint.hxx".}
proc StateBefore*(this: HatchGen_IntersectionPoint): TopAbs_State {.noSideEffect,
    importcpp: "StateBefore", header: "HatchGen_IntersectionPoint.hxx".}
proc SetStateAfter*(this: var HatchGen_IntersectionPoint; State: TopAbs_State) {.
    importcpp: "SetStateAfter", header: "HatchGen_IntersectionPoint.hxx".}
proc StateAfter*(this: HatchGen_IntersectionPoint): TopAbs_State {.noSideEffect,
    importcpp: "StateAfter", header: "HatchGen_IntersectionPoint.hxx".}
proc SetSegmentBeginning*(this: var HatchGen_IntersectionPoint;
                         State: Standard_Boolean = Standard_True) {.
    importcpp: "SetSegmentBeginning", header: "HatchGen_IntersectionPoint.hxx".}
proc SegmentBeginning*(this: HatchGen_IntersectionPoint): Standard_Boolean {.
    noSideEffect, importcpp: "SegmentBeginning",
    header: "HatchGen_IntersectionPoint.hxx".}
proc SetSegmentEnd*(this: var HatchGen_IntersectionPoint;
                   State: Standard_Boolean = Standard_True) {.
    importcpp: "SetSegmentEnd", header: "HatchGen_IntersectionPoint.hxx".}
proc SegmentEnd*(this: HatchGen_IntersectionPoint): Standard_Boolean {.noSideEffect,
    importcpp: "SegmentEnd", header: "HatchGen_IntersectionPoint.hxx".}
proc Dump*(this: HatchGen_IntersectionPoint; Index: Standard_Integer = 0) {.
    noSideEffect, importcpp: "Dump", header: "HatchGen_IntersectionPoint.hxx".}