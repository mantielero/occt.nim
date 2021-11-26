##  Created on: 1995-12-11
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepCheck_Edge"
discard "forward decl of BRepCheck_Edge"
type
  HandleC1C1* = Handle[BRepCheckEdge]
  BRepCheckEdge* {.importcpp: "BRepCheck_Edge", header: "BRepCheck_Edge.hxx", bycopy.} = object of BRepCheckResult


proc constructBRepCheckEdge*(e: TopoDS_Edge): BRepCheckEdge {.constructor,
    importcpp: "BRepCheck_Edge(@)", header: "BRepCheck_Edge.hxx".}
proc inContext*(this: var BRepCheckEdge; contextShape: TopoDS_Shape) {.
    importcpp: "InContext", header: "BRepCheck_Edge.hxx".}
proc minimum*(this: var BRepCheckEdge) {.importcpp: "Minimum",
                                     header: "BRepCheck_Edge.hxx".}
proc blind*(this: var BRepCheckEdge) {.importcpp: "Blind",
                                   header: "BRepCheck_Edge.hxx".}
proc geometricControls*(this: BRepCheckEdge): StandardBoolean {.noSideEffect,
    importcpp: "GeometricControls", header: "BRepCheck_Edge.hxx".}
proc geometricControls*(this: var BRepCheckEdge; b: StandardBoolean) {.
    importcpp: "GeometricControls", header: "BRepCheck_Edge.hxx".}
proc tolerance*(this: var BRepCheckEdge): StandardReal {.importcpp: "Tolerance",
    header: "BRepCheck_Edge.hxx".}
proc setStatus*(this: var BRepCheckEdge; theStatus: BRepCheckStatus) {.
    importcpp: "SetStatus", header: "BRepCheck_Edge.hxx".}
proc checkPolygonOnTriangulation*(this: var BRepCheckEdge; theEdge: TopoDS_Edge): BRepCheckStatus {.
    importcpp: "CheckPolygonOnTriangulation", header: "BRepCheck_Edge.hxx".}
type
  BRepCheckEdgebaseType* = BRepCheckResult

proc getTypeName*(): cstring {.importcpp: "BRepCheck_Edge::get_type_name(@)",
                            header: "BRepCheck_Edge.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepCheck_Edge::get_type_descriptor(@)",
    header: "BRepCheck_Edge.hxx".}
proc dynamicType*(this: BRepCheckEdge): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepCheck_Edge.hxx".}