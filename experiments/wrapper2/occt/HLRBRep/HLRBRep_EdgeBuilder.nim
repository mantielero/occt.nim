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
  ../Standard/Standard_Handle, ../TopAbs/TopAbs_State,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../TopAbs/TopAbs_Orientation

discard "forward decl of HLRBRep_AreaLimit"
discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of HLRBRep_VertexList"
discard "forward decl of HLRAlgo_Intersection"
type
  HLRBRep_EdgeBuilder* {.importcpp: "HLRBRep_EdgeBuilder",
                        header: "HLRBRep_EdgeBuilder.hxx", bycopy.} = object ## ! Creates  an
                                                                        ## EdgeBuilder
                                                                        ## algorithm.    <VList>
                                                                        ## !
                                                                        ## describes   the edge    and  the
                                                                        ## interferences.
                                                                        ## !
                                                                        ## AreaLimits   are   created  from   the
                                                                        ## vertices.
                                                                        ## !
                                                                        ## Builds(IN) is
                                                                        ## automatically called.


proc constructHLRBRep_EdgeBuilder*(VList: var HLRBRep_VertexList): HLRBRep_EdgeBuilder {.
    constructor, importcpp: "HLRBRep_EdgeBuilder(@)",
    header: "HLRBRep_EdgeBuilder.hxx".}
proc InitAreas*(this: var HLRBRep_EdgeBuilder) {.importcpp: "InitAreas",
    header: "HLRBRep_EdgeBuilder.hxx".}
proc NextArea*(this: var HLRBRep_EdgeBuilder) {.importcpp: "NextArea",
    header: "HLRBRep_EdgeBuilder.hxx".}
proc PreviousArea*(this: var HLRBRep_EdgeBuilder) {.importcpp: "PreviousArea",
    header: "HLRBRep_EdgeBuilder.hxx".}
proc HasArea*(this: HLRBRep_EdgeBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "HasArea", header: "HLRBRep_EdgeBuilder.hxx".}
proc AreaState*(this: HLRBRep_EdgeBuilder): TopAbs_State {.noSideEffect,
    importcpp: "AreaState", header: "HLRBRep_EdgeBuilder.hxx".}
proc AreaEdgeState*(this: HLRBRep_EdgeBuilder): TopAbs_State {.noSideEffect,
    importcpp: "AreaEdgeState", header: "HLRBRep_EdgeBuilder.hxx".}
proc LeftLimit*(this: HLRBRep_EdgeBuilder): handle[HLRBRep_AreaLimit] {.
    noSideEffect, importcpp: "LeftLimit", header: "HLRBRep_EdgeBuilder.hxx".}
proc RightLimit*(this: HLRBRep_EdgeBuilder): handle[HLRBRep_AreaLimit] {.
    noSideEffect, importcpp: "RightLimit", header: "HLRBRep_EdgeBuilder.hxx".}
proc Builds*(this: var HLRBRep_EdgeBuilder; ToBuild: TopAbs_State) {.
    importcpp: "Builds", header: "HLRBRep_EdgeBuilder.hxx".}
proc MoreEdges*(this: HLRBRep_EdgeBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "MoreEdges", header: "HLRBRep_EdgeBuilder.hxx".}
proc NextEdge*(this: var HLRBRep_EdgeBuilder) {.importcpp: "NextEdge",
    header: "HLRBRep_EdgeBuilder.hxx".}
proc MoreVertices*(this: HLRBRep_EdgeBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "MoreVertices", header: "HLRBRep_EdgeBuilder.hxx".}
proc NextVertex*(this: var HLRBRep_EdgeBuilder) {.importcpp: "NextVertex",
    header: "HLRBRep_EdgeBuilder.hxx".}
proc Current*(this: HLRBRep_EdgeBuilder): HLRAlgo_Intersection {.noSideEffect,
    importcpp: "Current", header: "HLRBRep_EdgeBuilder.hxx".}
proc IsBoundary*(this: HLRBRep_EdgeBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "IsBoundary", header: "HLRBRep_EdgeBuilder.hxx".}
proc IsInterference*(this: HLRBRep_EdgeBuilder): Standard_Boolean {.noSideEffect,
    importcpp: "IsInterference", header: "HLRBRep_EdgeBuilder.hxx".}
proc Orientation*(this: HLRBRep_EdgeBuilder): TopAbs_Orientation {.noSideEffect,
    importcpp: "Orientation", header: "HLRBRep_EdgeBuilder.hxx".}
proc Destroy*(this: var HLRBRep_EdgeBuilder) {.importcpp: "Destroy",
    header: "HLRBRep_EdgeBuilder.hxx".}
proc destroyHLRBRep_EdgeBuilder*(this: var HLRBRep_EdgeBuilder) {.
    importcpp: "#.~HLRBRep_EdgeBuilder()", header: "HLRBRep_EdgeBuilder.hxx".}