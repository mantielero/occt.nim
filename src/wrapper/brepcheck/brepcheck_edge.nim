import brepcheck_types
import ../tkbrep/topods/topods_types

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
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepCheck_Edge"


proc newBRepCheck_Edge*(E: TopoDS_Edge): BRepCheck_Edge {.cdecl, constructor,
    importcpp: "BRepCheck_Edge(@)", header: "BRepCheck_Edge.hxx".}
proc InContext*(this: var BRepCheck_Edge; ContextShape: TopoDS_Shape) {.cdecl,
    importcpp: "InContext", header: "BRepCheck_Edge.hxx".}
proc Minimum*(this: var BRepCheck_Edge) {.cdecl, importcpp: "Minimum",
                                      header: "BRepCheck_Edge.hxx".}
proc Blind*(this: var BRepCheck_Edge) {.cdecl, importcpp: "Blind",
                                    header: "BRepCheck_Edge.hxx".}
proc GeometricControls*(this: BRepCheck_Edge): bool {.noSideEffect, cdecl,
    importcpp: "GeometricControls", header: "BRepCheck_Edge.hxx".}
proc GeometricControls*(this: var BRepCheck_Edge; B: bool) {.cdecl,
    importcpp: "GeometricControls", header: "BRepCheck_Edge.hxx".}
proc Tolerance*(this: var BRepCheck_Edge): cfloat {.cdecl, importcpp: "Tolerance",
    header: "BRepCheck_Edge.hxx".}
proc SetStatus*(this: var BRepCheck_Edge; theStatus: BRepCheck_Status) {.cdecl,
    importcpp: "SetStatus", header: "BRepCheck_Edge.hxx".}
proc CheckPolygonOnTriangulation*(this: var BRepCheck_Edge; theEdge: TopoDS_Edge): BRepCheck_Status {.
    cdecl, importcpp: "CheckPolygonOnTriangulation", header: "BRepCheck_Edge.hxx".}