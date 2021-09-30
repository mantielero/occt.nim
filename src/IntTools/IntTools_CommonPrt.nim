##  Created on: 2000-10-27
##  Created by: Peter KURNEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of TopoDS_Edge"
discard "forward decl of IntTools_Range"
discard "forward decl of gp_Pnt"
type
  IntToolsCommonPrt* {.importcpp: "IntTools_CommonPrt",
                      header: "IntTools_CommonPrt.hxx", bycopy.} = object ## ! Empty constructor


proc constructIntToolsCommonPrt*(): IntToolsCommonPrt {.constructor,
    importcpp: "IntTools_CommonPrt(@)", header: "IntTools_CommonPrt.hxx".}
proc constructIntToolsCommonPrt*(aCPrt: IntToolsCommonPrt): IntToolsCommonPrt {.
    constructor, importcpp: "IntTools_CommonPrt(@)",
    header: "IntTools_CommonPrt.hxx".}
proc assign*(this: var IntToolsCommonPrt; other: IntToolsCommonPrt): var IntToolsCommonPrt {.
    importcpp: "Assign", header: "IntTools_CommonPrt.hxx".}
proc setEdge1*(this: var IntToolsCommonPrt; anE: TopoDS_Edge) {.importcpp: "SetEdge1",
    header: "IntTools_CommonPrt.hxx".}
proc setEdge2*(this: var IntToolsCommonPrt; anE: TopoDS_Edge) {.importcpp: "SetEdge2",
    header: "IntTools_CommonPrt.hxx".}
proc setType*(this: var IntToolsCommonPrt; aType: TopAbsShapeEnum) {.
    importcpp: "SetType", header: "IntTools_CommonPrt.hxx".}
proc setRange1*(this: var IntToolsCommonPrt; aR: IntToolsRange) {.
    importcpp: "SetRange1", header: "IntTools_CommonPrt.hxx".}
proc setRange1*(this: var IntToolsCommonPrt; tf: cfloat; tl: cfloat) {.
    importcpp: "SetRange1", header: "IntTools_CommonPrt.hxx".}
proc appendRange2*(this: var IntToolsCommonPrt; aR: IntToolsRange) {.
    importcpp: "AppendRange2", header: "IntTools_CommonPrt.hxx".}
proc appendRange2*(this: var IntToolsCommonPrt; tf: cfloat; tl: cfloat) {.
    importcpp: "AppendRange2", header: "IntTools_CommonPrt.hxx".}
proc setVertexParameter1*(this: var IntToolsCommonPrt; tV: cfloat) {.
    importcpp: "SetVertexParameter1", header: "IntTools_CommonPrt.hxx".}
proc setVertexParameter2*(this: var IntToolsCommonPrt; tV: cfloat) {.
    importcpp: "SetVertexParameter2", header: "IntTools_CommonPrt.hxx".}
proc edge1*(this: IntToolsCommonPrt): TopoDS_Edge {.noSideEffect, importcpp: "Edge1",
    header: "IntTools_CommonPrt.hxx".}
proc edge2*(this: IntToolsCommonPrt): TopoDS_Edge {.noSideEffect, importcpp: "Edge2",
    header: "IntTools_CommonPrt.hxx".}
proc `type`*(this: IntToolsCommonPrt): TopAbsShapeEnum {.noSideEffect,
    importcpp: "Type", header: "IntTools_CommonPrt.hxx".}
proc range1*(this: IntToolsCommonPrt): IntToolsRange {.noSideEffect,
    importcpp: "Range1", header: "IntTools_CommonPrt.hxx".}
proc range1*(this: IntToolsCommonPrt; tf: var cfloat; tl: var cfloat) {.noSideEffect,
    importcpp: "Range1", header: "IntTools_CommonPrt.hxx".}
proc ranges2*(this: IntToolsCommonPrt): IntToolsSequenceOfRanges {.noSideEffect,
    importcpp: "Ranges2", header: "IntTools_CommonPrt.hxx".}
proc changeRanges2*(this: var IntToolsCommonPrt): var IntToolsSequenceOfRanges {.
    importcpp: "ChangeRanges2", header: "IntTools_CommonPrt.hxx".}
proc vertexParameter1*(this: IntToolsCommonPrt): cfloat {.noSideEffect,
    importcpp: "VertexParameter1", header: "IntTools_CommonPrt.hxx".}
proc vertexParameter2*(this: IntToolsCommonPrt): cfloat {.noSideEffect,
    importcpp: "VertexParameter2", header: "IntTools_CommonPrt.hxx".}
proc copy*(this: IntToolsCommonPrt; anOther: var IntToolsCommonPrt) {.noSideEffect,
    importcpp: "Copy", header: "IntTools_CommonPrt.hxx".}
proc allNullFlag*(this: IntToolsCommonPrt): bool {.noSideEffect,
    importcpp: "AllNullFlag", header: "IntTools_CommonPrt.hxx".}
proc setAllNullFlag*(this: var IntToolsCommonPrt; aFlag: bool) {.
    importcpp: "SetAllNullFlag", header: "IntTools_CommonPrt.hxx".}
proc setBoundingPoints*(this: var IntToolsCommonPrt; aP1: Pnt; aP2: Pnt) {.
    importcpp: "SetBoundingPoints", header: "IntTools_CommonPrt.hxx".}
proc boundingPoints*(this: IntToolsCommonPrt; aP1: var Pnt; aP2: var Pnt) {.noSideEffect,
    importcpp: "BoundingPoints", header: "IntTools_CommonPrt.hxx".}

























