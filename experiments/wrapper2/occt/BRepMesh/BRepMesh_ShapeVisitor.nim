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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Wire"
discard "forward decl of IMeshTools_Context"
discard "forward decl of IMeshData_Wire"
type
  BRepMeshShapeVisitor* {.importcpp: "BRepMesh_ShapeVisitor",
                         header: "BRepMesh_ShapeVisitor.hxx", bycopy.} = object of IMeshToolsShapeVisitor ##
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


proc constructBRepMeshShapeVisitor*(theModel: Handle[IMeshDataModel]): BRepMeshShapeVisitor {.
    constructor, importcpp: "BRepMesh_ShapeVisitor(@)",
    header: "BRepMesh_ShapeVisitor.hxx".}
proc destroyBRepMeshShapeVisitor*(this: var BRepMeshShapeVisitor) {.
    importcpp: "#.~BRepMesh_ShapeVisitor()", header: "BRepMesh_ShapeVisitor.hxx".}
proc visit*(this: var BRepMeshShapeVisitor; theFace: TopoDS_Face) {.
    importcpp: "Visit", header: "BRepMesh_ShapeVisitor.hxx".}
proc visit*(this: var BRepMeshShapeVisitor; theEdge: TopoDS_Edge) {.
    importcpp: "Visit", header: "BRepMesh_ShapeVisitor.hxx".}
type
  BRepMeshShapeVisitorbaseType* = IMeshToolsShapeVisitor

proc getTypeName*(): cstring {.importcpp: "BRepMesh_ShapeVisitor::get_type_name(@)",
                            header: "BRepMesh_ShapeVisitor.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_ShapeVisitor::get_type_descriptor(@)",
    header: "BRepMesh_ShapeVisitor.hxx".}
proc dynamicType*(this: BRepMeshShapeVisitor): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_ShapeVisitor.hxx".}
