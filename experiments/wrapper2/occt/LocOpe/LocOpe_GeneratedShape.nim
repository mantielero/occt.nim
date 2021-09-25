##  Created on: 1996-01-08
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

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Face"
discard "forward decl of LocOpe_GeneratedShape"
discard "forward decl of LocOpe_GeneratedShape"
type
  HandleLocOpeGeneratedShape* = Handle[LocOpeGeneratedShape]
  LocOpeGeneratedShape* {.importcpp: "LocOpe_GeneratedShape",
                         header: "LocOpe_GeneratedShape.hxx", bycopy.} = object of StandardTransient


proc generatingEdges*(this: var LocOpeGeneratedShape): TopToolsListOfShape {.
    importcpp: "GeneratingEdges", header: "LocOpe_GeneratedShape.hxx".}
proc generated*(this: var LocOpeGeneratedShape; v: TopoDS_Vertex): TopoDS_Edge {.
    importcpp: "Generated", header: "LocOpe_GeneratedShape.hxx".}
proc generated*(this: var LocOpeGeneratedShape; e: TopoDS_Edge): TopoDS_Face {.
    importcpp: "Generated", header: "LocOpe_GeneratedShape.hxx".}
proc orientedFaces*(this: var LocOpeGeneratedShape): TopToolsListOfShape {.
    importcpp: "OrientedFaces", header: "LocOpe_GeneratedShape.hxx".}
type
  LocOpeGeneratedShapebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "LocOpe_GeneratedShape::get_type_name(@)",
                            header: "LocOpe_GeneratedShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "LocOpe_GeneratedShape::get_type_descriptor(@)",
    header: "LocOpe_GeneratedShape.hxx".}
proc dynamicType*(this: LocOpeGeneratedShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "LocOpe_GeneratedShape.hxx".}
