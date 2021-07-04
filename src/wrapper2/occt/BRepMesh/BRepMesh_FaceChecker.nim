##  Created on: 2016-07-04
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
  ../IMeshTools/IMeshTools_Parameters, ../Standard/Standard_Transient,
  ../IMeshData/IMeshData_Face, ../Standard/Standard_Type,
  ../NCollection/NCollection_Shared

## ! Auxiliary class checking wires of target face for self-intersections.
## ! Explodes wires of discrete face on sets of segments using tessellation
## ! data stored in model. Each segment is then checked for intersection with
## ! other ones. All collisions are registerd and returned as result of check.

type
  BRepMesh_FaceChecker* {.importcpp: "BRepMesh_FaceChecker",
                         header: "BRepMesh_FaceChecker.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## @name
                                                                                              ## mesher
                                                                                              ## API
                                                                                              ##
                                                                                              ## !
                                                                                              ## Identifies
                                                                                              ## segment
                                                                                              ## inside
                                                                                              ## face.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## True
                                                                                              ## in
                                                                                              ## case
                                                                                              ## if
                                                                                              ## check
                                                                                              ## can
                                                                                              ## be
                                                                                              ## performed
                                                                                              ## in
                                                                                              ## parallel
                                                                                              ## mode.

  BRepMesh_FaceCheckerSegment* {.importcpp: "BRepMesh_FaceChecker::Segment",
                                header: "BRepMesh_FaceChecker.hxx", bycopy.} = object
    EdgePtr* {.importc: "EdgePtr".}: IEdgePtr
    Point1* {.importc: "Point1".}: ptr gp_Pnt2d ##  \ Use explicit pointers to points instead of accessing
    Point2* {.importc: "Point2".}: ptr gp_Pnt2d ##  / using indices.


proc constructBRepMesh_FaceCheckerSegment*(): BRepMesh_FaceCheckerSegment {.
    constructor, importcpp: "BRepMesh_FaceChecker::Segment(@)",
    header: "BRepMesh_FaceChecker.hxx".}
proc constructBRepMesh_FaceCheckerSegment*(theEdgePtr: IEdgePtr;
    thePoint1: ptr gp_Pnt2d; thePoint2: ptr gp_Pnt2d): BRepMesh_FaceCheckerSegment {.
    constructor, importcpp: "BRepMesh_FaceChecker::Segment(@)",
    header: "BRepMesh_FaceChecker.hxx".}
type
  BRepMesh_FaceCheckerSegments* = NCollection_Shared[
      NCollection_Vector[BRepMesh_FaceCheckerSegment]]
  BRepMesh_FaceCheckerArrayOfSegments* = NCollection_Shared[
      NCollection_Array1[handle[BRepMesh_FaceCheckerSegments]]]
  BRepMesh_FaceCheckerArrayOfBndBoxTree* = NCollection_Shared[
      NCollection_Array1[handle[BndBox2dTree]]]
  BRepMesh_FaceCheckerArrayOfMapOfIEdgePtr* = NCollection_Shared[
      NCollection_Array1[handle[MapOfIEdgePtr]]]

proc constructBRepMesh_FaceChecker*(theFace: IFaceHandle;
                                   theParameters: IMeshTools_Parameters): BRepMesh_FaceChecker {.
    constructor, importcpp: "BRepMesh_FaceChecker(@)",
    header: "BRepMesh_FaceChecker.hxx".}
proc destroyBRepMesh_FaceChecker*(this: var BRepMesh_FaceChecker) {.
    importcpp: "#.~BRepMesh_FaceChecker()", header: "BRepMesh_FaceChecker.hxx".}
proc Perform*(this: var BRepMesh_FaceChecker): Standard_Boolean {.
    importcpp: "Perform", header: "BRepMesh_FaceChecker.hxx".}
proc GetIntersectingEdges*(this: BRepMesh_FaceChecker): handle[MapOfIEdgePtr] {.
    noSideEffect, importcpp: "GetIntersectingEdges",
    header: "BRepMesh_FaceChecker.hxx".}
proc `()`*(this: BRepMesh_FaceChecker; theWireIndex: Standard_Integer) {.
    noSideEffect, importcpp: "#(@)", header: "BRepMesh_FaceChecker.hxx".}
type
  BRepMesh_FaceCheckerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepMesh_FaceChecker::get_type_name(@)",
                              header: "BRepMesh_FaceChecker.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_FaceChecker::get_type_descriptor(@)",
    header: "BRepMesh_FaceChecker.hxx".}
proc DynamicType*(this: BRepMesh_FaceChecker): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_FaceChecker.hxx".}