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
                       header: "BRepMesh_CircleTool.hxx", bycopy.} = object ## !
                                                                       ## Constructor.
                                                                       ## ! @param
                                                                       ## theAllocator memory allocator to be used by internal
                                                                       ## structures.
                                                                       ## ! Creates circle with the given
                                                                       ## parameters and binds it to the tool.
                                                                       ## ! @param theIndex index a circle should be bound with.
                                                                       ## ! @param
                                                                       ## theLocation location of a circle.
                                                                       ## ! @param theRadius radius of a circle.


proc constructBRepMeshCircleTool*(theAllocator: Handle[NCollectionIncAllocator]): BRepMeshCircleTool {.
    constructor, importcpp: "BRepMesh_CircleTool(@)",
    header: "BRepMesh_CircleTool.hxx".}
proc constructBRepMeshCircleTool*(theReservedSize: StandardInteger;
                                 theAllocator: Handle[NCollectionIncAllocator]): BRepMeshCircleTool {.
    constructor, importcpp: "BRepMesh_CircleTool(@)",
    header: "BRepMesh_CircleTool.hxx".}
proc init*(this: var BRepMeshCircleTool; a2: StandardInteger) {.importcpp: "Init",
    header: "BRepMesh_CircleTool.hxx".}
  ## theReservedSize
proc setCellSize*(this: var BRepMeshCircleTool; theSize: StandardReal) {.
    importcpp: "SetCellSize", header: "BRepMesh_CircleTool.hxx".}
proc setCellSize*(this: var BRepMeshCircleTool; theSizeX: StandardReal;
                 theSizeY: StandardReal) {.importcpp: "SetCellSize",
    header: "BRepMesh_CircleTool.hxx".}
proc setMinMaxSize*(this: var BRepMeshCircleTool; theMin: GpXY; theMax: GpXY) {.
    importcpp: "SetMinMaxSize", header: "BRepMesh_CircleTool.hxx".}
proc isEmpty*(this: BRepMeshCircleTool): StandardBoolean {.noSideEffect,
    importcpp: "IsEmpty", header: "BRepMesh_CircleTool.hxx".}
proc `bind`*(this: var BRepMeshCircleTool; theIndex: StandardInteger;
            theCircle: GpCirc2d) {.importcpp: "Bind",
                                 header: "BRepMesh_CircleTool.hxx".}
proc makeCircle*(thePoint1: GpXY; thePoint2: GpXY; thePoint3: GpXY;
                theLocation: var GpXY; theRadius: var StandardReal): StandardBoolean {.
    importcpp: "BRepMesh_CircleTool::MakeCircle(@)",
    header: "BRepMesh_CircleTool.hxx".}
proc `bind`*(this: var BRepMeshCircleTool; theIndex: StandardInteger; thePoint1: GpXY;
            thePoint2: GpXY; thePoint3: GpXY): StandardBoolean {.importcpp: "Bind",
    header: "BRepMesh_CircleTool.hxx".}
proc mocBind*(this: var BRepMeshCircleTool; theIndex: StandardInteger) {.
    importcpp: "MocBind", header: "BRepMesh_CircleTool.hxx".}
proc delete*(this: var BRepMeshCircleTool; theIndex: StandardInteger) {.
    importcpp: "Delete", header: "BRepMesh_CircleTool.hxx".}
proc select*(this: var BRepMeshCircleTool; thePoint: GpXY): var ListOfInteger {.
    importcpp: "Select", header: "BRepMesh_CircleTool.hxx".}

