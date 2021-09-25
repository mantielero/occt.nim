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

## ! Default implementation of edge data model entity.

type
  BRepMeshDataEdge* {.importcpp: "BRepMeshData_Edge",
                     header: "BRepMeshData_Edge.hxx", bycopy.} = object of IMeshDataEdge


proc bRepMeshDataEdge*(this: var BRepMeshDataEdge; theEdge: TopoDS_Edge;
                      theAllocator: Handle[NCollectionIncAllocator]): Define_Inc_Alloc {.
    importcpp: "BRepMeshData_Edge", header: "BRepMeshData_Edge.hxx".}
  ## ! Constructor.
proc destroyBRepMeshDataEdge*(this: var BRepMeshDataEdge) {.
    importcpp: "#.~BRepMeshData_Edge()", header: "BRepMeshData_Edge.hxx".}
proc pCurvesNb*(this: BRepMeshDataEdge): int {.noSideEffect, importcpp: "PCurvesNb",
    header: "BRepMeshData_Edge.hxx".}
proc addPCurve*(this: var BRepMeshDataEdge; theDFace: IFacePtr;
               theOrientation: TopAbsOrientation): IPCurveHandle {.
    importcpp: "AddPCurve", header: "BRepMeshData_Edge.hxx".}
proc getPCurve*(this: BRepMeshDataEdge; theDFace: IFacePtr;
               theOrientation: TopAbsOrientation): IPCurveHandle {.noSideEffect,
    importcpp: "GetPCurve", header: "BRepMeshData_Edge.hxx".}
proc getPCurve*(this: BRepMeshDataEdge; theIndex: int): IPCurveHandle {.noSideEffect,
    importcpp: "GetPCurve", header: "BRepMeshData_Edge.hxx".}
type
  BRepMeshDataEdgebaseType* = IMeshDataEdge

proc getTypeName*(): cstring {.importcpp: "BRepMeshData_Edge::get_type_name(@)",
                            header: "BRepMeshData_Edge.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMeshData_Edge::get_type_descriptor(@)",
    header: "BRepMeshData_Edge.hxx".}
proc dynamicType*(this: BRepMeshDataEdge): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMeshData_Edge.hxx".}
