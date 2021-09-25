##  Created on: 2016-08-22
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

## ! Auxiliary tool providing API for manipulation with BRepMesh_DataStructureOfDelaun.

type
  BRepMeshMeshTool* {.importcpp: "BRepMesh_MeshTool",
                     header: "BRepMesh_MeshTool.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Helper
                                                                                      ## functor
                                                                                      ## intended
                                                                                      ## to
                                                                                      ## separate
                                                                                      ## points
                                                                                      ## to
                                                                                      ## left
                                                                                      ## and
                                                                                      ## right
                                                                                      ## from
                                                                                      ## the
                                                                                      ## constraint.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## True
                                                                                      ## if
                                                                                      ## the
                                                                                      ## given
                                                                                      ## point
                                                                                      ## lies
                                                                                      ## within
                                                                                      ## circumcircle
                                                                                      ## of
                                                                                      ## the
                                                                                      ## given
                                                                                      ## triangle.

  BRepMeshMeshToolNodeClassifier* {.importcpp: "BRepMesh_MeshTool::NodeClassifier",
                                   header: "BRepMesh_MeshTool.hxx", bycopy.} = object


proc constructBRepMeshMeshToolNodeClassifier*(theConstraint: BRepMeshEdge;
    theStructure: Handle[BRepMeshDataStructureOfDelaun]): BRepMeshMeshToolNodeClassifier {.
    constructor, importcpp: "BRepMesh_MeshTool::NodeClassifier(@)",
    header: "BRepMesh_MeshTool.hxx".}
proc isAbove*(this: BRepMeshMeshToolNodeClassifier; theNodeIndex: int): bool {.
    noSideEffect, importcpp: "IsAbove", header: "BRepMesh_MeshTool.hxx".}
proc constructBRepMeshMeshTool*(theStructure: Handle[BRepMeshDataStructureOfDelaun]): BRepMeshMeshTool {.
    constructor, importcpp: "BRepMesh_MeshTool(@)", header: "BRepMesh_MeshTool.hxx".}
proc destroyBRepMeshMeshTool*(this: var BRepMeshMeshTool) {.
    importcpp: "#.~BRepMesh_MeshTool()", header: "BRepMesh_MeshTool.hxx".}
proc getStructure*(this: BRepMeshMeshTool): Handle[BRepMeshDataStructureOfDelaun] {.
    noSideEffect, importcpp: "GetStructure", header: "BRepMesh_MeshTool.hxx".}
proc dumpTriangles*(this: var BRepMeshMeshTool; theFileName: StandardCString;
                   theTriangles: ptr MapOfInteger) {.importcpp: "DumpTriangles",
    header: "BRepMesh_MeshTool.hxx".}
proc addAndLegalizeTriangle*(this: var BRepMeshMeshTool; thePoint1: int;
                            thePoint2: int; thePoint3: int) {.
    importcpp: "AddAndLegalizeTriangle", header: "BRepMesh_MeshTool.hxx".}
proc addTriangle*(this: var BRepMeshMeshTool; thePoint1: int; thePoint2: int;
                 thePoint3: int; theEdges: array[3, int]) {.importcpp: "AddTriangle",
    header: "BRepMesh_MeshTool.hxx".}
proc addLink*(this: var BRepMeshMeshTool; theFirstNode: int; theLastNode: int;
             theLinkIndex: var int; theLinkOri: var bool) {.importcpp: "AddLink",
    header: "BRepMesh_MeshTool.hxx".}
proc legalize*(this: var BRepMeshMeshTool; theLinkIndex: int) {.importcpp: "Legalize",
    header: "BRepMesh_MeshTool.hxx".}
proc eraseItemsConnectedTo*(this: var BRepMeshMeshTool; theNodeIndex: int) {.
    importcpp: "EraseItemsConnectedTo", header: "BRepMesh_MeshTool.hxx".}
proc cleanFrontierLinks*(this: var BRepMeshMeshTool) {.
    importcpp: "CleanFrontierLinks", header: "BRepMesh_MeshTool.hxx".}
proc eraseTriangles*(this: var BRepMeshMeshTool; theTriangles: MapOfInteger;
                    theLoopEdges: var MapOfIntegerInteger) {.
    importcpp: "EraseTriangles", header: "BRepMesh_MeshTool.hxx".}
proc eraseTriangle*(this: var BRepMeshMeshTool; theTriangleIndex: int;
                   theLoopEdges: var MapOfIntegerInteger) {.
    importcpp: "EraseTriangle", header: "BRepMesh_MeshTool.hxx".}
proc eraseFreeLinks*(this: var BRepMeshMeshTool) {.importcpp: "EraseFreeLinks",
    header: "BRepMesh_MeshTool.hxx".}
proc eraseFreeLinks*(this: var BRepMeshMeshTool; theLinks: MapOfIntegerInteger) {.
    importcpp: "EraseFreeLinks", header: "BRepMesh_MeshTool.hxx".}
proc getEdgesByType*(this: BRepMeshMeshTool; theEdgeType: BRepMeshDegreeOfFreedom): Handle[
    MapOfInteger] {.noSideEffect, importcpp: "GetEdgesByType",
                   header: "BRepMesh_MeshTool.hxx".}
type
  BRepMeshMeshToolbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepMesh_MeshTool::get_type_name(@)",
                            header: "BRepMesh_MeshTool.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_MeshTool::get_type_descriptor(@)",
    header: "BRepMesh_MeshTool.hxx".}
proc dynamicType*(this: BRepMeshMeshTool): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_MeshTool.hxx".}
