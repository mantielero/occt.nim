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

## ! Auxiliary class checking wires of target face for self-intersections.
## ! Explodes wires of discrete face on sets of segments using tessellation
## ! data stored in model. Each segment is then checked for intersection with
## ! other ones. All collisions are registerd and returned as result of check.

type
  BRepMeshFaceChecker* {.importcpp: "BRepMesh_FaceChecker",
                        header: "BRepMesh_FaceChecker.hxx", bycopy.} = object of StandardTransient ##
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

  BRepMeshFaceCheckerSegment* {.importcpp: "BRepMesh_FaceChecker::Segment",
                               header: "BRepMesh_FaceChecker.hxx", bycopy.} = object
    edgePtr* {.importc: "EdgePtr".}: IEdgePtr
    point1* {.importc: "Point1".}: ptr Pnt2d ##  \ Use explicit pointers to points instead of accessing
    point2* {.importc: "Point2".}: ptr Pnt2d ##  / using indices.


proc constructBRepMeshFaceCheckerSegment*(): BRepMeshFaceCheckerSegment {.
    constructor, importcpp: "BRepMesh_FaceChecker::Segment(@)",
    header: "BRepMesh_FaceChecker.hxx".}
proc constructBRepMeshFaceCheckerSegment*(theEdgePtr: IEdgePtr;
    thePoint1: ptr Pnt2d; thePoint2: ptr Pnt2d): BRepMeshFaceCheckerSegment {.
    constructor, importcpp: "BRepMesh_FaceChecker::Segment(@)",
    header: "BRepMesh_FaceChecker.hxx".}
type
  BRepMeshFaceCheckerSegments* = NCollectionShared[
      NCollectionVector[BRepMeshFaceCheckerSegment]]
  BRepMeshFaceCheckerArrayOfSegments* = NCollectionShared[
      NCollectionArray1[Handle[BRepMeshFaceCheckerSegments]]]
  BRepMeshFaceCheckerArrayOfBndBoxTree* = NCollectionShared[
      NCollectionArray1[Handle[BndBox2dTree]]]
  BRepMeshFaceCheckerArrayOfMapOfIEdgePtr* = NCollectionShared[
      NCollectionArray1[Handle[MapOfIEdgePtr]]]

proc constructBRepMeshFaceChecker*(theFace: IFaceHandle;
                                  theParameters: IMeshToolsParameters): BRepMeshFaceChecker {.
    constructor, importcpp: "BRepMesh_FaceChecker(@)",
    header: "BRepMesh_FaceChecker.hxx".}
proc destroyBRepMeshFaceChecker*(this: var BRepMeshFaceChecker) {.
    importcpp: "#.~BRepMesh_FaceChecker()", header: "BRepMesh_FaceChecker.hxx".}
proc perform*(this: var BRepMeshFaceChecker): bool {.importcpp: "Perform",
    header: "BRepMesh_FaceChecker.hxx".}
proc getIntersectingEdges*(this: BRepMeshFaceChecker): Handle[MapOfIEdgePtr] {.
    noSideEffect, importcpp: "GetIntersectingEdges",
    header: "BRepMesh_FaceChecker.hxx".}
proc `()`*(this: BRepMeshFaceChecker; theWireIndex: int) {.noSideEffect,
    importcpp: "#(@)", header: "BRepMesh_FaceChecker.hxx".}
type
  BRepMeshFaceCheckerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepMesh_FaceChecker::get_type_name(@)",
                            header: "BRepMesh_FaceChecker.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_FaceChecker::get_type_descriptor(@)",
    header: "BRepMesh_FaceChecker.hxx".}
proc dynamicType*(this: BRepMeshFaceChecker): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_FaceChecker.hxx".}
