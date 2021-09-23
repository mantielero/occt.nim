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
  ../IMeshData/IMeshData_Wire, ../IMeshData/IMeshData_Types

## ! Default implementation of wire data model entity.

type
  BRepMeshData_Wire* {.importcpp: "BRepMeshData_Wire",
                      header: "BRepMeshData_Wire.hxx", bycopy.} = object of IMeshData_Wire


proc BRepMeshData_Wire*(this: var BRepMeshData_Wire; theWire: TopoDS_Wire;
                       theEdgeNb: Standard_Integer;
                       theAllocator: handle[NCollection_IncAllocator]): DEFINE_INC_ALLOC {.
    importcpp: "BRepMeshData_Wire", header: "BRepMeshData_Wire.hxx".}
  ## ! Constructor.
proc destroyBRepMeshData_Wire*(this: var BRepMeshData_Wire) {.
    importcpp: "#.~BRepMeshData_Wire()", header: "BRepMeshData_Wire.hxx".}
proc EdgesNb*(this: BRepMeshData_Wire): Standard_Integer {.noSideEffect,
    importcpp: "EdgesNb", header: "BRepMeshData_Wire.hxx".}
proc AddEdge*(this: var BRepMeshData_Wire; theDEdge: IEdgePtr;
             theOrientation: TopAbs_Orientation): Standard_Integer {.
    importcpp: "AddEdge", header: "BRepMeshData_Wire.hxx".}
proc GetEdge*(this: BRepMeshData_Wire; theIndex: Standard_Integer): IEdgePtr {.
    noSideEffect, importcpp: "GetEdge", header: "BRepMeshData_Wire.hxx".}
proc GetEdgeOrientation*(this: BRepMeshData_Wire; theIndex: Standard_Integer): TopAbs_Orientation {.
    noSideEffect, importcpp: "GetEdgeOrientation", header: "BRepMeshData_Wire.hxx".}
type
  BRepMeshData_Wirebase_type* = IMeshData_Wire

proc get_type_name*(): cstring {.importcpp: "BRepMeshData_Wire::get_type_name(@)",
                              header: "BRepMeshData_Wire.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMeshData_Wire::get_type_descriptor(@)",
    header: "BRepMeshData_Wire.hxx".}
proc DynamicType*(this: BRepMeshData_Wire): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMeshData_Wire.hxx".}