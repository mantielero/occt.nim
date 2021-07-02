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

discard "forward decl of Bnd_B2d"
discard "forward decl of Bnd_Box2d"
discard "forward decl of BRepMesh_Vertex"
type
  BRepMeshDelaun* {.importcpp: "BRepMesh_Delaun", header: "BRepMesh_Delaun.hxx",
                   bycopy.} = object ## ! Creates instance of triangulator, but do not run the algorithm automatically.


proc constructBRepMeshDelaun*(theOldMesh: Handle[BRepMeshDataStructureOfDelaun];
                             theCellsCountU: StandardInteger;
                             theCellsCountV: StandardInteger;
                             isFillCircles: StandardBoolean): BRepMeshDelaun {.
    constructor, importcpp: "BRepMesh_Delaun(@)", header: "BRepMesh_Delaun.hxx".}
proc constructBRepMeshDelaun*(theVertices: var Array1OfVertexOfDelaun): BRepMeshDelaun {.
    constructor, importcpp: "BRepMesh_Delaun(@)", header: "BRepMesh_Delaun.hxx".}
proc constructBRepMeshDelaun*(theOldMesh: Handle[BRepMeshDataStructureOfDelaun];
                             theVertices: var Array1OfVertexOfDelaun): BRepMeshDelaun {.
    constructor, importcpp: "BRepMesh_Delaun(@)", header: "BRepMesh_Delaun.hxx".}
proc constructBRepMeshDelaun*(theOldMesh: Handle[BRepMeshDataStructureOfDelaun];
                             theVertexIndices: var VectorOfInteger): BRepMeshDelaun {.
    constructor, importcpp: "BRepMesh_Delaun(@)", header: "BRepMesh_Delaun.hxx".}
proc constructBRepMeshDelaun*(theOldMesh: Handle[BRepMeshDataStructureOfDelaun];
                             theVertexIndices: var VectorOfInteger;
                             theCellsCountU: StandardInteger;
                             theCellsCountV: StandardInteger): BRepMeshDelaun {.
    constructor, importcpp: "BRepMesh_Delaun(@)", header: "BRepMesh_Delaun.hxx".}
proc init*(this: var BRepMeshDelaun; theVertices: var Array1OfVertexOfDelaun) {.
    importcpp: "Init", header: "BRepMesh_Delaun.hxx".}
proc initCirclesTool*(this: var BRepMeshDelaun; theCellsCountU: StandardInteger;
                     theCellsCountV: StandardInteger) {.
    importcpp: "InitCirclesTool", header: "BRepMesh_Delaun.hxx".}
proc removeVertex*(this: var BRepMeshDelaun; theVertex: BRepMeshVertex) {.
    importcpp: "RemoveVertex", header: "BRepMesh_Delaun.hxx".}
proc addVertices*(this: var BRepMeshDelaun; theVerticesIndices: var VectorOfInteger;
                 theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "AddVertices", header: "BRepMesh_Delaun.hxx".}
proc useEdge*(this: var BRepMeshDelaun; theEdge: StandardInteger): StandardBoolean {.
    importcpp: "UseEdge", header: "BRepMesh_Delaun.hxx".}
proc result*(this: BRepMeshDelaun): Handle[BRepMeshDataStructureOfDelaun] {.
    noSideEffect, importcpp: "Result", header: "BRepMesh_Delaun.hxx".}
proc processConstraints*(this: var BRepMeshDelaun) {.
    importcpp: "ProcessConstraints", header: "BRepMesh_Delaun.hxx".}
proc frontier*(this: BRepMeshDelaun): Handle[MapOfInteger] {.noSideEffect,
    importcpp: "Frontier", header: "BRepMesh_Delaun.hxx".}
proc internalEdges*(this: BRepMeshDelaun): Handle[MapOfInteger] {.noSideEffect,
    importcpp: "InternalEdges", header: "BRepMesh_Delaun.hxx".}
proc freeEdges*(this: BRepMeshDelaun): Handle[MapOfInteger] {.noSideEffect,
    importcpp: "FreeEdges", header: "BRepMesh_Delaun.hxx".}
proc getVertex*(this: BRepMeshDelaun; theIndex: StandardInteger): BRepMeshVertex {.
    noSideEffect, importcpp: "GetVertex", header: "BRepMesh_Delaun.hxx".}
proc getEdge*(this: BRepMeshDelaun; theIndex: StandardInteger): BRepMeshEdge {.
    noSideEffect, importcpp: "GetEdge", header: "BRepMesh_Delaun.hxx".}
proc getTriangle*(this: BRepMeshDelaun; theIndex: StandardInteger): BRepMeshTriangle {.
    noSideEffect, importcpp: "GetTriangle", header: "BRepMesh_Delaun.hxx".}
proc circles*(this: BRepMeshDelaun): BRepMeshCircleTool {.noSideEffect,
    importcpp: "Circles", header: "BRepMesh_Delaun.hxx".}
proc contains*(this: BRepMeshDelaun; theTriangleId: StandardInteger;
              theVertex: BRepMeshVertex; theSqTolerance: StandardReal;
              theEdgeOn: var StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "Contains", header: "BRepMesh_Delaun.hxx".}
proc setAuxVertices*(this: var BRepMeshDelaun; theSupVert: VectorOfInteger) {.
    importcpp: "SetAuxVertices", header: "BRepMesh_Delaun.hxx".}
proc removeAuxElements*(this: var BRepMeshDelaun) {.importcpp: "RemoveAuxElements",
    header: "BRepMesh_Delaun.hxx".}

