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

discard "forward decl of gp_Circ2d"
type
  BRepMeshCircleTool* {.importcpp: "BRepMesh_CircleTool",
                       header: "BRepMesh_CircleTool.hxx", bycopy.} = object ## ! Creates circle with the given
                                                                       ## parameters and binds it to the tool.
                                                                       ## ! @param theIndex index a circle should be bound with.
                                                                       ## ! @param
                                                                       ## theLocation location of a circle.
                                                                       ## ! @param theRadius radius of a circle.


proc `new`*(this: var BRepMeshCircleTool; theSize: csize_t): pointer {.
    importcpp: "BRepMesh_CircleTool::operator new",
    header: "BRepMesh_CircleTool.hxx".}
proc `delete`*(this: var BRepMeshCircleTool; theAddress: pointer) {.
    importcpp: "BRepMesh_CircleTool::operator delete",
    header: "BRepMesh_CircleTool.hxx".}
proc `new[]`*(this: var BRepMeshCircleTool; theSize: csize_t): pointer {.
    importcpp: "BRepMesh_CircleTool::operator new[]",
    header: "BRepMesh_CircleTool.hxx".}
proc `delete[]`*(this: var BRepMeshCircleTool; theAddress: pointer) {.
    importcpp: "BRepMesh_CircleTool::operator delete[]",
    header: "BRepMesh_CircleTool.hxx".}
proc `new`*(this: var BRepMeshCircleTool; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepMesh_CircleTool::operator new",
    header: "BRepMesh_CircleTool.hxx".}
proc `delete`*(this: var BRepMeshCircleTool; a2: pointer; a3: pointer) {.
    importcpp: "BRepMesh_CircleTool::operator delete",
    header: "BRepMesh_CircleTool.hxx".}
proc constructBRepMeshCircleTool*(theAllocator: Handle[NCollectionIncAllocator]): BRepMeshCircleTool {.
    constructor, importcpp: "BRepMesh_CircleTool(@)",
    header: "BRepMesh_CircleTool.hxx".}
proc constructBRepMeshCircleTool*(theReservedSize: int;
                                 theAllocator: Handle[NCollectionIncAllocator]): BRepMeshCircleTool {.
    constructor, importcpp: "BRepMesh_CircleTool(@)",
    header: "BRepMesh_CircleTool.hxx".}
proc init*(this: var BRepMeshCircleTool; a2: int) {.importcpp: "Init",
    header: "BRepMesh_CircleTool.hxx".}
  ## theReservedSize
proc setCellSize*(this: var BRepMeshCircleTool; theSize: StandardReal) {.
    importcpp: "SetCellSize", header: "BRepMesh_CircleTool.hxx".}
proc setCellSize*(this: var BRepMeshCircleTool; theSizeX: StandardReal;
                 theSizeY: StandardReal) {.importcpp: "SetCellSize",
    header: "BRepMesh_CircleTool.hxx".}
proc setMinMaxSize*(this: var BRepMeshCircleTool; theMin: Xy; theMax: Xy) {.
    importcpp: "SetMinMaxSize", header: "BRepMesh_CircleTool.hxx".}
proc isEmpty*(this: BRepMeshCircleTool): StandardBoolean {.noSideEffect,
    importcpp: "IsEmpty", header: "BRepMesh_CircleTool.hxx".}
proc `bind`*(this: var BRepMeshCircleTool; theIndex: int; theCircle: Circ2d) {.
    importcpp: "Bind", header: "BRepMesh_CircleTool.hxx".}
proc makeCircle*(thePoint1: Xy; thePoint2: Xy; thePoint3: Xy; theLocation: var Xy;
                theRadius: var StandardReal): StandardBoolean {.
    importcpp: "BRepMesh_CircleTool::MakeCircle(@)",
    header: "BRepMesh_CircleTool.hxx".}
proc `bind`*(this: var BRepMeshCircleTool; theIndex: int; thePoint1: Xy; thePoint2: Xy;
            thePoint3: Xy): StandardBoolean {.importcpp: "Bind",
    header: "BRepMesh_CircleTool.hxx".}
proc mocBind*(this: var BRepMeshCircleTool; theIndex: int) {.importcpp: "MocBind",
    header: "BRepMesh_CircleTool.hxx".}
proc delete*(this: var BRepMeshCircleTool; theIndex: int) {.importcpp: "Delete",
    header: "BRepMesh_CircleTool.hxx".}
proc select*(this: var BRepMeshCircleTool; thePoint: Xy): var ListOfInteger {.
    importcpp: "Select", header: "BRepMesh_CircleTool.hxx".}