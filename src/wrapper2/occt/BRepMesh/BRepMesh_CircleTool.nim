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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Macro, ../Standard/Standard_Real, BRepMesh_CircleInspector,
  ../gp/gp_XY, ../gp/gp_XYZ, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../IMeshData/IMeshData_Types,
  ../NCollection/NCollection_Array1

discard "forward decl of gp_Circ2d"
type
  BRepMesh_CircleTool* {.importcpp: "BRepMesh_CircleTool",
                        header: "BRepMesh_CircleTool.hxx", bycopy.} = object ## !
                                                                        ## Constructor.
                                                                        ## ! @param
                                                                        ## theAllocator memory
                                                                        ## allocator to be used by internal
                                                                        ## structures.
                                                                        ## ! Creates circle with the given
                                                                        ## parameters and binds it to the tool.
                                                                        ## ! @param theIndex index a circle should be bound with.
                                                                        ## ! @param
                                                                        ## theLocation location of a circle.
                                                                        ## ! @param
                                                                        ## theRadius radius of a circle.


proc constructBRepMesh_CircleTool*(theAllocator: handle[NCollection_IncAllocator]): BRepMesh_CircleTool {.
    constructor, importcpp: "BRepMesh_CircleTool(@)",
    header: "BRepMesh_CircleTool.hxx".}
proc constructBRepMesh_CircleTool*(theReservedSize: Standard_Integer; theAllocator: handle[
    NCollection_IncAllocator]): BRepMesh_CircleTool {.constructor,
    importcpp: "BRepMesh_CircleTool(@)", header: "BRepMesh_CircleTool.hxx".}
proc Init*(this: var BRepMesh_CircleTool; a2: Standard_Integer) {.importcpp: "Init",
    header: "BRepMesh_CircleTool.hxx".}
  ## theReservedSize
proc SetCellSize*(this: var BRepMesh_CircleTool; theSize: Standard_Real) {.
    importcpp: "SetCellSize", header: "BRepMesh_CircleTool.hxx".}
proc SetCellSize*(this: var BRepMesh_CircleTool; theSizeX: Standard_Real;
                 theSizeY: Standard_Real) {.importcpp: "SetCellSize",
    header: "BRepMesh_CircleTool.hxx".}
proc SetMinMaxSize*(this: var BRepMesh_CircleTool; theMin: gp_XY; theMax: gp_XY) {.
    importcpp: "SetMinMaxSize", header: "BRepMesh_CircleTool.hxx".}
proc IsEmpty*(this: BRepMesh_CircleTool): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "BRepMesh_CircleTool.hxx".}
proc Bind*(this: var BRepMesh_CircleTool; theIndex: Standard_Integer;
          theCircle: gp_Circ2d) {.importcpp: "Bind",
                                header: "BRepMesh_CircleTool.hxx".}
proc MakeCircle*(thePoint1: gp_XY; thePoint2: gp_XY; thePoint3: gp_XY;
                theLocation: var gp_XY; theRadius: var Standard_Real): Standard_Boolean {.
    importcpp: "BRepMesh_CircleTool::MakeCircle(@)",
    header: "BRepMesh_CircleTool.hxx".}
proc Bind*(this: var BRepMesh_CircleTool; theIndex: Standard_Integer;
          thePoint1: gp_XY; thePoint2: gp_XY; thePoint3: gp_XY): Standard_Boolean {.
    importcpp: "Bind", header: "BRepMesh_CircleTool.hxx".}
proc MocBind*(this: var BRepMesh_CircleTool; theIndex: Standard_Integer) {.
    importcpp: "MocBind", header: "BRepMesh_CircleTool.hxx".}
proc Delete*(this: var BRepMesh_CircleTool; theIndex: Standard_Integer) {.
    importcpp: "Delete", header: "BRepMesh_CircleTool.hxx".}
proc Select*(this: var BRepMesh_CircleTool; thePoint: gp_XY): var ListOfInteger {.
    importcpp: "Select", header: "BRepMesh_CircleTool.hxx".}