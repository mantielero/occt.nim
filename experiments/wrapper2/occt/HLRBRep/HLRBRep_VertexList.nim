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
  ../Standard/Standard_Handle, ../HLRAlgo/HLRAlgo_ListIteratorOfInterferenceList,
  HLRBRep_EdgeInterferenceTool, ../Standard/Standard_Boolean,
  ../TopAbs/TopAbs_Orientation

discard "forward decl of HLRBRep_EdgeInterferenceTool"
discard "forward decl of HLRAlgo_Intersection"
type
  HLRBRep_VertexList* {.importcpp: "HLRBRep_VertexList",
                       header: "HLRBRep_VertexList.hxx", bycopy.} = object


proc constructHLRBRep_VertexList*(T: HLRBRep_EdgeInterferenceTool;
                                 I: HLRAlgo_ListIteratorOfInterferenceList): HLRBRep_VertexList {.
    constructor, importcpp: "HLRBRep_VertexList(@)",
    header: "HLRBRep_VertexList.hxx".}
proc IsPeriodic*(this: HLRBRep_VertexList): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "HLRBRep_VertexList.hxx".}
proc More*(this: HLRBRep_VertexList): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "HLRBRep_VertexList.hxx".}
proc Next*(this: var HLRBRep_VertexList) {.importcpp: "Next",
                                       header: "HLRBRep_VertexList.hxx".}
proc Current*(this: HLRBRep_VertexList): HLRAlgo_Intersection {.noSideEffect,
    importcpp: "Current", header: "HLRBRep_VertexList.hxx".}
proc IsBoundary*(this: HLRBRep_VertexList): Standard_Boolean {.noSideEffect,
    importcpp: "IsBoundary", header: "HLRBRep_VertexList.hxx".}
proc IsInterference*(this: HLRBRep_VertexList): Standard_Boolean {.noSideEffect,
    importcpp: "IsInterference", header: "HLRBRep_VertexList.hxx".}
proc Orientation*(this: HLRBRep_VertexList): TopAbs_Orientation {.noSideEffect,
    importcpp: "Orientation", header: "HLRBRep_VertexList.hxx".}
proc Transition*(this: HLRBRep_VertexList): TopAbs_Orientation {.noSideEffect,
    importcpp: "Transition", header: "HLRBRep_VertexList.hxx".}
proc BoundaryTransition*(this: HLRBRep_VertexList): TopAbs_Orientation {.
    noSideEffect, importcpp: "BoundaryTransition", header: "HLRBRep_VertexList.hxx".}