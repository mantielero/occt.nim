##  Created on: 2011-06-01
##  Created by: Oleg AGASHIN
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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

## ! Class intended for fast searching of the coincidence points.

type
  BRepMeshVertexInspector* {.importcpp: "BRepMesh_VertexInspector",
                            header: "BRepMesh_VertexInspector.hxx", bycopy.} = object of NCollectionCellFilterInspectorXY

  BRepMeshVertexInspectorTarget* = int

proc constructBRepMeshVertexInspector*(theAllocator: Handle[
    NCollectionIncAllocator]): BRepMeshVertexInspector {.constructor,
    importcpp: "BRepMesh_VertexInspector(@)",
    header: "BRepMesh_VertexInspector.hxx".}
proc add*(this: var BRepMeshVertexInspector; theVertex: BRepMeshVertex): int {.
    importcpp: "Add", header: "BRepMesh_VertexInspector.hxx".}
proc setTolerance*(this: var BRepMeshVertexInspector; theTolerance: float) {.
    importcpp: "SetTolerance", header: "BRepMesh_VertexInspector.hxx".}
proc setTolerance*(this: var BRepMeshVertexInspector; theToleranceX: float;
                  theToleranceY: float) {.importcpp: "SetTolerance",
                                        header: "BRepMesh_VertexInspector.hxx".}
proc clear*(this: var BRepMeshVertexInspector) {.importcpp: "Clear",
    header: "BRepMesh_VertexInspector.hxx".}
proc delete*(this: var BRepMeshVertexInspector; theIndex: int) {.importcpp: "Delete",
    header: "BRepMesh_VertexInspector.hxx".}
proc nbVertices*(this: BRepMeshVertexInspector): int {.noSideEffect,
    importcpp: "NbVertices", header: "BRepMesh_VertexInspector.hxx".}
proc getVertex*(this: var BRepMeshVertexInspector; theIndex: int): var BRepMeshVertex {.
    importcpp: "GetVertex", header: "BRepMesh_VertexInspector.hxx".}
proc setPoint*(this: var BRepMeshVertexInspector; thePoint: Xy) {.
    importcpp: "SetPoint", header: "BRepMesh_VertexInspector.hxx".}
proc getCoincidentPoint*(this: BRepMeshVertexInspector): int {.noSideEffect,
    importcpp: "GetCoincidentPoint", header: "BRepMesh_VertexInspector.hxx".}
proc getListOfDelPoints*(this: BRepMeshVertexInspector): ListOfInteger {.
    noSideEffect, importcpp: "GetListOfDelPoints",
    header: "BRepMesh_VertexInspector.hxx".}
proc vertices*(this: BRepMeshVertexInspector): Handle[VectorOfVertex] {.
    noSideEffect, importcpp: "Vertices", header: "BRepMesh_VertexInspector.hxx".}
proc changeVertices*(this: var BRepMeshVertexInspector): var Handle[VectorOfVertex] {.
    importcpp: "ChangeVertices", header: "BRepMesh_VertexInspector.hxx".}
proc inspect*(this: var BRepMeshVertexInspector; theTargetIndex: int): NCollectionCellFilterAction {.
    importcpp: "Inspect", header: "BRepMesh_VertexInspector.hxx".}
proc isEqual*(theIndex: int; theTargetIndex: int): bool {.
    importcpp: "BRepMesh_VertexInspector::IsEqual(@)",
    header: "BRepMesh_VertexInspector.hxx".}
