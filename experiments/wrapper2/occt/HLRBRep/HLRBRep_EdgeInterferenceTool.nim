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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../HLRAlgo/HLRAlgo_Intersection,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../TopAbs/TopAbs_Orientation, ../Standard/Standard_Real

discard "forward decl of HLRBRep_Data"
discard "forward decl of HLRAlgo_Intersection"
discard "forward decl of gp_Dir"
discard "forward decl of HLRAlgo_Interference"
type
  HLRBRep_EdgeInterferenceTool* {.importcpp: "HLRBRep_EdgeInterferenceTool",
                                 header: "HLRBRep_EdgeInterferenceTool.hxx",
                                 bycopy.} = object


proc constructHLRBRep_EdgeInterferenceTool*(DS: handle[HLRBRep_Data]): HLRBRep_EdgeInterferenceTool {.
    constructor, importcpp: "HLRBRep_EdgeInterferenceTool(@)",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc LoadEdge*(this: var HLRBRep_EdgeInterferenceTool) {.importcpp: "LoadEdge",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc InitVertices*(this: var HLRBRep_EdgeInterferenceTool) {.
    importcpp: "InitVertices", header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc MoreVertices*(this: HLRBRep_EdgeInterferenceTool): Standard_Boolean {.
    noSideEffect, importcpp: "MoreVertices",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc NextVertex*(this: var HLRBRep_EdgeInterferenceTool) {.importcpp: "NextVertex",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc CurrentVertex*(this: HLRBRep_EdgeInterferenceTool): HLRAlgo_Intersection {.
    noSideEffect, importcpp: "CurrentVertex",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc CurrentOrientation*(this: HLRBRep_EdgeInterferenceTool): TopAbs_Orientation {.
    noSideEffect, importcpp: "CurrentOrientation",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc CurrentParameter*(this: HLRBRep_EdgeInterferenceTool): Standard_Real {.
    noSideEffect, importcpp: "CurrentParameter",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc IsPeriodic*(this: HLRBRep_EdgeInterferenceTool): Standard_Boolean {.
    noSideEffect, importcpp: "IsPeriodic",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc EdgeGeometry*(this: HLRBRep_EdgeInterferenceTool; Param: Standard_Real;
                  Tgt: var gp_Dir; Nrm: var gp_Dir; Curv: var Standard_Real) {.
    noSideEffect, importcpp: "EdgeGeometry",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc ParameterOfInterference*(this: HLRBRep_EdgeInterferenceTool;
                             I: HLRAlgo_Interference): Standard_Real {.
    noSideEffect, importcpp: "ParameterOfInterference",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc SameInterferences*(this: HLRBRep_EdgeInterferenceTool;
                       I1: HLRAlgo_Interference; I2: HLRAlgo_Interference): Standard_Boolean {.
    noSideEffect, importcpp: "SameInterferences",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc SameVertexAndInterference*(this: HLRBRep_EdgeInterferenceTool;
                               I: HLRAlgo_Interference): Standard_Boolean {.
    noSideEffect, importcpp: "SameVertexAndInterference",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}
proc InterferenceBoundaryGeometry*(this: HLRBRep_EdgeInterferenceTool;
                                  I: HLRAlgo_Interference; Tang: var gp_Dir;
                                  Norm: var gp_Dir; Curv: var Standard_Real) {.
    noSideEffect, importcpp: "InterferenceBoundaryGeometry",
    header: "HLRBRep_EdgeInterferenceTool.hxx".}