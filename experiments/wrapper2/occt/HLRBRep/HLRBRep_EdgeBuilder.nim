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

discard "forward decl of HLRBRep_AreaLimit"
discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of HLRBRep_VertexList"
discard "forward decl of HLRAlgo_Intersection"
type
  HLRBRepEdgeBuilder* {.importcpp: "HLRBRep_EdgeBuilder",
                       header: "HLRBRep_EdgeBuilder.hxx", bycopy.} = object ## ! Creates  an
                                                                       ## EdgeBuilder
                                                                       ## algorithm.    <VList>
                                                                       ## ! describes   the edge    and  the
                                                                       ## interferences.
                                                                       ## !
                                                                       ## AreaLimits   are   created  from   the   vertices.
                                                                       ## !
                                                                       ## Builds(IN) is
                                                                       ## automatically called.


proc constructHLRBRepEdgeBuilder*(vList: var HLRBRepVertexList): HLRBRepEdgeBuilder {.
    constructor, importcpp: "HLRBRep_EdgeBuilder(@)",
    header: "HLRBRep_EdgeBuilder.hxx".}
proc initAreas*(this: var HLRBRepEdgeBuilder) {.importcpp: "InitAreas",
    header: "HLRBRep_EdgeBuilder.hxx".}
proc nextArea*(this: var HLRBRepEdgeBuilder) {.importcpp: "NextArea",
    header: "HLRBRep_EdgeBuilder.hxx".}
proc previousArea*(this: var HLRBRepEdgeBuilder) {.importcpp: "PreviousArea",
    header: "HLRBRep_EdgeBuilder.hxx".}
proc hasArea*(this: HLRBRepEdgeBuilder): bool {.noSideEffect, importcpp: "HasArea",
    header: "HLRBRep_EdgeBuilder.hxx".}
proc areaState*(this: HLRBRepEdgeBuilder): TopAbsState {.noSideEffect,
    importcpp: "AreaState", header: "HLRBRep_EdgeBuilder.hxx".}
proc areaEdgeState*(this: HLRBRepEdgeBuilder): TopAbsState {.noSideEffect,
    importcpp: "AreaEdgeState", header: "HLRBRep_EdgeBuilder.hxx".}
proc leftLimit*(this: HLRBRepEdgeBuilder): Handle[HLRBRepAreaLimit] {.noSideEffect,
    importcpp: "LeftLimit", header: "HLRBRep_EdgeBuilder.hxx".}
proc rightLimit*(this: HLRBRepEdgeBuilder): Handle[HLRBRepAreaLimit] {.noSideEffect,
    importcpp: "RightLimit", header: "HLRBRep_EdgeBuilder.hxx".}
proc builds*(this: var HLRBRepEdgeBuilder; toBuild: TopAbsState) {.
    importcpp: "Builds", header: "HLRBRep_EdgeBuilder.hxx".}
proc moreEdges*(this: HLRBRepEdgeBuilder): bool {.noSideEffect,
    importcpp: "MoreEdges", header: "HLRBRep_EdgeBuilder.hxx".}
proc nextEdge*(this: var HLRBRepEdgeBuilder) {.importcpp: "NextEdge",
    header: "HLRBRep_EdgeBuilder.hxx".}
proc moreVertices*(this: HLRBRepEdgeBuilder): bool {.noSideEffect,
    importcpp: "MoreVertices", header: "HLRBRep_EdgeBuilder.hxx".}
proc nextVertex*(this: var HLRBRepEdgeBuilder) {.importcpp: "NextVertex",
    header: "HLRBRep_EdgeBuilder.hxx".}
proc current*(this: HLRBRepEdgeBuilder): HLRAlgoIntersection {.noSideEffect,
    importcpp: "Current", header: "HLRBRep_EdgeBuilder.hxx".}
proc isBoundary*(this: HLRBRepEdgeBuilder): bool {.noSideEffect,
    importcpp: "IsBoundary", header: "HLRBRep_EdgeBuilder.hxx".}
proc isInterference*(this: HLRBRepEdgeBuilder): bool {.noSideEffect,
    importcpp: "IsInterference", header: "HLRBRep_EdgeBuilder.hxx".}
proc orientation*(this: HLRBRepEdgeBuilder): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "HLRBRep_EdgeBuilder.hxx".}
proc destroy*(this: var HLRBRepEdgeBuilder) {.importcpp: "Destroy",
    header: "HLRBRep_EdgeBuilder.hxx".}
proc destroyHLRBRepEdgeBuilder*(this: var HLRBRepEdgeBuilder) {.
    importcpp: "#.~HLRBRep_EdgeBuilder()", header: "HLRBRep_EdgeBuilder.hxx".}
