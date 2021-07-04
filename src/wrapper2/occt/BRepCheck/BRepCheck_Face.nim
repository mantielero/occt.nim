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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  BRepCheck_Status, ../TopTools/TopTools_DataMapOfShapeListOfShape,
  BRepCheck_Result

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepCheck_Face"
discard "forward decl of BRepCheck_Face"
type
  Handle_BRepCheck_Face* = handle[BRepCheck_Face]
  BRepCheck_Face* {.importcpp: "BRepCheck_Face", header: "BRepCheck_Face.hxx", bycopy.} = object of BRepCheck_Result


proc constructBRepCheck_Face*(F: TopoDS_Face): BRepCheck_Face {.constructor,
    importcpp: "BRepCheck_Face(@)", header: "BRepCheck_Face.hxx".}
proc InContext*(this: var BRepCheck_Face; ContextShape: TopoDS_Shape) {.
    importcpp: "InContext", header: "BRepCheck_Face.hxx".}
proc Minimum*(this: var BRepCheck_Face) {.importcpp: "Minimum",
                                      header: "BRepCheck_Face.hxx".}
proc Blind*(this: var BRepCheck_Face) {.importcpp: "Blind",
                                    header: "BRepCheck_Face.hxx".}
proc IntersectWires*(this: var BRepCheck_Face;
                    Update: Standard_Boolean = Standard_False): BRepCheck_Status {.
    importcpp: "IntersectWires", header: "BRepCheck_Face.hxx".}
proc ClassifyWires*(this: var BRepCheck_Face;
                   Update: Standard_Boolean = Standard_False): BRepCheck_Status {.
    importcpp: "ClassifyWires", header: "BRepCheck_Face.hxx".}
proc OrientationOfWires*(this: var BRepCheck_Face;
                        Update: Standard_Boolean = Standard_False): BRepCheck_Status {.
    importcpp: "OrientationOfWires", header: "BRepCheck_Face.hxx".}
proc SetUnorientable*(this: var BRepCheck_Face) {.importcpp: "SetUnorientable",
    header: "BRepCheck_Face.hxx".}
proc SetStatus*(this: var BRepCheck_Face; theStatus: BRepCheck_Status) {.
    importcpp: "SetStatus", header: "BRepCheck_Face.hxx".}
proc IsUnorientable*(this: BRepCheck_Face): Standard_Boolean {.noSideEffect,
    importcpp: "IsUnorientable", header: "BRepCheck_Face.hxx".}
proc GeometricControls*(this: BRepCheck_Face): Standard_Boolean {.noSideEffect,
    importcpp: "GeometricControls", header: "BRepCheck_Face.hxx".}
proc GeometricControls*(this: var BRepCheck_Face; B: Standard_Boolean) {.
    importcpp: "GeometricControls", header: "BRepCheck_Face.hxx".}
type
  BRepCheck_Facebase_type* = BRepCheck_Result

proc get_type_name*(): cstring {.importcpp: "BRepCheck_Face::get_type_name(@)",
                              header: "BRepCheck_Face.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepCheck_Face::get_type_descriptor(@)",
    header: "BRepCheck_Face.hxx".}
proc DynamicType*(this: BRepCheck_Face): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepCheck_Face.hxx".}