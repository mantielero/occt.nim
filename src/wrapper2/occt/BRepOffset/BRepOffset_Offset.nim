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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BRepOffset_Status, ../TopoDS/TopoDS_Face,
  ../TopTools/TopTools_DataMapOfShapeShape, ../GeomAbs/GeomAbs_JoinType,
  ../GeomAbs/GeomAbs_Shape, ../TopTools/TopTools_ListOfShape

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
when defined(Status):
  discard
## ! This class compute elemenary offset surface.
## ! Evaluate the offset generated :
## ! 1 - from a face.
## ! 2 - from an edge.
## ! 3 - from a vertex.

type
  BRepOffset_Offset* {.importcpp: "BRepOffset_Offset",
                      header: "BRepOffset_Offset.hxx", bycopy.} = object


proc constructBRepOffset_Offset*(): BRepOffset_Offset {.constructor,
    importcpp: "BRepOffset_Offset(@)", header: "BRepOffset_Offset.hxx".}
proc constructBRepOffset_Offset*(Face: TopoDS_Face; Offset: Standard_Real;
    OffsetOutside: Standard_Boolean = Standard_True;
                                JoinType: GeomAbs_JoinType = GeomAbs_Arc): BRepOffset_Offset {.
    constructor, importcpp: "BRepOffset_Offset(@)", header: "BRepOffset_Offset.hxx".}
proc constructBRepOffset_Offset*(Face: TopoDS_Face; Offset: Standard_Real;
                                Created: TopTools_DataMapOfShapeShape;
    OffsetOutside: Standard_Boolean = Standard_True;
                                JoinType: GeomAbs_JoinType = GeomAbs_Arc): BRepOffset_Offset {.
    constructor, importcpp: "BRepOffset_Offset(@)", header: "BRepOffset_Offset.hxx".}
proc constructBRepOffset_Offset*(Path: TopoDS_Edge; Edge1: TopoDS_Edge;
                                Edge2: TopoDS_Edge; Offset: Standard_Real;
                                Polynomial: Standard_Boolean = Standard_False;
                                Tol: Standard_Real = 1.0e-4;
                                Conti: GeomAbs_Shape = GeomAbs_C1): BRepOffset_Offset {.
    constructor, importcpp: "BRepOffset_Offset(@)", header: "BRepOffset_Offset.hxx".}
proc constructBRepOffset_Offset*(Path: TopoDS_Edge; Edge1: TopoDS_Edge;
                                Edge2: TopoDS_Edge; Offset: Standard_Real;
                                FirstEdge: TopoDS_Edge; LastEdge: TopoDS_Edge;
                                Polynomial: Standard_Boolean = Standard_False;
                                Tol: Standard_Real = 1.0e-4;
                                Conti: GeomAbs_Shape = GeomAbs_C1): BRepOffset_Offset {.
    constructor, importcpp: "BRepOffset_Offset(@)", header: "BRepOffset_Offset.hxx".}
proc constructBRepOffset_Offset*(Vertex: TopoDS_Vertex;
                                LEdge: TopTools_ListOfShape;
                                Offset: Standard_Real;
                                Polynomial: Standard_Boolean = Standard_False;
                                Tol: Standard_Real = 1.0e-4;
                                Conti: GeomAbs_Shape = GeomAbs_C1): BRepOffset_Offset {.
    constructor, importcpp: "BRepOffset_Offset(@)", header: "BRepOffset_Offset.hxx".}
proc Init*(this: var BRepOffset_Offset; Face: TopoDS_Face; Offset: Standard_Real;
          OffsetOutside: Standard_Boolean = Standard_True;
          JoinType: GeomAbs_JoinType = GeomAbs_Arc) {.importcpp: "Init",
    header: "BRepOffset_Offset.hxx".}
proc Init*(this: var BRepOffset_Offset; Face: TopoDS_Face; Offset: Standard_Real;
          Created: TopTools_DataMapOfShapeShape;
          OffsetOutside: Standard_Boolean = Standard_True;
          JoinType: GeomAbs_JoinType = GeomAbs_Arc) {.importcpp: "Init",
    header: "BRepOffset_Offset.hxx".}
proc Init*(this: var BRepOffset_Offset; Path: TopoDS_Edge; Edge1: TopoDS_Edge;
          Edge2: TopoDS_Edge; Offset: Standard_Real;
          Polynomial: Standard_Boolean = Standard_False;
          Tol: Standard_Real = 1.0e-4; Conti: GeomAbs_Shape = GeomAbs_C1) {.
    importcpp: "Init", header: "BRepOffset_Offset.hxx".}
proc Init*(this: var BRepOffset_Offset; Path: TopoDS_Edge; Edge1: TopoDS_Edge;
          Edge2: TopoDS_Edge; Offset: Standard_Real; FirstEdge: TopoDS_Edge;
          LastEdge: TopoDS_Edge; Polynomial: Standard_Boolean = Standard_False;
          Tol: Standard_Real = 1.0e-4; Conti: GeomAbs_Shape = GeomAbs_C1) {.
    importcpp: "Init", header: "BRepOffset_Offset.hxx".}
proc Init*(this: var BRepOffset_Offset; Vertex: TopoDS_Vertex;
          LEdge: TopTools_ListOfShape; Offset: Standard_Real;
          Polynomial: Standard_Boolean = Standard_False;
          Tol: Standard_Real = 1.0e-4; Conti: GeomAbs_Shape = GeomAbs_C1) {.
    importcpp: "Init", header: "BRepOffset_Offset.hxx".}
proc Init*(this: var BRepOffset_Offset; Edge: TopoDS_Edge; Offset: Standard_Real) {.
    importcpp: "Init", header: "BRepOffset_Offset.hxx".}
proc InitialShape*(this: BRepOffset_Offset): TopoDS_Shape {.noSideEffect,
    importcpp: "InitialShape", header: "BRepOffset_Offset.hxx".}
proc Face*(this: BRepOffset_Offset): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "BRepOffset_Offset.hxx".}
proc Generated*(this: BRepOffset_Offset; Shape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "Generated", header: "BRepOffset_Offset.hxx".}
proc Status*(this: BRepOffset_Offset): BRepOffset_Status {.noSideEffect,
    importcpp: "Status", header: "BRepOffset_Offset.hxx".}