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
  ../IMeshTools/IMeshTools_ShapeVisitor, ../IMeshData/IMeshData_Model,
  ../Standard/Standard_Transient, ../Standard/Standard_Type,
  ../IMeshTools/IMeshTools_Parameters, ../IMeshData/IMeshData_Types

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Wire"
discard "forward decl of IMeshTools_Context"
discard "forward decl of IMeshData_Wire"
type
  BRepMesh_ShapeVisitor* {.importcpp: "BRepMesh_ShapeVisitor",
                          header: "BRepMesh_ShapeVisitor.hxx", bycopy.} = object of IMeshTools_ShapeVisitor ##
                                                                                                     ## !
                                                                                                     ## Constructor.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Adds
                                                                                                     ## wire
                                                                                                     ## to
                                                                                                     ## face
                                                                                                     ## discrete
                                                                                                     ## model.


proc constructBRepMesh_ShapeVisitor*(theModel: handle[IMeshData_Model]): BRepMesh_ShapeVisitor {.
    constructor, importcpp: "BRepMesh_ShapeVisitor(@)",
    header: "BRepMesh_ShapeVisitor.hxx".}
proc destroyBRepMesh_ShapeVisitor*(this: var BRepMesh_ShapeVisitor) {.
    importcpp: "#.~BRepMesh_ShapeVisitor()", header: "BRepMesh_ShapeVisitor.hxx".}
proc Visit*(this: var BRepMesh_ShapeVisitor; theFace: TopoDS_Face) {.
    importcpp: "Visit", header: "BRepMesh_ShapeVisitor.hxx".}
proc Visit*(this: var BRepMesh_ShapeVisitor; theEdge: TopoDS_Edge) {.
    importcpp: "Visit", header: "BRepMesh_ShapeVisitor.hxx".}
type
  BRepMesh_ShapeVisitorbase_type* = IMeshTools_ShapeVisitor

proc get_type_name*(): cstring {.importcpp: "BRepMesh_ShapeVisitor::get_type_name(@)",
                              header: "BRepMesh_ShapeVisitor.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_ShapeVisitor::get_type_descriptor(@)",
    header: "BRepMesh_ShapeVisitor.hxx".}
proc DynamicType*(this: BRepMesh_ShapeVisitor): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepMesh_ShapeVisitor.hxx".}