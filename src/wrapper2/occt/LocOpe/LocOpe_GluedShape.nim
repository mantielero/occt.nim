##  Created on: 1996-01-30
##  Created by: Jacques GOUSSARD
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_MapOfShape, ../TopTools/TopTools_DataMapOfShapeShape,
  LocOpe_GeneratedShape, ../TopTools/TopTools_ListOfShape

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of LocOpe_GluedShape"
discard "forward decl of LocOpe_GluedShape"
type
  Handle_LocOpe_GluedShape* = handle[LocOpe_GluedShape]
  LocOpe_GluedShape* {.importcpp: "LocOpe_GluedShape",
                      header: "LocOpe_GluedShape.hxx", bycopy.} = object of LocOpe_GeneratedShape


proc constructLocOpe_GluedShape*(): LocOpe_GluedShape {.constructor,
    importcpp: "LocOpe_GluedShape(@)", header: "LocOpe_GluedShape.hxx".}
proc constructLocOpe_GluedShape*(S: TopoDS_Shape): LocOpe_GluedShape {.constructor,
    importcpp: "LocOpe_GluedShape(@)", header: "LocOpe_GluedShape.hxx".}
proc Init*(this: var LocOpe_GluedShape; S: TopoDS_Shape) {.importcpp: "Init",
    header: "LocOpe_GluedShape.hxx".}
proc GlueOnFace*(this: var LocOpe_GluedShape; F: TopoDS_Face) {.
    importcpp: "GlueOnFace", header: "LocOpe_GluedShape.hxx".}
proc GeneratingEdges*(this: var LocOpe_GluedShape): TopTools_ListOfShape {.
    importcpp: "GeneratingEdges", header: "LocOpe_GluedShape.hxx".}
proc Generated*(this: var LocOpe_GluedShape; V: TopoDS_Vertex): TopoDS_Edge {.
    importcpp: "Generated", header: "LocOpe_GluedShape.hxx".}
proc Generated*(this: var LocOpe_GluedShape; E: TopoDS_Edge): TopoDS_Face {.
    importcpp: "Generated", header: "LocOpe_GluedShape.hxx".}
proc OrientedFaces*(this: var LocOpe_GluedShape): TopTools_ListOfShape {.
    importcpp: "OrientedFaces", header: "LocOpe_GluedShape.hxx".}
type
  LocOpe_GluedShapebase_type* = LocOpe_GeneratedShape

proc get_type_name*(): cstring {.importcpp: "LocOpe_GluedShape::get_type_name(@)",
                              header: "LocOpe_GluedShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "LocOpe_GluedShape::get_type_descriptor(@)",
    header: "LocOpe_GluedShape.hxx".}
proc DynamicType*(this: LocOpe_GluedShape): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "LocOpe_GluedShape.hxx".}