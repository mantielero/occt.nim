##  Created on: 1996-07-12
##  Created by: Stagiaire Mary FABIEN
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TopTools/TopTools_ListOfShape, ../TColStd/TColStd_ListOfTransient,
  ../TColStd/TColStd_IndexedDataMapOfTransientTransient, BRepTools_Modification,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape

discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom2d_Curve"
discard "forward decl of BRepTools_NurbsConvertModification"
discard "forward decl of BRepTools_NurbsConvertModification"
type
  Handle_BRepTools_NurbsConvertModification* = handle[
      BRepTools_NurbsConvertModification]

## ! Defines a modification of the  geometry by a  Trsf
## ! from gp. All methods return True and transform the
## ! geometry.

type
  BRepTools_NurbsConvertModification* {.importcpp: "BRepTools_NurbsConvertModification", header: "BRepTools_NurbsConvertModification.hxx",
                                       bycopy.} = object of BRepTools_Modification


proc constructBRepTools_NurbsConvertModification*(): BRepTools_NurbsConvertModification {.
    constructor, importcpp: "BRepTools_NurbsConvertModification(@)",
    header: "BRepTools_NurbsConvertModification.hxx".}
proc NewSurface*(this: var BRepTools_NurbsConvertModification; F: TopoDS_Face;
                S: var handle[Geom_Surface]; L: var TopLoc_Location;
                Tol: var Standard_Real; RevWires: var Standard_Boolean;
                RevFace: var Standard_Boolean): Standard_Boolean {.
    importcpp: "NewSurface", header: "BRepTools_NurbsConvertModification.hxx".}
proc NewCurve*(this: var BRepTools_NurbsConvertModification; E: TopoDS_Edge;
              C: var handle[Geom_Curve]; L: var TopLoc_Location;
              Tol: var Standard_Real): Standard_Boolean {.importcpp: "NewCurve",
    header: "BRepTools_NurbsConvertModification.hxx".}
proc NewPoint*(this: var BRepTools_NurbsConvertModification; V: TopoDS_Vertex;
              P: var gp_Pnt; Tol: var Standard_Real): Standard_Boolean {.
    importcpp: "NewPoint", header: "BRepTools_NurbsConvertModification.hxx".}
proc NewCurve2d*(this: var BRepTools_NurbsConvertModification; E: TopoDS_Edge;
                F: TopoDS_Face; NewE: TopoDS_Edge; NewF: TopoDS_Face;
                C: var handle[Geom2d_Curve]; Tol: var Standard_Real): Standard_Boolean {.
    importcpp: "NewCurve2d", header: "BRepTools_NurbsConvertModification.hxx".}
proc NewParameter*(this: var BRepTools_NurbsConvertModification; V: TopoDS_Vertex;
                  E: TopoDS_Edge; P: var Standard_Real; Tol: var Standard_Real): Standard_Boolean {.
    importcpp: "NewParameter", header: "BRepTools_NurbsConvertModification.hxx".}
proc Continuity*(this: var BRepTools_NurbsConvertModification; E: TopoDS_Edge;
                F1: TopoDS_Face; F2: TopoDS_Face; NewE: TopoDS_Edge;
                NewF1: TopoDS_Face; NewF2: TopoDS_Face): GeomAbs_Shape {.
    importcpp: "Continuity", header: "BRepTools_NurbsConvertModification.hxx".}
proc GetUpdatedEdges*(this: BRepTools_NurbsConvertModification): TopTools_ListOfShape {.
    noSideEffect, importcpp: "GetUpdatedEdges",
    header: "BRepTools_NurbsConvertModification.hxx".}
type
  BRepTools_NurbsConvertModificationbase_type* = BRepTools_Modification

proc get_type_name*(): cstring {.importcpp: "BRepTools_NurbsConvertModification::get_type_name(@)",
                              header: "BRepTools_NurbsConvertModification.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepTools_NurbsConvertModification::get_type_descriptor(@)",
    header: "BRepTools_NurbsConvertModification.hxx".}
proc DynamicType*(this: BRepTools_NurbsConvertModification): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepTools_NurbsConvertModification.hxx".}