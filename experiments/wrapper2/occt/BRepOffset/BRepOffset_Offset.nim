##  Created on: 1995-10-19
##  Created by: Bruno DUMORTIER
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

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
# when defined(Status):
#   discard
## ! This class compute elemenary offset surface.
## ! Evaluate the offset generated :
## ! 1 - from a face.
## ! 2 - from an edge.
## ! 3 - from a vertex.

type
  BRepOffsetOffset* {.importcpp: "BRepOffset_Offset",
                     header: "BRepOffset_Offset.hxx", bycopy.} = object


proc constructBRepOffsetOffset*(): BRepOffsetOffset {.constructor,
    importcpp: "BRepOffset_Offset(@)", header: "BRepOffset_Offset.hxx".}
proc constructBRepOffsetOffset*(face: TopoDS_Face; offset: float;
                               offsetOutside: bool = true;
                               joinType: GeomAbsJoinType = geomAbsArc): BRepOffsetOffset {.
    constructor, importcpp: "BRepOffset_Offset(@)", header: "BRepOffset_Offset.hxx".}
proc constructBRepOffsetOffset*(face: TopoDS_Face; offset: float;
                               created: TopToolsDataMapOfShapeShape;
                               offsetOutside: bool = true;
                               joinType: GeomAbsJoinType = geomAbsArc): BRepOffsetOffset {.
    constructor, importcpp: "BRepOffset_Offset(@)", header: "BRepOffset_Offset.hxx".}
proc constructBRepOffsetOffset*(path: TopoDS_Edge; edge1: TopoDS_Edge;
                               edge2: TopoDS_Edge; offset: float;
                               polynomial: bool = false; tol: float = 1.0e-4;
                               conti: GeomAbsShape = geomAbsC1): BRepOffsetOffset {.
    constructor, importcpp: "BRepOffset_Offset(@)", header: "BRepOffset_Offset.hxx".}
proc constructBRepOffsetOffset*(path: TopoDS_Edge; edge1: TopoDS_Edge;
                               edge2: TopoDS_Edge; offset: float;
                               firstEdge: TopoDS_Edge; lastEdge: TopoDS_Edge;
                               polynomial: bool = false; tol: float = 1.0e-4;
                               conti: GeomAbsShape = geomAbsC1): BRepOffsetOffset {.
    constructor, importcpp: "BRepOffset_Offset(@)", header: "BRepOffset_Offset.hxx".}
proc constructBRepOffsetOffset*(vertex: TopoDS_Vertex; lEdge: TopToolsListOfShape;
                               offset: float; polynomial: bool = false;
                               tol: float = 1.0e-4; conti: GeomAbsShape = geomAbsC1): BRepOffsetOffset {.
    constructor, importcpp: "BRepOffset_Offset(@)", header: "BRepOffset_Offset.hxx".}
proc init*(this: var BRepOffsetOffset; face: TopoDS_Face; offset: float;
          offsetOutside: bool = true; joinType: GeomAbsJoinType = geomAbsArc) {.
    importcpp: "Init", header: "BRepOffset_Offset.hxx".}
proc init*(this: var BRepOffsetOffset; face: TopoDS_Face; offset: float;
          created: TopToolsDataMapOfShapeShape; offsetOutside: bool = true;
          joinType: GeomAbsJoinType = geomAbsArc) {.importcpp: "Init",
    header: "BRepOffset_Offset.hxx".}
proc init*(this: var BRepOffsetOffset; path: TopoDS_Edge; edge1: TopoDS_Edge;
          edge2: TopoDS_Edge; offset: float; polynomial: bool = false;
          tol: float = 1.0e-4; conti: GeomAbsShape = geomAbsC1) {.importcpp: "Init",
    header: "BRepOffset_Offset.hxx".}
proc init*(this: var BRepOffsetOffset; path: TopoDS_Edge; edge1: TopoDS_Edge;
          edge2: TopoDS_Edge; offset: float; firstEdge: TopoDS_Edge;
          lastEdge: TopoDS_Edge; polynomial: bool = false; tol: float = 1.0e-4;
          conti: GeomAbsShape = geomAbsC1) {.importcpp: "Init",
    header: "BRepOffset_Offset.hxx".}
proc init*(this: var BRepOffsetOffset; vertex: TopoDS_Vertex;
          lEdge: TopToolsListOfShape; offset: float; polynomial: bool = false;
          tol: float = 1.0e-4; conti: GeomAbsShape = geomAbsC1) {.importcpp: "Init",
    header: "BRepOffset_Offset.hxx".}
proc init*(this: var BRepOffsetOffset; edge: TopoDS_Edge; offset: float) {.
    importcpp: "Init", header: "BRepOffset_Offset.hxx".}
proc initialShape*(this: BRepOffsetOffset): TopoDS_Shape {.noSideEffect,
    importcpp: "InitialShape", header: "BRepOffset_Offset.hxx".}
proc face*(this: BRepOffsetOffset): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "BRepOffset_Offset.hxx".}
proc generated*(this: BRepOffsetOffset; shape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "Generated", header: "BRepOffset_Offset.hxx".}
proc status*(this: BRepOffsetOffset): BRepOffsetStatus {.noSideEffect,
    importcpp: "Status", header: "BRepOffset_Offset.hxx".}
