##  Created on: 1994-08-30
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
  ../Standard/Standard, ../Standard/Standard_Type,
  Draft_IndexedDataMapOfFaceFaceInfo, Draft_IndexedDataMapOfEdgeEdgeInfo,
  Draft_IndexedDataMapOfVertexVertexInfo, ../Standard/Standard_Boolean,
  ../TopoDS/TopoDS_Shape, Draft_ErrorStatus, ../TopoDS/TopoDS_Face,
  ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../BRepTools/BRepTools_Modification, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../TopAbs/TopAbs_Orientation

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pln"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Draft_Modification"
discard "forward decl of Draft_Modification"
type
  Handle_Draft_Modification* = handle[Draft_Modification]
  Draft_Modification* {.importcpp: "Draft_Modification",
                       header: "Draft_Modification.hxx", bycopy.} = object of BRepTools_Modification


proc constructDraft_Modification*(S: TopoDS_Shape): Draft_Modification {.
    constructor, importcpp: "Draft_Modification(@)",
    header: "Draft_Modification.hxx".}
proc Clear*(this: var Draft_Modification) {.importcpp: "Clear",
                                        header: "Draft_Modification.hxx".}
proc Init*(this: var Draft_Modification; S: TopoDS_Shape) {.importcpp: "Init",
    header: "Draft_Modification.hxx".}
proc Add*(this: var Draft_Modification; F: TopoDS_Face; Direction: gp_Dir;
         Angle: Standard_Real; NeutralPlane: gp_Pln;
         Flag: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "Add", header: "Draft_Modification.hxx".}
proc Remove*(this: var Draft_Modification; F: TopoDS_Face) {.importcpp: "Remove",
    header: "Draft_Modification.hxx".}
proc Perform*(this: var Draft_Modification) {.importcpp: "Perform",
    header: "Draft_Modification.hxx".}
proc IsDone*(this: Draft_Modification): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Draft_Modification.hxx".}
proc Error*(this: Draft_Modification): Draft_ErrorStatus {.noSideEffect,
    importcpp: "Error", header: "Draft_Modification.hxx".}
proc ProblematicShape*(this: Draft_Modification): TopoDS_Shape {.noSideEffect,
    importcpp: "ProblematicShape", header: "Draft_Modification.hxx".}
proc ConnectedFaces*(this: var Draft_Modification; F: TopoDS_Face): TopTools_ListOfShape {.
    importcpp: "ConnectedFaces", header: "Draft_Modification.hxx".}
proc ModifiedFaces*(this: var Draft_Modification): TopTools_ListOfShape {.
    importcpp: "ModifiedFaces", header: "Draft_Modification.hxx".}
proc NewSurface*(this: var Draft_Modification; F: TopoDS_Face;
                S: var handle[Geom_Surface]; L: var TopLoc_Location;
                Tol: var Standard_Real; RevWires: var Standard_Boolean;
                RevFace: var Standard_Boolean): Standard_Boolean {.
    importcpp: "NewSurface", header: "Draft_Modification.hxx".}
proc NewCurve*(this: var Draft_Modification; E: TopoDS_Edge;
              C: var handle[Geom_Curve]; L: var TopLoc_Location;
              Tol: var Standard_Real): Standard_Boolean {.importcpp: "NewCurve",
    header: "Draft_Modification.hxx".}
proc NewPoint*(this: var Draft_Modification; V: TopoDS_Vertex; P: var gp_Pnt;
              Tol: var Standard_Real): Standard_Boolean {.importcpp: "NewPoint",
    header: "Draft_Modification.hxx".}
proc NewCurve2d*(this: var Draft_Modification; E: TopoDS_Edge; F: TopoDS_Face;
                NewE: TopoDS_Edge; NewF: TopoDS_Face; C: var handle[Geom2d_Curve];
                Tol: var Standard_Real): Standard_Boolean {.importcpp: "NewCurve2d",
    header: "Draft_Modification.hxx".}
proc NewParameter*(this: var Draft_Modification; V: TopoDS_Vertex; E: TopoDS_Edge;
                  P: var Standard_Real; Tol: var Standard_Real): Standard_Boolean {.
    importcpp: "NewParameter", header: "Draft_Modification.hxx".}
proc Continuity*(this: var Draft_Modification; E: TopoDS_Edge; F1: TopoDS_Face;
                F2: TopoDS_Face; NewE: TopoDS_Edge; NewF1: TopoDS_Face;
                NewF2: TopoDS_Face): GeomAbs_Shape {.importcpp: "Continuity",
    header: "Draft_Modification.hxx".}
type
  Draft_Modificationbase_type* = BRepTools_Modification

proc get_type_name*(): cstring {.importcpp: "Draft_Modification::get_type_name(@)",
                              header: "Draft_Modification.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Draft_Modification::get_type_descriptor(@)",
    header: "Draft_Modification.hxx".}
proc DynamicType*(this: Draft_Modification): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Draft_Modification.hxx".}