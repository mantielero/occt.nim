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

## ! Default implementation of face data model entity.

type
  BRepMeshDataFace* {.importcpp: "BRepMeshData_Face",
                     header: "BRepMeshData_Face.hxx", bycopy.} = object of IMeshDataFace


proc bRepMeshDataFace*(this: var BRepMeshDataFace; theFace: TopoDS_Face;
                      theAllocator: Handle[NCollectionIncAllocator]): Define_Inc_Alloc {.
    importcpp: "BRepMeshData_Face", header: "BRepMeshData_Face.hxx".}
  ## ! Constructor.
proc destroyBRepMeshDataFace*(this: var BRepMeshDataFace) {.
    importcpp: "#.~BRepMeshData_Face()", header: "BRepMeshData_Face.hxx".}
proc wiresNb*(this: BRepMeshDataFace): cint {.noSideEffect, importcpp: "WiresNb",
    header: "BRepMeshData_Face.hxx".}
proc getWire*(this: BRepMeshDataFace; theIndex: cint): IWireHandle {.noSideEffect,
    importcpp: "GetWire", header: "BRepMeshData_Face.hxx".}
proc addWire*(this: var BRepMeshDataFace; theWire: TopoDS_Wire; theEdgeNb: cint = 0): IWireHandle {.
    importcpp: "AddWire", header: "BRepMeshData_Face.hxx".}
type
  BRepMeshDataFacebaseType* = IMeshDataFace

proc getTypeName*(): cstring {.importcpp: "BRepMeshData_Face::get_type_name(@)",
                            header: "BRepMeshData_Face.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMeshData_Face::get_type_descriptor(@)",
    header: "BRepMeshData_Face.hxx".}
proc dynamicType*(this: BRepMeshDataFace): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMeshData_Face.hxx".}

























