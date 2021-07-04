##  Created on: 1994-08-25
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Trsf,
  BRepTools_Modification, ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape

discard "forward decl of gp_Trsf"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom2d_Curve"
discard "forward decl of BRepTools_TrsfModification"
discard "forward decl of BRepTools_TrsfModification"
type
  Handle_BRepTools_TrsfModification* = handle[BRepTools_TrsfModification]

## ! Describes a modification that uses a gp_Trsf to
## ! change the geometry of a shape. All functions return
## ! true and transform the geometry of the shape.

type
  BRepTools_TrsfModification* {.importcpp: "BRepTools_TrsfModification",
                               header: "BRepTools_TrsfModification.hxx", bycopy.} = object of BRepTools_Modification


proc constructBRepTools_TrsfModification*(T: gp_Trsf): BRepTools_TrsfModification {.
    constructor, importcpp: "BRepTools_TrsfModification(@)",
    header: "BRepTools_TrsfModification.hxx".}
proc Trsf*(this: var BRepTools_TrsfModification): var gp_Trsf {.importcpp: "Trsf",
    header: "BRepTools_TrsfModification.hxx".}
proc NewSurface*(this: var BRepTools_TrsfModification; F: TopoDS_Face;
                S: var handle[Geom_Surface]; L: var TopLoc_Location;
                Tol: var Standard_Real; RevWires: var Standard_Boolean;
                RevFace: var Standard_Boolean): Standard_Boolean {.
    importcpp: "NewSurface", header: "BRepTools_TrsfModification.hxx".}
proc NewCurve*(this: var BRepTools_TrsfModification; E: TopoDS_Edge;
              C: var handle[Geom_Curve]; L: var TopLoc_Location;
              Tol: var Standard_Real): Standard_Boolean {.importcpp: "NewCurve",
    header: "BRepTools_TrsfModification.hxx".}
proc NewPoint*(this: var BRepTools_TrsfModification; V: TopoDS_Vertex; P: var gp_Pnt;
              Tol: var Standard_Real): Standard_Boolean {.importcpp: "NewPoint",
    header: "BRepTools_TrsfModification.hxx".}
proc NewCurve2d*(this: var BRepTools_TrsfModification; E: TopoDS_Edge; F: TopoDS_Face;
                NewE: TopoDS_Edge; NewF: TopoDS_Face; C: var handle[Geom2d_Curve];
                Tol: var Standard_Real): Standard_Boolean {.importcpp: "NewCurve2d",
    header: "BRepTools_TrsfModification.hxx".}
proc NewParameter*(this: var BRepTools_TrsfModification; V: TopoDS_Vertex;
                  E: TopoDS_Edge; P: var Standard_Real; Tol: var Standard_Real): Standard_Boolean {.
    importcpp: "NewParameter", header: "BRepTools_TrsfModification.hxx".}
proc Continuity*(this: var BRepTools_TrsfModification; E: TopoDS_Edge;
                F1: TopoDS_Face; F2: TopoDS_Face; NewE: TopoDS_Edge;
                NewF1: TopoDS_Face; NewF2: TopoDS_Face): GeomAbs_Shape {.
    importcpp: "Continuity", header: "BRepTools_TrsfModification.hxx".}
type
  BRepTools_TrsfModificationbase_type* = BRepTools_Modification

proc get_type_name*(): cstring {.importcpp: "BRepTools_TrsfModification::get_type_name(@)",
                              header: "BRepTools_TrsfModification.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepTools_TrsfModification::get_type_descriptor(@)",
    header: "BRepTools_TrsfModification.hxx".}
proc DynamicType*(this: BRepTools_TrsfModification): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepTools_TrsfModification.hxx".}