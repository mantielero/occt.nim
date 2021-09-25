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
discard "forward decl of BRepCheck_Face"
type
  HandleBRepCheckFace* = Handle[BRepCheckFace]
  BRepCheckFace* {.importcpp: "BRepCheck_Face", header: "BRepCheck_Face.hxx", bycopy.} = object of BRepCheckResult


proc constructBRepCheckFace*(f: TopoDS_Face): BRepCheckFace {.constructor,
    importcpp: "BRepCheck_Face(@)", header: "BRepCheck_Face.hxx".}
proc inContext*(this: var BRepCheckFace; contextShape: TopoDS_Shape) {.
    importcpp: "InContext", header: "BRepCheck_Face.hxx".}
proc minimum*(this: var BRepCheckFace) {.importcpp: "Minimum",
                                     header: "BRepCheck_Face.hxx".}
proc blind*(this: var BRepCheckFace) {.importcpp: "Blind",
                                   header: "BRepCheck_Face.hxx".}
proc intersectWires*(this: var BRepCheckFace; update: bool = false): BRepCheckStatus {.
    importcpp: "IntersectWires", header: "BRepCheck_Face.hxx".}
proc classifyWires*(this: var BRepCheckFace; update: bool = false): BRepCheckStatus {.
    importcpp: "ClassifyWires", header: "BRepCheck_Face.hxx".}
proc orientationOfWires*(this: var BRepCheckFace; update: bool = false): BRepCheckStatus {.
    importcpp: "OrientationOfWires", header: "BRepCheck_Face.hxx".}
proc setUnorientable*(this: var BRepCheckFace) {.importcpp: "SetUnorientable",
    header: "BRepCheck_Face.hxx".}
proc setStatus*(this: var BRepCheckFace; theStatus: BRepCheckStatus) {.
    importcpp: "SetStatus", header: "BRepCheck_Face.hxx".}
proc isUnorientable*(this: BRepCheckFace): bool {.noSideEffect,
    importcpp: "IsUnorientable", header: "BRepCheck_Face.hxx".}
proc geometricControls*(this: BRepCheckFace): bool {.noSideEffect,
    importcpp: "GeometricControls", header: "BRepCheck_Face.hxx".}
proc geometricControls*(this: var BRepCheckFace; b: bool) {.
    importcpp: "GeometricControls", header: "BRepCheck_Face.hxx".}
type
  BRepCheckFacebaseType* = BRepCheckResult

proc getTypeName*(): cstring {.importcpp: "BRepCheck_Face::get_type_name(@)",
                            header: "BRepCheck_Face.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepCheck_Face::get_type_descriptor(@)",
    header: "BRepCheck_Face.hxx".}
proc dynamicType*(this: BRepCheckFace): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepCheck_Face.hxx".}
