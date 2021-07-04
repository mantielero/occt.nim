##  Created on: 1999-03-09
##  Created by: Roman LYGIN
##  Copyright (c) 1999 Matra Datavision
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
  ../BRepTools/BRepTools_TrsfModification, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of gp_Trsf"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Surface"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom2d_Curve"
discard "forward decl of ShapeCustom_TrsfModification"
discard "forward decl of ShapeCustom_TrsfModification"
type
  Handle_ShapeCustom_TrsfModification* = handle[ShapeCustom_TrsfModification]

## ! Complements BRepTools_TrsfModification to provide reversible
## ! scaling regarding tolerances.
## ! Uses actual tolerances (attached to the shapes) not ones
## ! returned by BRep_Tool::Tolerance to work with tolerances
## ! lower than Precision::Confusion.

type
  ShapeCustom_TrsfModification* {.importcpp: "ShapeCustom_TrsfModification",
                                 header: "ShapeCustom_TrsfModification.hxx",
                                 bycopy.} = object of BRepTools_TrsfModification ## !
                                                                            ## Empty
                                                                            ## constructor


proc constructShapeCustom_TrsfModification*(T: gp_Trsf): ShapeCustom_TrsfModification {.
    constructor, importcpp: "ShapeCustom_TrsfModification(@)",
    header: "ShapeCustom_TrsfModification.hxx".}
proc NewSurface*(this: var ShapeCustom_TrsfModification; F: TopoDS_Face;
                S: var handle[Geom_Surface]; L: var TopLoc_Location;
                Tol: var Standard_Real; RevWires: var Standard_Boolean;
                RevFace: var Standard_Boolean): Standard_Boolean {.
    importcpp: "NewSurface", header: "ShapeCustom_TrsfModification.hxx".}
proc NewCurve*(this: var ShapeCustom_TrsfModification; E: TopoDS_Edge;
              C: var handle[Geom_Curve]; L: var TopLoc_Location;
              Tol: var Standard_Real): Standard_Boolean {.importcpp: "NewCurve",
    header: "ShapeCustom_TrsfModification.hxx".}
proc NewPoint*(this: var ShapeCustom_TrsfModification; V: TopoDS_Vertex;
              P: var gp_Pnt; Tol: var Standard_Real): Standard_Boolean {.
    importcpp: "NewPoint", header: "ShapeCustom_TrsfModification.hxx".}
proc NewCurve2d*(this: var ShapeCustom_TrsfModification; E: TopoDS_Edge;
                F: TopoDS_Face; NewE: TopoDS_Edge; NewF: TopoDS_Face;
                C: var handle[Geom2d_Curve]; Tol: var Standard_Real): Standard_Boolean {.
    importcpp: "NewCurve2d", header: "ShapeCustom_TrsfModification.hxx".}
proc NewParameter*(this: var ShapeCustom_TrsfModification; V: TopoDS_Vertex;
                  E: TopoDS_Edge; P: var Standard_Real; Tol: var Standard_Real): Standard_Boolean {.
    importcpp: "NewParameter", header: "ShapeCustom_TrsfModification.hxx".}
type
  ShapeCustom_TrsfModificationbase_type* = BRepTools_TrsfModification

proc get_type_name*(): cstring {.importcpp: "ShapeCustom_TrsfModification::get_type_name(@)",
                              header: "ShapeCustom_TrsfModification.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeCustom_TrsfModification::get_type_descriptor(@)",
    header: "ShapeCustom_TrsfModification.hxx".}
proc DynamicType*(this: ShapeCustom_TrsfModification): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeCustom_TrsfModification.hxx".}