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

discard "forward decl of HLRBRep_Data"
discard "forward decl of HLRAlgo_Intersection"
discard "forward decl of gp_Dir"
discard "forward decl of HLRAlgo_Interference"
type
  HLRBRepEdgeInterferenceTool* {.importcpp: "HLRBRep_EdgeInterferenceTool",
                                header: "HLRBRep_EdgeInterferenceTool.hxx", bycopy.} = object


proc constructHLRBRepEdgeInterferenceTool*(ds: Handle[HLRBRepData]): HLRBRepEdgeInterferenceTool {.
    constructor, importcpp: "HLRBRep_EdgeInterferenceTool(@)",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc loadEdge*(this: var HLRBRepEdgeInterferenceTool) {.importcpp: "LoadEdge",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc initVertices*(this: var HLRBRepEdgeInterferenceTool) {.
    importcpp: "InitVertices", header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc moreVertices*(this: HLRBRepEdgeInterferenceTool): bool {.noSideEffect,
    importcpp: "MoreVertices", header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc nextVertex*(this: var HLRBRepEdgeInterferenceTool) {.importcpp: "NextVertex",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc currentVertex*(this: HLRBRepEdgeInterferenceTool): HLRAlgoIntersection {.
    noSideEffect, importcpp: "CurrentVertex",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc currentOrientation*(this: HLRBRepEdgeInterferenceTool): TopAbsOrientation {.
    noSideEffect, importcpp: "CurrentOrientation",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc currentParameter*(this: HLRBRepEdgeInterferenceTool): cfloat {.noSideEffect,
    importcpp: "CurrentParameter", header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc isPeriodic*(this: HLRBRepEdgeInterferenceTool): bool {.noSideEffect,
    importcpp: "IsPeriodic", header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc edgeGeometry*(this: HLRBRepEdgeInterferenceTool; param: cfloat; tgt: var Dir;
                  nrm: var Dir; curv: var cfloat) {.noSideEffect,
    importcpp: "EdgeGeometry", header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc parameterOfInterference*(this: HLRBRepEdgeInterferenceTool;
                             i: HLRAlgoInterference): cfloat {.noSideEffect,
    importcpp: "ParameterOfInterference",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc sameInterferences*(this: HLRBRepEdgeInterferenceTool; i1: HLRAlgoInterference;
                       i2: HLRAlgoInterference): bool {.noSideEffect,
    importcpp: "SameInterferences", header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc sameVertexAndInterference*(this: HLRBRepEdgeInterferenceTool;
                               i: HLRAlgoInterference): bool {.noSideEffect,
    importcpp: "SameVertexAndInterference",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc interferenceBoundaryGeometry*(this: HLRBRepEdgeInterferenceTool;
                                  i: HLRAlgoInterference; tang: var Dir;
                                  norm: var Dir; curv: var cfloat) {.noSideEffect,
    importcpp: "InterferenceBoundaryGeometry",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}

























