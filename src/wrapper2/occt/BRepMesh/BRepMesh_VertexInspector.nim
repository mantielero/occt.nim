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

import
  ../Precision/Precision, ../gp/gp_XY, ../gp/gp_XYZ, ../IMeshData/IMeshData_Types,
  ../NCollection/NCollection_CellFilter, BRepMesh_Vertex

## ! Class intended for fast searching of the coincidence points.

type
  BRepMesh_VertexInspector* {.importcpp: "BRepMesh_VertexInspector",
                             header: "BRepMesh_VertexInspector.hxx", bycopy.} = object of NCollection_CellFilter_InspectorXY

  BRepMesh_VertexInspectorTarget* = Standard_Integer

proc constructBRepMesh_VertexInspector*(theAllocator: handle[
    NCollection_IncAllocator]): BRepMesh_VertexInspector {.constructor,
    importcpp: "BRepMesh_VertexInspector(@)",
    header: "BRepMesh_VertexInspector.hxx".}
proc Add*(this: var BRepMesh_VertexInspector; theVertex: BRepMesh_Vertex): Standard_Integer {.
    importcpp: "Add", header: "BRepMesh_VertexInspector.hxx".}
proc SetTolerance*(this: var BRepMesh_VertexInspector; theTolerance: Standard_Real) {.
    importcpp: "SetTolerance", header: "BRepMesh_VertexInspector.hxx".}
proc SetTolerance*(this: var BRepMesh_VertexInspector; theToleranceX: Standard_Real;
                  theToleranceY: Standard_Real) {.importcpp: "SetTolerance",
    header: "BRepMesh_VertexInspector.hxx".}
proc Clear*(this: var BRepMesh_VertexInspector) {.importcpp: "Clear",
    header: "BRepMesh_VertexInspector.hxx".}
proc Delete*(this: var BRepMesh_VertexInspector; theIndex: Standard_Integer) {.
    importcpp: "Delete", header: "BRepMesh_VertexInspector.hxx".}
proc NbVertices*(this: BRepMesh_VertexInspector): Standard_Integer {.noSideEffect,
    importcpp: "NbVertices", header: "BRepMesh_VertexInspector.hxx".}
proc GetVertex*(this: var BRepMesh_VertexInspector; theIndex: Standard_Integer): var BRepMesh_Vertex {.
    importcpp: "GetVertex", header: "BRepMesh_VertexInspector.hxx".}
proc SetPoint*(this: var BRepMesh_VertexInspector; thePoint: gp_XY) {.
    importcpp: "SetPoint", header: "BRepMesh_VertexInspector.hxx".}
proc GetCoincidentPoint*(this: BRepMesh_VertexInspector): Standard_Integer {.
    noSideEffect, importcpp: "GetCoincidentPoint",
    header: "BRepMesh_VertexInspector.hxx".}
proc GetListOfDelPoints*(this: BRepMesh_VertexInspector): ListOfInteger {.
    noSideEffect, importcpp: "GetListOfDelPoints",
    header: "BRepMesh_VertexInspector.hxx".}
proc Vertices*(this: BRepMesh_VertexInspector): handle[VectorOfVertex] {.
    noSideEffect, importcpp: "Vertices", header: "BRepMesh_VertexInspector.hxx".}
proc ChangeVertices*(this: var BRepMesh_VertexInspector): var handle[VectorOfVertex] {.
    importcpp: "ChangeVertices", header: "BRepMesh_VertexInspector.hxx".}
proc Inspect*(this: var BRepMesh_VertexInspector; theTargetIndex: Standard_Integer): NCollection_CellFilter_Action {.
    importcpp: "Inspect", header: "BRepMesh_VertexInspector.hxx".}
proc IsEqual*(theIndex: Standard_Integer; theTargetIndex: Standard_Integer): Standard_Boolean {.
    importcpp: "BRepMesh_VertexInspector::IsEqual(@)",
    header: "BRepMesh_VertexInspector.hxx".}