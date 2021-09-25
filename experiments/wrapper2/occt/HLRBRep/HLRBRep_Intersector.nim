##  Created on: 1992-08-26
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

discard "forward decl of StdFail_UndefinedDerivative"
discard "forward decl of gp_Lin"
discard "forward decl of IntRes2d_IntersectionPoint"
discard "forward decl of IntCurveSurface_IntersectionPoint"
discard "forward decl of IntRes2d_IntersectionSegment"
discard "forward decl of IntCurveSurface_IntersectionSegment"
type
  HLRBRepIntersector* {.importcpp: "HLRBRep_Intersector",
                       header: "HLRBRep_Intersector.hxx", bycopy.} = object


proc constructHLRBRepIntersector*(): HLRBRepIntersector {.constructor,
    importcpp: "HLRBRep_Intersector(@)", header: "HLRBRep_Intersector.hxx".}
proc perform*(this: var HLRBRepIntersector; a1: StandardAddress; da1: float; db1: float) {.
    importcpp: "Perform", header: "HLRBRep_Intersector.hxx".}
proc perform*(this: var HLRBRepIntersector; nA: int; a1: StandardAddress; da1: float;
             db1: float; nB: int; a2: StandardAddress; da2: float; db2: float;
             noBound: bool) {.importcpp: "Perform",
                            header: "HLRBRep_Intersector.hxx".}
proc simulateOnePoint*(this: var HLRBRepIntersector; a1: StandardAddress; u: float;
                      a2: StandardAddress; v: float) {.
    importcpp: "SimulateOnePoint", header: "HLRBRep_Intersector.hxx".}
proc load*(this: var HLRBRepIntersector; a: var StandardAddress) {.importcpp: "Load",
    header: "HLRBRep_Intersector.hxx".}
proc perform*(this: var HLRBRepIntersector; L: Lin; p: float) {.importcpp: "Perform",
    header: "HLRBRep_Intersector.hxx".}
proc isDone*(this: HLRBRepIntersector): bool {.noSideEffect, importcpp: "IsDone",
    header: "HLRBRep_Intersector.hxx".}
proc nbPoints*(this: HLRBRepIntersector): int {.noSideEffect, importcpp: "NbPoints",
    header: "HLRBRep_Intersector.hxx".}
proc point*(this: HLRBRepIntersector; n: int): IntRes2dIntersectionPoint {.
    noSideEffect, importcpp: "Point", header: "HLRBRep_Intersector.hxx".}
proc cSPoint*(this: HLRBRepIntersector; n: int): IntCurveSurfaceIntersectionPoint {.
    noSideEffect, importcpp: "CSPoint", header: "HLRBRep_Intersector.hxx".}
proc nbSegments*(this: HLRBRepIntersector): int {.noSideEffect,
    importcpp: "NbSegments", header: "HLRBRep_Intersector.hxx".}
proc segment*(this: HLRBRepIntersector; n: int): IntRes2dIntersectionSegment {.
    noSideEffect, importcpp: "Segment", header: "HLRBRep_Intersector.hxx".}
proc cSSegment*(this: HLRBRepIntersector; n: int): IntCurveSurfaceIntersectionSegment {.
    noSideEffect, importcpp: "CSSegment", header: "HLRBRep_Intersector.hxx".}
proc destroy*(this: var HLRBRepIntersector) {.importcpp: "Destroy",
    header: "HLRBRep_Intersector.hxx".}
proc destroyHLRBRepIntersector*(this: var HLRBRepIntersector) {.
    importcpp: "#.~HLRBRep_Intersector()", header: "HLRBRep_Intersector.hxx".}
