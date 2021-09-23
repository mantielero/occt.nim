##  Created on: 2016-02-20
##  Created by: Kirill Gavrilov
##  Copyright (c) 2016 OPEN CASCADE SAS
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
  ../Graphic3d/Graphic3d_Buffer, ../Graphic3d/Graphic3d_IndexBuffer,
  ../Graphic3d/Graphic3d_TypeOfPrimitiveArray, ../NCollection/NCollection_Shared,
  Select3D_SensitiveSet, Select3D_BVHIndexBuffer,
  ../TColStd/TColStd_HPackedMapOfInteger

## ! Sensitive for triangulation or point set defined by Primitive Array.
## ! The primitives can be optionally combined into patches within BVH tree
## ! to reduce its building time in expense of extra traverse time.

type
  Select3D_SensitivePrimitiveArray* {.importcpp: "Select3D_SensitivePrimitiveArray", header: "Select3D_SensitivePrimitiveArray.hxx",
                                     bycopy.} = object of Select3D_SensitiveSet ## !
                                                                           ## Constructs an empty
                                                                           ## sensitive
                                                                           ## object.
                                                                           ## !
                                                                           ## Checks
                                                                           ## whether the
                                                                           ## sensitive
                                                                           ## entity is
                                                                           ## overlapped by
                                                                           ## current
                                                                           ## selecting
                                                                           ## volume.
                                                                           ## !
                                                                           ## Compute
                                                                           ## bounding box.
    ## !< sub-groups of sensitive entities
    ## !< source data - nodes position
    ## !< source data - primitive indexes
    ## !< position vertex attribute data
    ## !< position vertex attribute stride in bytes
    ## !< primitives type
    ## !< index range - first index in myIndices (inclusive)
    ## !< index range - last  index in myIndices (inclusive)
    ## !< patch size limit (1 by default)
    ## !< distance between elements in patch
    ## !< flag indicating that position attribute has 3 components
    ## !< Center of the whole triangulation
    ## !< Indexes of edges or triangles for BVH tree
    ## !< Bounding box of the whole triangulation
    ## !< index map of last detected elements
    ## !< index map of last detected nodes
    ## !< the depth of nearest detected element
    ## !< the depth of nearest detected node
    ## !< the depth of nearest detected edge
    ## !< index of last detected element
    ## !< index of last detected node
    ## !< index of last detected edge node 1
    ## !< index of last detected edge node 2
    ## !< flag to keep info about last detected element
    ## !< flag to keep info about last detected node
    ## !< flag to keep info about last detected edge


