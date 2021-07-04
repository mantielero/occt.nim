## ! Created on: 2015-04-24
## ! Created by: NIKOLAI BUKHALOV
## ! Copyright (c) 2015 OPEN CASCADE SAS
## !
## ! This file is part of Open CASCADE Technology software library.
## !
## ! This library is free software; you can redistribute it and/or modify it under
## ! the terms of the GNU Lesser General Public License version 2.1 as published
## ! by the Free Software Foundation, with special exception defined in the file
## ! OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
## ! distribution for complete text of the license and disclaimer of any warranty.
## !
## ! Alternatively, this file may be used under the terms of Open CASCADE
## ! commercial license or contractual agreement.

import
  ../Standard/Standard_Transient, ../BRep/BRep_Builder,
  ../NCollection/NCollection_List, ../NCollection/NCollection_Sequence,
  ../NCollection/NCollection_Vector, ../NCollection/NCollection_CellFilter,
  ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Face, ../TopoDS/TopoDS_Vertex,
  ../TopoDS/TopoDS_Wire

## ! This class performs fast sewing of surfaces (faces). It supposes
## ! that all surfaces are finite and are naturally restricted by their bounds.
## ! Moreover, it supposes that stitched together surfaces have the same parameterization
## ! along common boundaries, therefore it does not perform time-consuming check for
## ! SameParameter property of edges.
## !
## ! For sewing, use this function as following:
## ! - set tolerance value (default tolerance is 1.E-06)
## ! - add all necessary surfaces (faces)
## ! - check status if adding is correctly completed.
## ! - compute -> Perform
## ! - retrieve the error status if any
## ! - retrieve the resulted shape

type
  BRepBuilderAPI_FastSewing* {.importcpp: "BRepBuilderAPI_FastSewing",
                              header: "BRepBuilderAPI_FastSewing.hxx", bycopy.} = object of Standard_Transient
    ##  myFaceVec, myVertexVec and myEdgeVec lists are filled only once!!!!!
    ## ! Vector of faces
    ## ! Vector of Vertices
    ## ! Vector of edges
    ## ! Tolerance
    ## ! Bits of computation status

  BRepBuilderAPI_FastSewingFS_VARStatuses* = cuint
  BRepBuilderAPI_FastSewingFS_Statuses* {.size: sizeof(cint),
      importcpp: "BRepBuilderAPI_FastSewing::FS_Statuses",
      header: "BRepBuilderAPI_FastSewing.hxx".} = enum
    FS_OK = 0x00000000, FS_Degenerated = 0x00000001, FS_FindVertexError = 0x00000002,
    FS_FindEdgeError = 0x00000004, FS_FaceWithNullSurface = 0x00000008,
    FS_NotNaturalBoundsFace = 0x00000010, FS_InfiniteSurface = 0x00000020,
    FS_EmptyInput = 0x00000040, FS_Exception = 0x00000080


proc constructBRepBuilderAPI_FastSewing*(theTolerance: Standard_Real = 1.0e-06): BRepBuilderAPI_FastSewing {.
    constructor, importcpp: "BRepBuilderAPI_FastSewing(@)",
    header: "BRepBuilderAPI_FastSewing.hxx".}
proc Add*(this: var BRepBuilderAPI_FastSewing; theShape: TopoDS_Shape): Standard_Boolean {.
    importcpp: "Add", header: "BRepBuilderAPI_FastSewing.hxx".}
proc Add*(this: var BRepBuilderAPI_FastSewing; theSurface: handle[Geom_Surface]): Standard_Boolean {.
    importcpp: "Add", header: "BRepBuilderAPI_FastSewing.hxx".}
proc Perform*(this: var BRepBuilderAPI_FastSewing) {.importcpp: "Perform",
    header: "BRepBuilderAPI_FastSewing.hxx".}
proc SetTolerance*(this: var BRepBuilderAPI_FastSewing; theToler: Standard_Real) {.
    importcpp: "SetTolerance", header: "BRepBuilderAPI_FastSewing.hxx".}
proc GetTolerance*(this: BRepBuilderAPI_FastSewing): Standard_Real {.noSideEffect,
    importcpp: "GetTolerance", header: "BRepBuilderAPI_FastSewing.hxx".}
proc GetResult*(this: BRepBuilderAPI_FastSewing): TopoDS_Shape {.noSideEffect,
    importcpp: "GetResult", header: "BRepBuilderAPI_FastSewing.hxx".}
proc GetStatuses*(this: var BRepBuilderAPI_FastSewing;
                 theOS: ptr Standard_OStream = 0): BRepBuilderAPI_FastSewingFS_VARStatuses {.
    importcpp: "GetStatuses", header: "BRepBuilderAPI_FastSewing.hxx".}
type
  BRepBuilderAPI_FastSewingbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepBuilderAPI_FastSewing::get_type_name(@)",
                              header: "BRepBuilderAPI_FastSewing.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepBuilderAPI_FastSewing::get_type_descriptor(@)",
    header: "BRepBuilderAPI_FastSewing.hxx".}
proc DynamicType*(this: BRepBuilderAPI_FastSewing): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepBuilderAPI_FastSewing.hxx".}
discard "forward decl of BRepBuilderAPI_FastSewing"
type
  Handle_BRepBuilderAPI_FastSewing* = handle[BRepBuilderAPI_FastSewing]
