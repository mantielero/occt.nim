##  Created on: 2016-04-07
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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
  ../IMeshData/IMeshData_Edge, ../IMeshData/IMeshData_Curve,
  ../NCollection/NCollection_IncAllocator, ../IMeshData/IMeshData_Types

## ! Default implementation of edge data model entity.

type
  BRepMeshData_Edge* {.importcpp: "BRepMeshData_Edge",
                      header: "BRepMeshData_Edge.hxx", bycopy.} = object of IMeshData_Edge


proc BRepMeshData_Edge*(this: var BRepMeshData_Edge; theEdge: TopoDS_Edge;
                       theAllocator: handle[NCollection_IncAllocator]): DEFINE_INC_ALLOC {.
    importcpp: "BRepMeshData_Edge", header: "BRepMeshData_Edge.hxx".}
  ## ! Constructor.
proc destroyBRepMeshData_Edge*(this: var BRepMeshData_Edge) {.
    importcpp: "#.~BRepMeshData_Edge()", header: "BRepMeshData_Edge.hxx".}
proc PCurvesNb*(this: BRepMeshData_Edge): Standard_Integer {.noSideEffect,
    importcpp: "PCurvesNb", header: "BRepMeshData_Edge.hxx".}
proc AddPCurve*(this: var BRepMeshData_Edge; theDFace: IFacePtr;
               theOrientation: TopAbs_Orientation): IPCurveHandle {.
    importcpp: "AddPCurve", header: "BRepMeshData_Edge.hxx".}
proc GetPCurve*(this: BRepMeshData_Edge; theDFace: IFacePtr;
               theOrientation: TopAbs_Orientation): IPCurveHandle {.noSideEffect,
    importcpp: "GetPCurve", header: "BRepMeshData_Edge.hxx".}
proc GetPCurve*(this: BRepMeshData_Edge; theIndex: Standard_Integer): IPCurveHandle {.
    noSideEffect, importcpp: "GetPCurve", header: "BRepMeshData_Edge.hxx".}
type
  BRepMeshData_Edgebase_type* = IMeshData_Edge

proc get_type_name*(): cstring {.importcpp: "BRepMeshData_Edge::get_type_name(@)",
                              header: "BRepMeshData_Edge.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMeshData_Edge::get_type_descriptor(@)",
    header: "BRepMeshData_Edge.hxx".}
proc DynamicType*(this: BRepMeshData_Edge): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMeshData_Edge.hxx".}