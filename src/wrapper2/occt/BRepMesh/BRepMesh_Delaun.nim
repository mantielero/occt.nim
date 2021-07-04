##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Macro, ../gp/gp_XY, ../gp/gp_XYZ, BRepMesh_CircleTool,
  BRepMesh_Triangle, BRepMesh_Edge, ../IMeshData/IMeshData_Types,
  BRepMesh_DataStructureOfDelaun, BRepMesh_GeomTool,
  ../TColStd/TColStd_Array1OfInteger, ../TColStd/TColStd_SequenceOfInteger,
  ../TColStd/TColStd_MapOfInteger, ../Message/Message_ProgressRange

discard "forward decl of Bnd_B2d"
discard "forward decl of Bnd_Box2d"
discard "forward decl of BRepMesh_Vertex"
type
  BRepMesh_Delaun* {.importcpp: "BRepMesh_Delaun", header: "BRepMesh_Delaun.hxx",
                    bycopy.} = object ## ! Creates instance of triangulator, but do not run the algorithm automatically.


proc constructBRepMesh_Delaun*(theOldMesh: handle[BRepMesh_DataStructureOfDelaun];
                              theCellsCountU: Standard_Integer;
                              theCellsCountV: Standard_Integer;
                              isFillCircles: Standard_Boolean): BRepMesh_Delaun {.
    constructor, importcpp: "BRepMesh_Delaun(@)", header: "BRepMesh_Delaun.hxx".}
proc constructBRepMesh_Delaun*(theVertices: var Array1OfVertexOfDelaun): BRepMesh_Delaun {.
    constructor, importcpp: "BRepMesh_Delaun(@)", header: "BRepMesh_Delaun.hxx".}
proc constructBRepMesh_Delaun*(theOldMesh: handle[BRepMesh_DataStructureOfDelaun];
                              theVertices: var Array1OfVertexOfDelaun): BRepMesh_Delaun {.
    constructor, importcpp: "BRepMesh_Delaun(@)", header: "BRepMesh_Delaun.hxx".}
proc constructBRepMesh_Delaun*(theOldMesh: handle[BRepMesh_DataStructureOfDelaun];
                              theVertexIndices: var VectorOfInteger): BRepMesh_Delaun {.
    constructor, importcpp: "BRepMesh_Delaun(@)", header: "BRepMesh_Delaun.hxx".}
proc constructBRepMesh_Delaun*(theOldMesh: handle[BRepMesh_DataStructureOfDelaun];
                              theVertexIndices: var VectorOfInteger;
                              theCellsCountU: Standard_Integer;
                              theCellsCountV: Standard_Integer): BRepMesh_Delaun {.
    constructor, importcpp: "BRepMesh_Delaun(@)", header: "BRepMesh_Delaun.hxx".}
proc Init*(this: var BRepMesh_Delaun; theVertices: var Array1OfVertexOfDelaun) {.
    importcpp: "Init", header: "BRepMesh_Delaun.hxx".}
proc InitCirclesTool*(this: var BRepMesh_Delaun; theCellsCountU: Standard_Integer;
                     theCellsCountV: Standard_Integer) {.
    importcpp: "InitCirclesTool", header: "BRepMesh_Delaun.hxx".}
proc RemoveVertex*(this: var BRepMesh_Delaun; theVertex: BRepMesh_Vertex) {.
    importcpp: "RemoveVertex", header: "BRepMesh_Delaun.hxx".}
proc AddVertices*(this: var BRepMesh_Delaun;
                 theVerticesIndices: var VectorOfInteger;
                 theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "AddVertices", header: "BRepMesh_Delaun.hxx".}
proc UseEdge*(this: var BRepMesh_Delaun; theEdge: Standard_Integer): Standard_Boolean {.
    importcpp: "UseEdge", header: "BRepMesh_Delaun.hxx".}
proc Result*(this: BRepMesh_Delaun): handle[BRepMesh_DataStructureOfDelaun] {.
    noSideEffect, importcpp: "Result", header: "BRepMesh_Delaun.hxx".}
proc ProcessConstraints*(this: var BRepMesh_Delaun) {.
    importcpp: "ProcessConstraints", header: "BRepMesh_Delaun.hxx".}
proc Frontier*(this: BRepMesh_Delaun): handle[MapOfInteger] {.noSideEffect,
    importcpp: "Frontier", header: "BRepMesh_Delaun.hxx".}
proc InternalEdges*(this: BRepMesh_Delaun): handle[MapOfInteger] {.noSideEffect,
    importcpp: "InternalEdges", header: "BRepMesh_Delaun.hxx".}
proc FreeEdges*(this: BRepMesh_Delaun): handle[MapOfInteger] {.noSideEffect,
    importcpp: "FreeEdges", header: "BRepMesh_Delaun.hxx".}
proc GetVertex*(this: BRepMesh_Delaun; theIndex: Standard_Integer): BRepMesh_Vertex {.
    noSideEffect, importcpp: "GetVertex", header: "BRepMesh_Delaun.hxx".}
proc GetEdge*(this: BRepMesh_Delaun; theIndex: Standard_Integer): BRepMesh_Edge {.
    noSideEffect, importcpp: "GetEdge", header: "BRepMesh_Delaun.hxx".}
proc GetTriangle*(this: BRepMesh_Delaun; theIndex: Standard_Integer): BRepMesh_Triangle {.
    noSideEffect, importcpp: "GetTriangle", header: "BRepMesh_Delaun.hxx".}
proc Circles*(this: BRepMesh_Delaun): BRepMesh_CircleTool {.noSideEffect,
    importcpp: "Circles", header: "BRepMesh_Delaun.hxx".}
proc Contains*(this: BRepMesh_Delaun; theTriangleId: Standard_Integer;
              theVertex: BRepMesh_Vertex; theSqTolerance: Standard_Real;
              theEdgeOn: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "Contains", header: "BRepMesh_Delaun.hxx".}
proc SetAuxVertices*(this: var BRepMesh_Delaun; theSupVert: VectorOfInteger) {.
    importcpp: "SetAuxVertices", header: "BRepMesh_Delaun.hxx".}
proc RemoveAuxElements*(this: var BRepMesh_Delaun) {.importcpp: "RemoveAuxElements",
    header: "BRepMesh_Delaun.hxx".}