proc constructSelect3D_SensitivePrimitiveArray*(
    theOwnerId: handle[SelectMgr_EntityOwner]): Select3D_SensitivePrimitiveArray {.
    constructor, importcpp: "Select3D_SensitivePrimitiveArray(@)",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc PatchSizeMax*(this: Select3D_SensitivePrimitiveArray): Standard_Integer {.
    noSideEffect, importcpp: "PatchSizeMax",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc SetPatchSizeMax*(this: var Select3D_SensitivePrimitiveArray;
                     thePatchSizeMax: Standard_Integer) {.
    importcpp: "SetPatchSizeMax", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc PatchDistance*(this: Select3D_SensitivePrimitiveArray): cfloat {.noSideEffect,
    importcpp: "PatchDistance", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc SetPatchDistance*(this: var Select3D_SensitivePrimitiveArray;
                      thePatchDistMax: cfloat) {.importcpp: "SetPatchDistance",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc InitTriangulation*(this: var Select3D_SensitivePrimitiveArray;
                       theVerts: handle[Graphic3d_Buffer];
                       theIndices: handle[Graphic3d_IndexBuffer];
                       theInitLoc: TopLoc_Location;
                       theIndexLower: Standard_Integer;
                       theIndexUpper: Standard_Integer;
                       theToEvalMinMax: bool = true;
                       theNbGroups: Standard_Integer = 1): bool {.
    importcpp: "InitTriangulation", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc InitTriangulation*(this: var Select3D_SensitivePrimitiveArray;
                       theVerts: handle[Graphic3d_Buffer];
                       theIndices: handle[Graphic3d_IndexBuffer];
                       theInitLoc: TopLoc_Location; theToEvalMinMax: bool = true;
                       theNbGroups: Standard_Integer = 1): bool {.
    importcpp: "InitTriangulation", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc InitPoints*(this: var Select3D_SensitivePrimitiveArray;
                theVerts: handle[Graphic3d_Buffer];
                theIndices: handle[Graphic3d_IndexBuffer];
                theInitLoc: TopLoc_Location; theIndexLower: Standard_Integer;
                theIndexUpper: Standard_Integer; theToEvalMinMax: bool = true;
                theNbGroups: Standard_Integer = 1): bool {.importcpp: "InitPoints",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc InitPoints*(this: var Select3D_SensitivePrimitiveArray;
                theVerts: handle[Graphic3d_Buffer];
                theIndices: handle[Graphic3d_IndexBuffer];
                theInitLoc: TopLoc_Location; theToEvalMinMax: bool = true;
                theNbGroups: Standard_Integer = 1): bool {.importcpp: "InitPoints",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc InitPoints*(this: var Select3D_SensitivePrimitiveArray;
                theVerts: handle[Graphic3d_Buffer]; theInitLoc: TopLoc_Location;
                theToEvalMinMax: bool = true; theNbGroups: Standard_Integer = 1): bool {.
    importcpp: "InitPoints", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc SetMinMax*(this: var Select3D_SensitivePrimitiveArray; theMinX: cdouble;
               theMinY: cdouble; theMinZ: cdouble; theMaxX: cdouble; theMaxY: cdouble;
               theMaxZ: cdouble) {.importcpp: "SetMinMax",
                                 header: "Select3D_SensitivePrimitiveArray.hxx".}
proc ToDetectElements*(this: Select3D_SensitivePrimitiveArray): bool {.noSideEffect,
    importcpp: "ToDetectElements", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc SetDetectElements*(this: var Select3D_SensitivePrimitiveArray;
                       theToDetect: bool) {.importcpp: "SetDetectElements",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc ToDetectElementMap*(this: Select3D_SensitivePrimitiveArray): bool {.
    noSideEffect, importcpp: "ToDetectElementMap",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc SetDetectElementMap*(this: var Select3D_SensitivePrimitiveArray;
                         theToDetect: bool) {.importcpp: "SetDetectElementMap",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc ToDetectNodes*(this: Select3D_SensitivePrimitiveArray): bool {.noSideEffect,
    importcpp: "ToDetectNodes", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc SetDetectNodes*(this: var Select3D_SensitivePrimitiveArray; theToDetect: bool) {.
    importcpp: "SetDetectNodes", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc ToDetectNodeMap*(this: Select3D_SensitivePrimitiveArray): bool {.noSideEffect,
    importcpp: "ToDetectNodeMap", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc SetDetectNodeMap*(this: var Select3D_SensitivePrimitiveArray; theToDetect: bool) {.
    importcpp: "SetDetectNodeMap", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc ToDetectEdges*(this: Select3D_SensitivePrimitiveArray): bool {.noSideEffect,
    importcpp: "ToDetectEdges", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc SetDetectEdges*(this: var Select3D_SensitivePrimitiveArray; theToDetect: bool) {.
    importcpp: "SetDetectEdges", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc LastDetectedElement*(this: Select3D_SensitivePrimitiveArray): Standard_Integer {.
    noSideEffect, importcpp: "LastDetectedElement",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc LastDetectedElementMap*(this: Select3D_SensitivePrimitiveArray): handle[
    TColStd_HPackedMapOfInteger] {.noSideEffect,
                                  importcpp: "LastDetectedElementMap", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc LastDetectedNode*(this: Select3D_SensitivePrimitiveArray): Standard_Integer {.
    noSideEffect, importcpp: "LastDetectedNode",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc LastDetectedNodeMap*(this: Select3D_SensitivePrimitiveArray): handle[
    TColStd_HPackedMapOfInteger] {.noSideEffect, importcpp: "LastDetectedNodeMap", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc LastDetectedEdgeNode1*(this: Select3D_SensitivePrimitiveArray): Standard_Integer {.
    noSideEffect, importcpp: "LastDetectedEdgeNode1",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc LastDetectedEdgeNode2*(this: Select3D_SensitivePrimitiveArray): Standard_Integer {.
    noSideEffect, importcpp: "LastDetectedEdgeNode2",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc DumpJson*(this: Select3D_SensitivePrimitiveArray;
              theOStream: var Standard_OStream; theDepth: Standard_Integer = -1) {.
    noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc Matches*(this: var Select3D_SensitivePrimitiveArray;
             theMgr: var SelectBasics_SelectingVolumeManager;
             thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    importcpp: "Matches", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc GetConnected*(this: var Select3D_SensitivePrimitiveArray): handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitivePrimitiveArray.hxx".}
proc Size*(this: Select3D_SensitivePrimitiveArray): Standard_Integer {.noSideEffect,
    importcpp: "Size", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc NbSubElements*(this: Select3D_SensitivePrimitiveArray): Standard_Integer {.
    noSideEffect, importcpp: "NbSubElements",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc Box*(this: Select3D_SensitivePrimitiveArray; theIdx: Standard_Integer): Select3D_BndBox3d {.
    noSideEffect, importcpp: "Box", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc Center*(this: Select3D_SensitivePrimitiveArray; theIdx: Standard_Integer;
            theAxis: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Center", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc Swap*(this: var Select3D_SensitivePrimitiveArray; theIdx1: Standard_Integer;
          theIdx2: Standard_Integer) {.importcpp: "Swap", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc BoundingBox*(this: var Select3D_SensitivePrimitiveArray): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc CenterOfGeometry*(this: Select3D_SensitivePrimitiveArray): gp_Pnt {.
    noSideEffect, importcpp: "CenterOfGeometry",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc HasInitLocation*(this: Select3D_SensitivePrimitiveArray): Standard_Boolean {.
    noSideEffect, importcpp: "HasInitLocation",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc InvInitLocation*(this: Select3D_SensitivePrimitiveArray): gp_GTrsf {.
    noSideEffect, importcpp: "InvInitLocation",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc Set*(this: var Select3D_SensitivePrimitiveArray;
         theOwnerId: handle[SelectMgr_EntityOwner]) {.importcpp: "Set",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc BVH*(this: var Select3D_SensitivePrimitiveArray) {.importcpp: "BVH",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
type
  Select3D_SensitivePrimitiveArraybase_type* = Select3D_SensitiveSet

proc get_type_name*(): cstring {.importcpp: "Select3D_SensitivePrimitiveArray::get_type_name(@)",
                              header: "Select3D_SensitivePrimitiveArray.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Select3D_SensitivePrimitiveArray::get_type_descriptor(@)",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc DynamicType*(this: Select3D_SensitivePrimitiveArray): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
discard "forward decl of Select3D_SensitivePrimitiveArray"
type
  Handle_Select3D_SensitivePrimitiveArray* = handle[
      Select3D_SensitivePrimitiveArray]
