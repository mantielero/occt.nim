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

import
  ../NCollection/NCollection_Array1, ../Standard/Standard_Transient,
  BRepMesh_VertexInspector, ../Standard/Standard_OStream, ../gp/gp_XY,
  ../IMeshData/IMeshData_Types

discard "forward decl of BRepMesh_Vertex"
type
  BRepMesh_VertexTool* {.importcpp: "BRepMesh_VertexTool",
                        header: "BRepMesh_VertexTool.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructBRepMesh_VertexTool*(theAllocator: handle[NCollection_IncAllocator]): BRepMesh_VertexTool {.
    constructor, importcpp: "BRepMesh_VertexTool(@)",
    header: "BRepMesh_VertexTool.hxx".}
proc SetCellSize*(this: var BRepMesh_VertexTool; theSize: Standard_Real) {.
    importcpp: "SetCellSize", header: "BRepMesh_VertexTool.hxx".}
proc SetCellSize*(this: var BRepMesh_VertexTool; theSizeX: Standard_Real;
                 theSizeY: Standard_Real) {.importcpp: "SetCellSize",
    header: "BRepMesh_VertexTool.hxx".}
proc SetTolerance*(this: var BRepMesh_VertexTool; theTolerance: Standard_Real) {.
    importcpp: "SetTolerance", header: "BRepMesh_VertexTool.hxx".}
proc SetTolerance*(this: var BRepMesh_VertexTool; theToleranceX: Standard_Real;
                  theToleranceY: Standard_Real) {.importcpp: "SetTolerance",
    header: "BRepMesh_VertexTool.hxx".}
proc GetTolerance*(this: var BRepMesh_VertexTool; theToleranceX: var Standard_Real;
                  theToleranceY: var Standard_Real) {.importcpp: "GetTolerance",
    header: "BRepMesh_VertexTool.hxx".}
proc Add*(this: var BRepMesh_VertexTool; theVertex: BRepMesh_Vertex;
         isForceAdd: Standard_Boolean): Standard_Integer {.importcpp: "Add",
    header: "BRepMesh_VertexTool.hxx".}
proc DeleteVertex*(this: var BRepMesh_VertexTool; theIndex: Standard_Integer) {.
    importcpp: "DeleteVertex", header: "BRepMesh_VertexTool.hxx".}
proc Vertices*(this: BRepMesh_VertexTool): handle[VectorOfVertex] {.noSideEffect,
    importcpp: "Vertices", header: "BRepMesh_VertexTool.hxx".}
proc ChangeVertices*(this: var BRepMesh_VertexTool): var handle[VectorOfVertex] {.
    importcpp: "ChangeVertices", header: "BRepMesh_VertexTool.hxx".}
proc FindKey*(this: var BRepMesh_VertexTool; theIndex: Standard_Integer): BRepMesh_Vertex {.
    importcpp: "FindKey", header: "BRepMesh_VertexTool.hxx".}
proc FindIndex*(this: var BRepMesh_VertexTool; theVertex: BRepMesh_Vertex): Standard_Integer {.
    importcpp: "FindIndex", header: "BRepMesh_VertexTool.hxx".}
proc Extent*(this: BRepMesh_VertexTool): Standard_Integer {.noSideEffect,
    importcpp: "Extent", header: "BRepMesh_VertexTool.hxx".}
proc IsEmpty*(this: BRepMesh_VertexTool): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "BRepMesh_VertexTool.hxx".}
proc Substitute*(this: var BRepMesh_VertexTool; theIndex: Standard_Integer;
                theVertex: BRepMesh_Vertex) {.importcpp: "Substitute",
    header: "BRepMesh_VertexTool.hxx".}
proc RemoveLast*(this: var BRepMesh_VertexTool) {.importcpp: "RemoveLast",
    header: "BRepMesh_VertexTool.hxx".}
proc GetListOfDelNodes*(this: BRepMesh_VertexTool): ListOfInteger {.noSideEffect,
    importcpp: "GetListOfDelNodes", header: "BRepMesh_VertexTool.hxx".}
proc Statistics*(this: BRepMesh_VertexTool; theStream: var Standard_OStream) {.
    noSideEffect, importcpp: "Statistics", header: "BRepMesh_VertexTool.hxx".}
type
  BRepMesh_VertexToolbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepMesh_VertexTool::get_type_name(@)",
                              header: "BRepMesh_VertexTool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_VertexTool::get_type_descriptor(@)",
    header: "BRepMesh_VertexTool.hxx".}
proc DynamicType*(this: BRepMesh_VertexTool): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_VertexTool.hxx".}