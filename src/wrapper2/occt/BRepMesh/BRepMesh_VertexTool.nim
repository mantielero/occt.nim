##  Copyright (c) 2013 OPEN CASCADE SAS
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

discard "forward decl of BRepMesh_Vertex"
type
  BRepMeshVertexTool* {.importcpp: "BRepMesh_VertexTool",
                       header: "BRepMesh_VertexTool.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Constructor.
                                                                                          ##
                                                                                          ## !
                                                                                          ## @param
                                                                                          ## theAllocator
                                                                                          ## memory
                                                                                          ## allocator
                                                                                          ## to
                                                                                          ## be
                                                                                          ## used
                                                                                          ## by
                                                                                          ## internal
                                                                                          ## collections.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Expands
                                                                                          ## the
                                                                                          ## given
                                                                                          ## point
                                                                                          ## according
                                                                                          ## to
                                                                                          ## specified
                                                                                          ## tolerance.
                                                                                          ##
                                                                                          ## !
                                                                                          ## @param
                                                                                          ## thePoint
                                                                                          ## point
                                                                                          ## to
                                                                                          ## be
                                                                                          ## expanded.
                                                                                          ##
                                                                                          ## !
                                                                                          ## @param[out]
                                                                                          ## theMinPoint
                                                                                          ## bottom
                                                                                          ## left
                                                                                          ## corner
                                                                                          ## of
                                                                                          ## area
                                                                                          ## defined
                                                                                          ## by
                                                                                          ## expanded
                                                                                          ## point.
                                                                                          ##
                                                                                          ## !
                                                                                          ## @param[out]
                                                                                          ## theMaxPoint
                                                                                          ## top
                                                                                          ## right
                                                                                          ## corner
                                                                                          ## of
                                                                                          ## area
                                                                                          ## defined
                                                                                          ## by
                                                                                          ## expanded
                                                                                          ## point.


proc constructBRepMeshVertexTool*(theAllocator: Handle[NCollectionIncAllocator]): BRepMeshVertexTool {.
    constructor, importcpp: "BRepMesh_VertexTool(@)",
    header: "BRepMesh_VertexTool.hxx".}
proc setCellSize*(this: var BRepMeshVertexTool; theSize: StandardReal) {.
    importcpp: "SetCellSize", header: "BRepMesh_VertexTool.hxx".}
proc setCellSize*(this: var BRepMeshVertexTool; theSizeX: StandardReal;
                 theSizeY: StandardReal) {.importcpp: "SetCellSize",
    header: "BRepMesh_VertexTool.hxx".}
proc setTolerance*(this: var BRepMeshVertexTool; theTolerance: StandardReal) {.
    importcpp: "SetTolerance", header: "BRepMesh_VertexTool.hxx".}
proc setTolerance*(this: var BRepMeshVertexTool; theToleranceX: StandardReal;
                  theToleranceY: StandardReal) {.importcpp: "SetTolerance",
    header: "BRepMesh_VertexTool.hxx".}
proc getTolerance*(this: var BRepMeshVertexTool; theToleranceX: var StandardReal;
                  theToleranceY: var StandardReal) {.importcpp: "GetTolerance",
    header: "BRepMesh_VertexTool.hxx".}
proc add*(this: var BRepMeshVertexTool; theVertex: BRepMeshVertex;
         isForceAdd: StandardBoolean): StandardInteger {.importcpp: "Add",
    header: "BRepMesh_VertexTool.hxx".}
proc deleteVertex*(this: var BRepMeshVertexTool; theIndex: StandardInteger) {.
    importcpp: "DeleteVertex", header: "BRepMesh_VertexTool.hxx".}
proc vertices*(this: BRepMeshVertexTool): Handle[VectorOfVertex] {.noSideEffect,
    importcpp: "Vertices", header: "BRepMesh_VertexTool.hxx".}
proc changeVertices*(this: var BRepMeshVertexTool): var Handle[VectorOfVertex] {.
    importcpp: "ChangeVertices", header: "BRepMesh_VertexTool.hxx".}
proc findKey*(this: var BRepMeshVertexTool; theIndex: StandardInteger): BRepMeshVertex {.
    importcpp: "FindKey", header: "BRepMesh_VertexTool.hxx".}
proc findIndex*(this: var BRepMeshVertexTool; theVertex: BRepMeshVertex): StandardInteger {.
    importcpp: "FindIndex", header: "BRepMesh_VertexTool.hxx".}
proc extent*(this: BRepMeshVertexTool): StandardInteger {.noSideEffect,
    importcpp: "Extent", header: "BRepMesh_VertexTool.hxx".}
proc isEmpty*(this: BRepMeshVertexTool): StandardBoolean {.noSideEffect,
    importcpp: "IsEmpty", header: "BRepMesh_VertexTool.hxx".}
proc substitute*(this: var BRepMeshVertexTool; theIndex: StandardInteger;
                theVertex: BRepMeshVertex) {.importcpp: "Substitute",
    header: "BRepMesh_VertexTool.hxx".}
proc removeLast*(this: var BRepMeshVertexTool) {.importcpp: "RemoveLast",
    header: "BRepMesh_VertexTool.hxx".}
proc getListOfDelNodes*(this: BRepMeshVertexTool): ListOfInteger {.noSideEffect,
    importcpp: "GetListOfDelNodes", header: "BRepMesh_VertexTool.hxx".}
proc statistics*(this: BRepMeshVertexTool; theStream: var StandardOStream) {.
    noSideEffect, importcpp: "Statistics", header: "BRepMesh_VertexTool.hxx".}
type
  BRepMeshVertexToolbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepMesh_VertexTool::get_type_name(@)",
                            header: "BRepMesh_VertexTool.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_VertexTool::get_type_descriptor(@)",
    header: "BRepMesh_VertexTool.hxx".}
proc dynamicType*(this: BRepMeshVertexTool): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_VertexTool.hxx".}

