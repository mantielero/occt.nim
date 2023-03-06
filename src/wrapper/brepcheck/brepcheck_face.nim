import brepcheck_types
import ../topods/topods_types
##  Created on: 1995-12-15
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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepCheck_Face"
proc newBRepCheck_Face*(F: TopoDS_Face): BRepCheck_Face {.cdecl, constructor,
    importcpp: "BRepCheck_Face(@)", header: "BRepCheck_Face.hxx".}
proc InContext*(this: var BRepCheck_Face; ContextShape: TopoDS_Shape) {.cdecl,
    importcpp: "InContext", header: "BRepCheck_Face.hxx".}
proc Minimum*(this: var BRepCheck_Face) {.cdecl, importcpp: "Minimum",
                                      header: "BRepCheck_Face.hxx".}
proc Blind*(this: var BRepCheck_Face) {.cdecl, importcpp: "Blind",
                                    header: "BRepCheck_Face.hxx".}
proc IntersectWires*(this: var BRepCheck_Face; Update: bool = false): BRepCheck_Status {.
    cdecl, importcpp: "IntersectWires", header: "BRepCheck_Face.hxx".}
proc ClassifyWires*(this: var BRepCheck_Face; Update: bool = false): BRepCheck_Status {.
    cdecl, importcpp: "ClassifyWires", header: "BRepCheck_Face.hxx".}
proc OrientationOfWires*(this: var BRepCheck_Face; Update: bool = false): BRepCheck_Status {.
    cdecl, importcpp: "OrientationOfWires", header: "BRepCheck_Face.hxx".}
proc SetUnorientable*(this: var BRepCheck_Face) {.cdecl,
    importcpp: "SetUnorientable", header: "BRepCheck_Face.hxx".}
proc SetStatus*(this: var BRepCheck_Face; theStatus: BRepCheck_Status) {.cdecl,
    importcpp: "SetStatus", header: "BRepCheck_Face.hxx".}
proc IsUnorientable*(this: BRepCheck_Face): bool {.noSideEffect, cdecl,
    importcpp: "IsUnorientable", header: "BRepCheck_Face.hxx".}
proc GeometricControls*(this: BRepCheck_Face): bool {.noSideEffect, cdecl,
    importcpp: "GeometricControls", header: "BRepCheck_Face.hxx".}
proc GeometricControls*(this: var BRepCheck_Face; B: bool) {.cdecl,
    importcpp: "GeometricControls", header: "BRepCheck_Face.hxx".}