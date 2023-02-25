import brepoffset_types
import ../../tkbrep/topods/topods_types
import ../../tkmath/geomabs/geomabs_types
import ../../tkbrep/toptools/toptools_types


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
when defined(Status):
  discard
## ! This class compute elemenary offset surface.
## ! Evaluate the offset generated :
## ! 1 - from a face.
## ! 2 - from an edge.
## ! 3 - from a vertex.


proc newBRepOffset_Offset*(): BRepOffset_Offset {.cdecl, constructor,
    importcpp: "BRepOffset_Offset(@)".}
proc newBRepOffset_Offset*(Face: TopoDS_Face; Offset: cfloat;
                          OffsetOutside: bool = true;
                          JoinType: GeomAbs_JoinType = GeomAbs_Arc): BRepOffset_Offset {.
    cdecl, constructor, importcpp: "BRepOffset_Offset(@)".}
proc newBRepOffset_Offset*(Face: TopoDS_Face; Offset: cfloat;
                          Created: TopTools_DataMapOfShapeShape;
                          OffsetOutside: bool = true;
                          JoinType: GeomAbs_JoinType = GeomAbs_Arc): BRepOffset_Offset {.
    cdecl, constructor, importcpp: "BRepOffset_Offset(@)".}
proc newBRepOffset_Offset*(Path: TopoDS_Edge; Edge1: TopoDS_Edge; Edge2: TopoDS_Edge;
                          Offset: cfloat; Polynomial: bool = false;
                          Tol: cfloat = 1.0e-4; Conti: GeomAbs_Shape = geomAbsC1): BRepOffset_Offset {.
    cdecl, constructor, importcpp: "BRepOffset_Offset(@)".}
proc newBRepOffset_Offset*(Path: TopoDS_Edge; Edge1: TopoDS_Edge; Edge2: TopoDS_Edge;
                          Offset: cfloat; FirstEdge: TopoDS_Edge;
                          LastEdge: TopoDS_Edge; Polynomial: bool = false;
                          Tol: cfloat = 1.0e-4; Conti: GeomAbs_Shape = geomAbsC1): BRepOffset_Offset {.
    cdecl, constructor, importcpp: "BRepOffset_Offset(@)".}
proc newBRepOffset_Offset*(Vertex: TopoDS_Vertex; LEdge: TopTools_ListOfShape;
                          Offset: cfloat; Polynomial: bool = false;
                          Tol: cfloat = 1.0e-4; Conti: GeomAbs_Shape = geomAbsC1): BRepOffset_Offset {.
    cdecl, constructor, importcpp: "BRepOffset_Offset(@)".}
proc Init*(this: var BRepOffset_Offset; Face: TopoDS_Face; Offset: cfloat;
          OffsetOutside: bool = true; JoinType: GeomAbs_JoinType = GeomAbs_Arc) {.cdecl,
    importcpp: "Init".}
proc Init*(this: var BRepOffset_Offset; Face: TopoDS_Face; Offset: cfloat;
          Created: TopTools_DataMapOfShapeShape; OffsetOutside: bool = true;
          JoinType: GeomAbs_JoinType = GeomAbs_Arc) {.cdecl, importcpp: "Init",
    .}
proc Init*(this: var BRepOffset_Offset; Path: TopoDS_Edge; Edge1: TopoDS_Edge;
          Edge2: TopoDS_Edge; Offset: cfloat; Polynomial: bool = false;
          Tol: cfloat = 1.0e-4; Conti: GeomAbs_Shape = geomAbsC1) {.cdecl,
    importcpp: "Init".}
proc Init*(this: var BRepOffset_Offset; Path: TopoDS_Edge; Edge1: TopoDS_Edge;
          Edge2: TopoDS_Edge; Offset: cfloat; FirstEdge: TopoDS_Edge;
          LastEdge: TopoDS_Edge; Polynomial: bool = false; Tol: cfloat = 1.0e-4;
          Conti: GeomAbs_Shape = geomAbsC1) {.cdecl, importcpp: "Init",
    .}
proc Init*(this: var BRepOffset_Offset; Vertex: TopoDS_Vertex;
          LEdge: TopTools_ListOfShape; Offset: cfloat; Polynomial: bool = false;
          Tol: cfloat = 1.0e-4; Conti: GeomAbs_Shape = geomAbsC1) {.cdecl,
    importcpp: "Init".}
proc Init*(this: var BRepOffset_Offset; Edge: TopoDS_Edge; Offset: cfloat) {.cdecl,
    importcpp: "Init".}
proc InitialShape*(this: BRepOffset_Offset): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "InitialShape".}
proc Face*(this: BRepOffset_Offset): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Face".}
proc Generated*(this: BRepOffset_Offset; Shape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Generated".}
proc Status*(this: BRepOffset_Offset): BRepOffset_Status {.noSideEffect, cdecl,
    importcpp: "Status".}