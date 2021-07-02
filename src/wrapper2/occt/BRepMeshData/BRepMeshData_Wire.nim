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

## ! Default implementation of wire data model entity.

type
  BRepMeshDataWire* {.importcpp: "BRepMeshData_Wire",
                     header: "BRepMeshData_Wire.hxx", bycopy.} = object of IMeshDataWire


proc bRepMeshDataWire*(this: var BRepMeshDataWire; theWire: TopoDS_Wire;
                      theEdgeNb: StandardInteger;
                      theAllocator: Handle[NCollectionIncAllocator]): Define_Inc_Alloc {.
    importcpp: "BRepMeshData_Wire", header: "BRepMeshData_Wire.hxx".}
  ## ! Constructor.
proc destroyBRepMeshDataWire*(this: var BRepMeshDataWire) {.
    importcpp: "#.~BRepMeshData_Wire()", header: "BRepMeshData_Wire.hxx".}
proc edgesNb*(this: BRepMeshDataWire): StandardInteger {.noSideEffect,
    importcpp: "EdgesNb", header: "BRepMeshData_Wire.hxx".}
proc addEdge*(this: var BRepMeshDataWire; theDEdge: IEdgePtr;
             theOrientation: TopAbsOrientation): StandardInteger {.
    importcpp: "AddEdge", header: "BRepMeshData_Wire.hxx".}
proc getEdge*(this: BRepMeshDataWire; theIndex: StandardInteger): IEdgePtr {.
    noSideEffect, importcpp: "GetEdge", header: "BRepMeshData_Wire.hxx".}
proc getEdgeOrientation*(this: BRepMeshDataWire; theIndex: StandardInteger): TopAbsOrientation {.
    noSideEffect, importcpp: "GetEdgeOrientation", header: "BRepMeshData_Wire.hxx".}
type
  BRepMeshDataWirebaseType* = IMeshDataWire

proc getTypeName*(): cstring {.importcpp: "BRepMeshData_Wire::get_type_name(@)",
                            header: "BRepMeshData_Wire.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMeshData_Wire::get_type_descriptor(@)",
    header: "BRepMeshData_Wire.hxx".}
proc dynamicType*(this: BRepMeshDataWire): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMeshData_Wire.hxx".}

