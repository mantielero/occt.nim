##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Edge"
discard "forward decl of IntTools_Range"
discard "forward decl of Bnd_Box"
discard "forward decl of BRepAdaptor_Curve"
type
  IntToolsEdgeEdge* {.importcpp: "IntTools_EdgeEdge",
                     header: "IntTools_EdgeEdge.hxx", bycopy.} = object ## ! Empty contructor
                                                                   ## ! Checks the data
    ## ! Allows avoiding use Edge-Edge intersection
    ## ! algorithm (i.e. speeding up the Boolean algorithm)
    ## ! if the edges are coincided really.
    ## ! If it is not evidently set of this flag should
    ## ! be avoided (otherwise, the performance of
    ## ! Boolean algorithm will be slower).


proc constructIntToolsEdgeEdge*(): IntToolsEdgeEdge {.constructor,
    importcpp: "IntTools_EdgeEdge(@)", header: "IntTools_EdgeEdge.hxx".}
proc destroyIntToolsEdgeEdge*(this: var IntToolsEdgeEdge) {.
    importcpp: "#.~IntTools_EdgeEdge()", header: "IntTools_EdgeEdge.hxx".}
proc constructIntToolsEdgeEdge*(theEdge1: TopoDS_Edge; theEdge2: TopoDS_Edge): IntToolsEdgeEdge {.
    constructor, importcpp: "IntTools_EdgeEdge(@)", header: "IntTools_EdgeEdge.hxx".}
proc constructIntToolsEdgeEdge*(theEdge1: TopoDS_Edge; aT11: float; aT12: float;
                               theEdge2: TopoDS_Edge; aT21: float; aT22: float): IntToolsEdgeEdge {.
    constructor, importcpp: "IntTools_EdgeEdge(@)", header: "IntTools_EdgeEdge.hxx".}
proc setEdge1*(this: var IntToolsEdgeEdge; theEdge: TopoDS_Edge) {.
    importcpp: "SetEdge1", header: "IntTools_EdgeEdge.hxx".}
proc setEdge1*(this: var IntToolsEdgeEdge; theEdge: TopoDS_Edge; aT1: float; aT2: float) {.
    importcpp: "SetEdge1", header: "IntTools_EdgeEdge.hxx".}
proc setRange1*(this: var IntToolsEdgeEdge; theRange1: IntToolsRange) {.
    importcpp: "SetRange1", header: "IntTools_EdgeEdge.hxx".}
proc setRange1*(this: var IntToolsEdgeEdge; aT1: float; aT2: float) {.
    importcpp: "SetRange1", header: "IntTools_EdgeEdge.hxx".}
proc setEdge2*(this: var IntToolsEdgeEdge; theEdge: TopoDS_Edge) {.
    importcpp: "SetEdge2", header: "IntTools_EdgeEdge.hxx".}
proc setEdge2*(this: var IntToolsEdgeEdge; theEdge: TopoDS_Edge; aT1: float; aT2: float) {.
    importcpp: "SetEdge2", header: "IntTools_EdgeEdge.hxx".}
proc setRange2*(this: var IntToolsEdgeEdge; theRange: IntToolsRange) {.
    importcpp: "SetRange2", header: "IntTools_EdgeEdge.hxx".}
proc setRange2*(this: var IntToolsEdgeEdge; aT1: float; aT2: float) {.
    importcpp: "SetRange2", header: "IntTools_EdgeEdge.hxx".}
proc setFuzzyValue*(this: var IntToolsEdgeEdge; theFuzz: float) {.
    importcpp: "SetFuzzyValue", header: "IntTools_EdgeEdge.hxx".}
proc perform*(this: var IntToolsEdgeEdge) {.importcpp: "Perform",
                                        header: "IntTools_EdgeEdge.hxx".}
proc isDone*(this: IntToolsEdgeEdge): bool {.noSideEffect, importcpp: "IsDone",
    header: "IntTools_EdgeEdge.hxx".}
proc fuzzyValue*(this: IntToolsEdgeEdge): float {.noSideEffect,
    importcpp: "FuzzyValue", header: "IntTools_EdgeEdge.hxx".}
proc commonParts*(this: IntToolsEdgeEdge): IntToolsSequenceOfCommonPrts {.
    noSideEffect, importcpp: "CommonParts", header: "IntTools_EdgeEdge.hxx".}
proc useQuickCoincidenceCheck*(this: var IntToolsEdgeEdge; bFlag: bool) {.
    importcpp: "UseQuickCoincidenceCheck", header: "IntTools_EdgeEdge.hxx".}
proc isCoincidenceCheckedQuickly*(this: var IntToolsEdgeEdge): bool {.
    importcpp: "IsCoincidenceCheckedQuickly", header: "IntTools_EdgeEdge.hxx".}
