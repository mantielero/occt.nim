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

import
  ../BRepLProp/BRepLProp_SLProps, ../gp/gp_Trsf,
  ../NCollection/NCollection_DataMap, ../Poly/Poly_Array1OfTriangle,
  ../Poly/Poly_Triangulation, ../TopExp/TopExp_Explorer, ../TopoDS/TopoDS_Face,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape, ../XCAFPrs/XCAFPrs_Style

discard "forward decl of TDF_Label"
type
  RWMesh_FaceIterator* {.importcpp: "RWMesh_FaceIterator",
                        header: "RWMesh_FaceIterator.hxx", bycopy.} = object ## ! Main
                                                                        ## constructor.
                                                                        ## ! Return face
                                                                        ## material.
                                                                        ## ! Return number of elements of specific type for the current face.
                                                                        ## ! Return true if
                                                                        ## triangulation has defined normals.
                                                                        ## ! Return the node with
                                                                        ## specified index with applied
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


proc constructRWMesh_FaceIterator*(theLabel: TDF_Label;
                                  theLocation: TopLoc_Location;
                                  theToMapColors: Standard_Boolean = false;
                                  theStyle: XCAFPrs_Style = XCAFPrs_Style()): RWMesh_FaceIterator {.
    constructor, importcpp: "RWMesh_FaceIterator(@)",
    header: "RWMesh_FaceIterator.hxx".}
proc More*(this: RWMesh_FaceIterator): bool {.noSideEffect, importcpp: "More",
    header: "RWMesh_FaceIterator.hxx".}
proc Next*(this: var RWMesh_FaceIterator) {.importcpp: "Next",
                                        header: "RWMesh_FaceIterator.hxx".}
proc Face*(this: RWMesh_FaceIterator): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "RWMesh_FaceIterator.hxx".}
proc Triangulation*(this: RWMesh_FaceIterator): handle[Poly_Triangulation] {.
    noSideEffect, importcpp: "Triangulation", header: "RWMesh_FaceIterator.hxx".}
proc IsEmptyMesh*(this: RWMesh_FaceIterator): bool {.noSideEffect,
    importcpp: "IsEmptyMesh", header: "RWMesh_FaceIterator.hxx".}
proc FaceStyle*(this: RWMesh_FaceIterator): XCAFPrs_Style {.noSideEffect,
    importcpp: "FaceStyle", header: "RWMesh_FaceIterator.hxx".}
proc HasFaceColor*(this: RWMesh_FaceIterator): bool {.noSideEffect,
    importcpp: "HasFaceColor", header: "RWMesh_FaceIterator.hxx".}
proc FaceColor*(this: RWMesh_FaceIterator): Quantity_ColorRGBA {.noSideEffect,
    importcpp: "FaceColor", header: "RWMesh_FaceIterator.hxx".}
proc NbTriangles*(this: RWMesh_FaceIterator): Standard_Integer {.noSideEffect,
    importcpp: "NbTriangles", header: "RWMesh_FaceIterator.hxx".}
proc ElemLower*(this: RWMesh_FaceIterator): Standard_Integer {.noSideEffect,
    importcpp: "ElemLower", header: "RWMesh_FaceIterator.hxx".}
proc ElemUpper*(this: RWMesh_FaceIterator): Standard_Integer {.noSideEffect,
    importcpp: "ElemUpper", header: "RWMesh_FaceIterator.hxx".}
proc TriangleOriented*(this: RWMesh_FaceIterator; theElemIndex: Standard_Integer): Poly_Triangle {.
    noSideEffect, importcpp: "TriangleOriented", header: "RWMesh_FaceIterator.hxx".}
proc HasNormals*(this: RWMesh_FaceIterator): bool {.noSideEffect,
    importcpp: "HasNormals", header: "RWMesh_FaceIterator.hxx".}
proc HasTexCoords*(this: RWMesh_FaceIterator): bool {.noSideEffect,
    importcpp: "HasTexCoords", header: "RWMesh_FaceIterator.hxx".}
proc NormalTransformed*(this: var RWMesh_FaceIterator; theNode: Standard_Integer): gp_Dir {.
    importcpp: "NormalTransformed", header: "RWMesh_FaceIterator.hxx".}
proc NbNodes*(this: RWMesh_FaceIterator): Standard_Integer {.noSideEffect,
    importcpp: "NbNodes", header: "RWMesh_FaceIterator.hxx".}
proc NodeLower*(this: RWMesh_FaceIterator): Standard_Integer {.noSideEffect,
    importcpp: "NodeLower", header: "RWMesh_FaceIterator.hxx".}
proc NodeUpper*(this: RWMesh_FaceIterator): Standard_Integer {.noSideEffect,
    importcpp: "NodeUpper", header: "RWMesh_FaceIterator.hxx".}
proc NodeTransformed*(this: RWMesh_FaceIterator; theNode: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "NodeTransformed", header: "RWMesh_FaceIterator.hxx".}
proc NodeTexCoord*(this: RWMesh_FaceIterator; theNode: Standard_Integer): gp_Pnt2d {.
    noSideEffect, importcpp: "NodeTexCoord", header: "RWMesh_FaceIterator.hxx".}
proc node*(this: RWMesh_FaceIterator; theNode: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "node", header: "RWMesh_FaceIterator.hxx".}
proc normal*(this: var RWMesh_FaceIterator; theNode: Standard_Integer): gp_Dir {.
    importcpp: "normal", header: "RWMesh_FaceIterator.hxx".}
proc triangle*(this: RWMesh_FaceIterator; theElemIndex: Standard_Integer): Poly_Triangle {.
    noSideEffect, importcpp: "triangle", header: "RWMesh_FaceIterator.hxx".}