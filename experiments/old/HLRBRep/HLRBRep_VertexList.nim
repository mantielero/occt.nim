##  Created on: 1997-04-17
##  Created by: Christophe MARION
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of HLRBRep_EdgeInterferenceTool"
discard "forward decl of HLRAlgo_Intersection"
type
  HLRBRepVertexList* {.importcpp: "HLRBRep_VertexList",
                      header: "HLRBRep_VertexList.hxx", bycopy.} = object


proc constructHLRBRepVertexList*(t: HLRBRepEdgeInterferenceTool;
                                i: HLRAlgoListIteratorOfInterferenceList): HLRBRepVertexList {.
    constructor, importcpp: "HLRBRep_VertexList(@)",
    header: "HLRBRep_VertexList.hxx".}
proc isPeriodic*(this: HLRBRepVertexList): bool {.noSideEffect,
    importcpp: "IsPeriodic", header: "HLRBRep_VertexList.hxx".}
proc more*(this: HLRBRepVertexList): bool {.noSideEffect, importcpp: "More",
                                        header: "HLRBRep_VertexList.hxx".}
proc next*(this: var HLRBRepVertexList) {.importcpp: "Next",
                                      header: "HLRBRep_VertexList.hxx".}
proc current*(this: HLRBRepVertexList): HLRAlgoIntersection {.noSideEffect,
    importcpp: "Current", header: "HLRBRep_VertexList.hxx".}
proc isBoundary*(this: HLRBRepVertexList): bool {.noSideEffect,
    importcpp: "IsBoundary", header: "HLRBRep_VertexList.hxx".}
proc isInterference*(this: HLRBRepVertexList): bool {.noSideEffect,
    importcpp: "IsInterference", header: "HLRBRep_VertexList.hxx".}
proc orientation*(this: HLRBRepVertexList): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "HLRBRep_VertexList.hxx".}
proc transition*(this: HLRBRepVertexList): TopAbsOrientation {.noSideEffect,
    importcpp: "Transition", header: "HLRBRep_VertexList.hxx".}
proc boundaryTransition*(this: HLRBRepVertexList): TopAbsOrientation {.noSideEffect,
    importcpp: "BoundaryTransition", header: "HLRBRep_VertexList.hxx".}

























