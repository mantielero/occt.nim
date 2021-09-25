##  Copyright (c) 2017-2019 OPEN CASCADE SAS
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

discard "forward decl of TDF_Label"
type
  RWMeshFaceIterator* {.importcpp: "RWMesh_FaceIterator",
                       header: "RWMesh_FaceIterator.hxx", bycopy.} = object ## ! Main
                                                                       ## constructor.
                                                                       ## ! Return face material.
                                                                       ## ! Return number of elements of specific type for the current face.
                                                                       ## ! Return true if
                                                                       ## triangulation has defined normals.
                                                                       ## ! Return the node with specified index with applied
                                                                       ## transformation.
                                                                       ## ! Dispatch face styles.
    ## !< Face -> Style map
    ## !< default style for faces without dedicated style
    ## !< flag to dispatch styles
    ## !< face explorer
    ## !< current face
    ## !< triangulation of current face
    ## !< current face location
    ## !< auxiliary tool for fetching normals from surface
    ## !< surface adaptor for fetching normals from surface
    ## !< node positions of current face
    ## !< node normals of current face
    ## !< node UV coordinates of current face
    ## !< flag indicating that current face has normals
    ## !< current face transformation
    ## !< flag indicating that face triangles should be mirrored
    ## !< current face style
    ## !< current face color
    ## !< flag indicating that current face has assigned color


proc constructRWMeshFaceIterator*(theLabel: TDF_Label; theLocation: TopLocLocation;
                                 theToMapColors: bool = false;
                                 theStyle: XCAFPrsStyle = xCAFPrsStyle()): RWMeshFaceIterator {.
    constructor, importcpp: "RWMesh_FaceIterator(@)",
    header: "RWMesh_FaceIterator.hxx".}
proc more*(this: RWMeshFaceIterator): bool {.noSideEffect, importcpp: "More",
    header: "RWMesh_FaceIterator.hxx".}
proc next*(this: var RWMeshFaceIterator) {.importcpp: "Next",
                                       header: "RWMesh_FaceIterator.hxx".}
proc face*(this: RWMeshFaceIterator): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "RWMesh_FaceIterator.hxx".}
proc triangulation*(this: RWMeshFaceIterator): Handle[PolyTriangulation] {.
    noSideEffect, importcpp: "Triangulation", header: "RWMesh_FaceIterator.hxx".}
proc isEmptyMesh*(this: RWMeshFaceIterator): bool {.noSideEffect,
    importcpp: "IsEmptyMesh", header: "RWMesh_FaceIterator.hxx".}
proc faceStyle*(this: RWMeshFaceIterator): XCAFPrsStyle {.noSideEffect,
    importcpp: "FaceStyle", header: "RWMesh_FaceIterator.hxx".}
proc hasFaceColor*(this: RWMeshFaceIterator): bool {.noSideEffect,
    importcpp: "HasFaceColor", header: "RWMesh_FaceIterator.hxx".}
proc faceColor*(this: RWMeshFaceIterator): QuantityColorRGBA {.noSideEffect,
    importcpp: "FaceColor", header: "RWMesh_FaceIterator.hxx".}
proc nbTriangles*(this: RWMeshFaceIterator): int {.noSideEffect,
    importcpp: "NbTriangles", header: "RWMesh_FaceIterator.hxx".}
proc elemLower*(this: RWMeshFaceIterator): int {.noSideEffect,
    importcpp: "ElemLower", header: "RWMesh_FaceIterator.hxx".}
proc elemUpper*(this: RWMeshFaceIterator): int {.noSideEffect,
    importcpp: "ElemUpper", header: "RWMesh_FaceIterator.hxx".}
proc triangleOriented*(this: RWMeshFaceIterator; theElemIndex: int): PolyTriangle {.
    noSideEffect, importcpp: "TriangleOriented", header: "RWMesh_FaceIterator.hxx".}
proc hasNormals*(this: RWMeshFaceIterator): bool {.noSideEffect,
    importcpp: "HasNormals", header: "RWMesh_FaceIterator.hxx".}
proc hasTexCoords*(this: RWMeshFaceIterator): bool {.noSideEffect,
    importcpp: "HasTexCoords", header: "RWMesh_FaceIterator.hxx".}
proc normalTransformed*(this: var RWMeshFaceIterator; theNode: int): Dir {.
    importcpp: "NormalTransformed", header: "RWMesh_FaceIterator.hxx".}
proc nbNodes*(this: RWMeshFaceIterator): int {.noSideEffect, importcpp: "NbNodes",
    header: "RWMesh_FaceIterator.hxx".}
proc nodeLower*(this: RWMeshFaceIterator): int {.noSideEffect,
    importcpp: "NodeLower", header: "RWMesh_FaceIterator.hxx".}
proc nodeUpper*(this: RWMeshFaceIterator): int {.noSideEffect,
    importcpp: "NodeUpper", header: "RWMesh_FaceIterator.hxx".}
proc nodeTransformed*(this: RWMeshFaceIterator; theNode: int): Pnt {.noSideEffect,
    importcpp: "NodeTransformed", header: "RWMesh_FaceIterator.hxx".}
proc nodeTexCoord*(this: RWMeshFaceIterator; theNode: int): Pnt2d {.noSideEffect,
    importcpp: "NodeTexCoord", header: "RWMesh_FaceIterator.hxx".}
proc node*(this: RWMeshFaceIterator; theNode: int): Pnt {.noSideEffect,
    importcpp: "node", header: "RWMesh_FaceIterator.hxx".}
proc normal*(this: var RWMeshFaceIterator; theNode: int): Dir {.importcpp: "normal",
    header: "RWMesh_FaceIterator.hxx".}
proc triangle*(this: RWMeshFaceIterator; theElemIndex: int): PolyTriangle {.
    noSideEffect, importcpp: "triangle", header: "RWMesh_FaceIterator.hxx".}
