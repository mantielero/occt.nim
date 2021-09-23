##  Created on: 1999-05-08
##  Created by: Andrey BETENEV
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
  ../Standard/Standard, ../Standard/Standard_Type, ShapeCustom_Modification,
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
discard "forward decl of ShapeCustom_ConvertToRevolution"
discard "forward decl of ShapeCustom_ConvertToRevolution"
type
  Handle_ShapeCustom_ConvertToRevolution* = handle[ShapeCustom_ConvertToRevolution]

## ! implements a modification for the BRepTools
## ! Modifier algortihm. Converts all elementary
## ! surfaces into surfaces of revolution.

type
  ShapeCustom_ConvertToRevolution* {.importcpp: "ShapeCustom_ConvertToRevolution", header: "ShapeCustom_ConvertToRevolution.hxx",
                                    bycopy.} = object of ShapeCustom_Modification


proc constructShapeCustom_ConvertToRevolution*(): ShapeCustom_ConvertToRevolution {.
    constructor, importcpp: "ShapeCustom_ConvertToRevolution(@)",
    header: "ShapeCustom_ConvertToRevolution.hxx".}
proc NewSurface*(this: var ShapeCustom_ConvertToRevolution; F: TopoDS_Face;
                S: var handle[Geom_Surface]; L: var TopLoc_Location;
                Tol: var Standard_Real; RevWires: var Standard_Boolean;
                RevFace: var Standard_Boolean): Standard_Boolean {.
    importcpp: "NewSurface", header: "ShapeCustom_ConvertToRevolution.hxx".}
proc NewCurve*(this: var ShapeCustom_ConvertToRevolution; E: TopoDS_Edge;
              C: var handle[Geom_Curve]; L: var TopLoc_Location;
              Tol: var Standard_Real): Standard_Boolean {.importcpp: "NewCurve",
    header: "ShapeCustom_ConvertToRevolution.hxx".}
proc NewPoint*(this: var ShapeCustom_ConvertToRevolution; V: TopoDS_Vertex;
              P: var gp_Pnt; Tol: var Standard_Real): Standard_Boolean {.
    importcpp: "NewPoint", header: "ShapeCustom_ConvertToRevolution.hxx".}
proc NewCurve2d*(this: var ShapeCustom_ConvertToRevolution; E: TopoDS_Edge;
                F: TopoDS_Face; NewE: TopoDS_Edge; NewF: TopoDS_Face;
                C: var handle[Geom2d_Curve]; Tol: var Standard_Real): Standard_Boolean {.
    importcpp: "NewCurve2d", header: "ShapeCustom_ConvertToRevolution.hxx".}
proc NewParameter*(this: var ShapeCustom_ConvertToRevolution; V: TopoDS_Vertex;
                  E: TopoDS_Edge; P: var Standard_Real; Tol: var Standard_Real): Standard_Boolean {.
    importcpp: "NewParameter", header: "ShapeCustom_ConvertToRevolution.hxx".}
proc Continuity*(this: var ShapeCustom_ConvertToRevolution; E: TopoDS_Edge;
                F1: TopoDS_Face; F2: TopoDS_Face; NewE: TopoDS_Edge;
                NewF1: TopoDS_Face; NewF2: TopoDS_Face): GeomAbs_Shape {.
    importcpp: "Continuity", header: "ShapeCustom_ConvertToRevolution.hxx".}
type
  ShapeCustom_ConvertToRevolutionbase_type* = ShapeCustom_Modification

proc get_type_name*(): cstring {.importcpp: "ShapeCustom_ConvertToRevolution::get_type_name(@)",
                              header: "ShapeCustom_ConvertToRevolution.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeCustom_ConvertToRevolution::get_type_descriptor(@)",
    header: "ShapeCustom_ConvertToRevolution.hxx".}
proc DynamicType*(this: ShapeCustom_ConvertToRevolution): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeCustom_ConvertToRevolution.hxx".}