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
  ../IMeshData/IMeshData_Types, ../IMeshData/IMeshData_Face,
  ../IMeshData/IMeshData_Wire

## ! Default implementation of face data model entity.

type
  BRepMeshData_Face* {.importcpp: "BRepMeshData_Face",
                      header: "BRepMeshData_Face.hxx", bycopy.} = object of IMeshData_Face


proc BRepMeshData_Face*(this: var BRepMeshData_Face; theFace: TopoDS_Face;
                       theAllocator: handle[NCollection_IncAllocator]): DEFINE_INC_ALLOC {.
    importcpp: "BRepMeshData_Face", header: "BRepMeshData_Face.hxx".}
  ## ! Constructor.
proc destroyBRepMeshData_Face*(this: var BRepMeshData_Face) {.
    importcpp: "#.~BRepMeshData_Face()", header: "BRepMeshData_Face.hxx".}
proc WiresNb*(this: BRepMeshData_Face): Standard_Integer {.noSideEffect,
    importcpp: "WiresNb", header: "BRepMeshData_Face.hxx".}
proc GetWire*(this: BRepMeshData_Face; theIndex: Standard_Integer): IWireHandle {.
    noSideEffect, importcpp: "GetWire", header: "BRepMeshData_Face.hxx".}
proc AddWire*(this: var BRepMeshData_Face; theWire: TopoDS_Wire;
             theEdgeNb: Standard_Integer = 0): IWireHandle {.importcpp: "AddWire",
    header: "BRepMeshData_Face.hxx".}
type
  BRepMeshData_Facebase_type* = IMeshData_Face

proc get_type_name*(): cstring {.importcpp: "BRepMeshData_Face::get_type_name(@)",
                              header: "BRepMeshData_Face.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMeshData_Face::get_type_descriptor(@)",
    header: "BRepMeshData_Face.hxx".}
proc DynamicType*(this: BRepMeshData_Face): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMeshData_Face.hxx".}