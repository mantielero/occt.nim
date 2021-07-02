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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of LocOpe_GluedShape"
discard "forward decl of LocOpe_GluedShape"
type
  HandleLocOpeGluedShape* = Handle[LocOpeGluedShape]
  LocOpeGluedShape* {.importcpp: "LocOpe_GluedShape",
                     header: "LocOpe_GluedShape.hxx", bycopy.} = object of LocOpeGeneratedShape


proc constructLocOpeGluedShape*(): LocOpeGluedShape {.constructor,
    importcpp: "LocOpe_GluedShape(@)", header: "LocOpe_GluedShape.hxx".}
proc constructLocOpeGluedShape*(s: TopoDS_Shape): LocOpeGluedShape {.constructor,
    importcpp: "LocOpe_GluedShape(@)", header: "LocOpe_GluedShape.hxx".}
proc init*(this: var LocOpeGluedShape; s: TopoDS_Shape) {.importcpp: "Init",
    header: "LocOpe_GluedShape.hxx".}
proc glueOnFace*(this: var LocOpeGluedShape; f: TopoDS_Face) {.
    importcpp: "GlueOnFace", header: "LocOpe_GluedShape.hxx".}
proc generatingEdges*(this: var LocOpeGluedShape): TopToolsListOfShape {.
    importcpp: "GeneratingEdges", header: "LocOpe_GluedShape.hxx".}
proc generated*(this: var LocOpeGluedShape; v: TopoDS_Vertex): TopoDS_Edge {.
    importcpp: "Generated", header: "LocOpe_GluedShape.hxx".}
proc generated*(this: var LocOpeGluedShape; e: TopoDS_Edge): TopoDS_Face {.
    importcpp: "Generated", header: "LocOpe_GluedShape.hxx".}
proc orientedFaces*(this: var LocOpeGluedShape): TopToolsListOfShape {.
    importcpp: "OrientedFaces", header: "LocOpe_GluedShape.hxx".}
type
  LocOpeGluedShapebaseType* = LocOpeGeneratedShape

proc getTypeName*(): cstring {.importcpp: "LocOpe_GluedShape::get_type_name(@)",
                            header: "LocOpe_GluedShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "LocOpe_GluedShape::get_type_descriptor(@)",
    header: "LocOpe_GluedShape.hxx".}
proc dynamicType*(this: LocOpeGluedShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "LocOpe_GluedShape.hxx".}

