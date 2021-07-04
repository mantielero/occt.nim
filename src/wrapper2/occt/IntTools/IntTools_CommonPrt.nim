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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Edge, ../TopAbs/TopAbs_ShapeEnum,
  IntTools_Range, ../Standard/Standard_Real, IntTools_SequenceOfRanges,
  ../Standard/Standard_Boolean, ../gp/gp_Pnt

discard "forward decl of TopoDS_Edge"
discard "forward decl of IntTools_Range"
discard "forward decl of gp_Pnt"
type
  IntTools_CommonPrt* {.importcpp: "IntTools_CommonPrt",
                       header: "IntTools_CommonPrt.hxx", bycopy.} = object ## ! Empty
                                                                      ## constructor


proc constructIntTools_CommonPrt*(): IntTools_CommonPrt {.constructor,
    importcpp: "IntTools_CommonPrt(@)", header: "IntTools_CommonPrt.hxx".}
proc constructIntTools_CommonPrt*(aCPrt: IntTools_CommonPrt): IntTools_CommonPrt {.
    constructor, importcpp: "IntTools_CommonPrt(@)",
    header: "IntTools_CommonPrt.hxx".}
proc Assign*(this: var IntTools_CommonPrt; Other: IntTools_CommonPrt): var IntTools_CommonPrt {.
    importcpp: "Assign", header: "IntTools_CommonPrt.hxx".}
proc SetEdge1*(this: var IntTools_CommonPrt; anE: TopoDS_Edge) {.
    importcpp: "SetEdge1", header: "IntTools_CommonPrt.hxx".}
proc SetEdge2*(this: var IntTools_CommonPrt; anE: TopoDS_Edge) {.
    importcpp: "SetEdge2", header: "IntTools_CommonPrt.hxx".}
proc SetType*(this: var IntTools_CommonPrt; aType: TopAbs_ShapeEnum) {.
    importcpp: "SetType", header: "IntTools_CommonPrt.hxx".}
proc SetRange1*(this: var IntTools_CommonPrt; aR: IntTools_Range) {.
    importcpp: "SetRange1", header: "IntTools_CommonPrt.hxx".}
proc SetRange1*(this: var IntTools_CommonPrt; tf: Standard_Real; tl: Standard_Real) {.
    importcpp: "SetRange1", header: "IntTools_CommonPrt.hxx".}
proc AppendRange2*(this: var IntTools_CommonPrt; aR: IntTools_Range) {.
    importcpp: "AppendRange2", header: "IntTools_CommonPrt.hxx".}
proc AppendRange2*(this: var IntTools_CommonPrt; tf: Standard_Real; tl: Standard_Real) {.
    importcpp: "AppendRange2", header: "IntTools_CommonPrt.hxx".}
proc SetVertexParameter1*(this: var IntTools_CommonPrt; tV: Standard_Real) {.
    importcpp: "SetVertexParameter1", header: "IntTools_CommonPrt.hxx".}
proc SetVertexParameter2*(this: var IntTools_CommonPrt; tV: Standard_Real) {.
    importcpp: "SetVertexParameter2", header: "IntTools_CommonPrt.hxx".}
proc Edge1*(this: IntTools_CommonPrt): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge1", header: "IntTools_CommonPrt.hxx".}
proc Edge2*(this: IntTools_CommonPrt): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge2", header: "IntTools_CommonPrt.hxx".}
proc Type*(this: IntTools_CommonPrt): TopAbs_ShapeEnum {.noSideEffect,
    importcpp: "Type", header: "IntTools_CommonPrt.hxx".}
proc Range1*(this: IntTools_CommonPrt): IntTools_Range {.noSideEffect,
    importcpp: "Range1", header: "IntTools_CommonPrt.hxx".}
proc Range1*(this: IntTools_CommonPrt; tf: var Standard_Real; tl: var Standard_Real) {.
    noSideEffect, importcpp: "Range1", header: "IntTools_CommonPrt.hxx".}
proc Ranges2*(this: IntTools_CommonPrt): IntTools_SequenceOfRanges {.noSideEffect,
    importcpp: "Ranges2", header: "IntTools_CommonPrt.hxx".}
proc ChangeRanges2*(this: var IntTools_CommonPrt): var IntTools_SequenceOfRanges {.
    importcpp: "ChangeRanges2", header: "IntTools_CommonPrt.hxx".}
proc VertexParameter1*(this: IntTools_CommonPrt): Standard_Real {.noSideEffect,
    importcpp: "VertexParameter1", header: "IntTools_CommonPrt.hxx".}
proc VertexParameter2*(this: IntTools_CommonPrt): Standard_Real {.noSideEffect,
    importcpp: "VertexParameter2", header: "IntTools_CommonPrt.hxx".}
proc Copy*(this: IntTools_CommonPrt; anOther: var IntTools_CommonPrt) {.noSideEffect,
    importcpp: "Copy", header: "IntTools_CommonPrt.hxx".}
proc AllNullFlag*(this: IntTools_CommonPrt): Standard_Boolean {.noSideEffect,
    importcpp: "AllNullFlag", header: "IntTools_CommonPrt.hxx".}
proc SetAllNullFlag*(this: var IntTools_CommonPrt; aFlag: Standard_Boolean) {.
    importcpp: "SetAllNullFlag", header: "IntTools_CommonPrt.hxx".}
proc SetBoundingPoints*(this: var IntTools_CommonPrt; aP1: gp_Pnt; aP2: gp_Pnt) {.
    importcpp: "SetBoundingPoints", header: "IntTools_CommonPrt.hxx".}
proc BoundingPoints*(this: IntTools_CommonPrt; aP1: var gp_Pnt; aP2: var gp_Pnt) {.
    noSideEffect, importcpp: "BoundingPoints", header: "IntTools_CommonPrt.hxx".}