import brepcheck_types
import ../topods/topods_types
##  Created on: 1995-12-12
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

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of BRepCheck_Wire"

proc newBRepCheck_Wire*(W: TopoDS_Wire): BRepCheck_Wire {.cdecl, constructor,
    importcpp: "BRepCheck_Wire(@)", header: "BRepCheck_Wire.hxx".}
proc InContext*(this: var BRepCheck_Wire; ContextShape: TopoDS_Shape) {.cdecl,
    importcpp: "InContext", header: "BRepCheck_Wire.hxx".}
proc Minimum*(this: var BRepCheck_Wire) {.cdecl, importcpp: "Minimum",
                                      header: "BRepCheck_Wire.hxx".}
proc Blind*(this: var BRepCheck_Wire) {.cdecl, importcpp: "Blind",
                                    header: "BRepCheck_Wire.hxx".}
proc Closed*(this: var BRepCheck_Wire; Update: bool = false): BRepCheck_Status {.cdecl,
    importcpp: "Closed", header: "BRepCheck_Wire.hxx".}
proc Closed2d*(this: var BRepCheck_Wire; F: TopoDS_Face; Update: bool = false): BRepCheck_Status {.
    cdecl, importcpp: "Closed2d", header: "BRepCheck_Wire.hxx".}
proc Orientation*(this: var BRepCheck_Wire; F: TopoDS_Face; Update: bool = false): BRepCheck_Status {.
    cdecl, importcpp: "Orientation", header: "BRepCheck_Wire.hxx".}
proc SelfIntersect*(this: var BRepCheck_Wire; F: TopoDS_Face; E1: var TopoDS_Edge;
                   E2: var TopoDS_Edge; Update: bool = false): BRepCheck_Status {.cdecl,
    importcpp: "SelfIntersect", header: "BRepCheck_Wire.hxx".}
proc GeometricControls*(this: BRepCheck_Wire): bool {.noSideEffect, cdecl,
    importcpp: "GeometricControls", header: "BRepCheck_Wire.hxx".}
proc GeometricControls*(this: var BRepCheck_Wire; B: bool) {.cdecl,
    importcpp: "GeometricControls", header: "BRepCheck_Wire.hxx".}
proc SetStatus*(this: var BRepCheck_Wire; theStatus: BRepCheck_Status) {.cdecl,
    importcpp: "SetStatus", header: "BRepCheck_Wire.hxx".}