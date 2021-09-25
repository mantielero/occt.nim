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
    theOwnerId: Handle[SelectMgrEntityOwner]): Select3D_SensitivePrimitiveArray {.
    constructor, importcpp: "Select3D_SensitivePrimitiveArray(@)",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc patchSizeMax*(this: Select3D_SensitivePrimitiveArray): int {.noSideEffect,
    importcpp: "PatchSizeMax", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc setPatchSizeMax*(this: var Select3D_SensitivePrimitiveArray;
                     thePatchSizeMax: int) {.importcpp: "SetPatchSizeMax",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc patchDistance*(this: Select3D_SensitivePrimitiveArray): cfloat {.noSideEffect,
    importcpp: "PatchDistance", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc setPatchDistance*(this: var Select3D_SensitivePrimitiveArray;
                      thePatchDistMax: cfloat) {.importcpp: "SetPatchDistance",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc initTriangulation*(this: var Select3D_SensitivePrimitiveArray;
                       theVerts: Handle[Graphic3dBuffer];
                       theIndices: Handle[Graphic3dIndexBuffer];
                       theInitLoc: TopLocLocation; theIndexLower: int;
                       theIndexUpper: int; theToEvalMinMax: bool = true;
                       theNbGroups: int = 1): bool {.importcpp: "InitTriangulation",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc initTriangulation*(this: var Select3D_SensitivePrimitiveArray;
                       theVerts: Handle[Graphic3dBuffer];
                       theIndices: Handle[Graphic3dIndexBuffer];
                       theInitLoc: TopLocLocation; theToEvalMinMax: bool = true;
                       theNbGroups: int = 1): bool {.importcpp: "InitTriangulation",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc initPoints*(this: var Select3D_SensitivePrimitiveArray;
                theVerts: Handle[Graphic3dBuffer];
                theIndices: Handle[Graphic3dIndexBuffer];
                theInitLoc: TopLocLocation; theIndexLower: int; theIndexUpper: int;
                theToEvalMinMax: bool = true; theNbGroups: int = 1): bool {.
    importcpp: "InitPoints", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc initPoints*(this: var Select3D_SensitivePrimitiveArray;
                theVerts: Handle[Graphic3dBuffer];
                theIndices: Handle[Graphic3dIndexBuffer];
                theInitLoc: TopLocLocation; theToEvalMinMax: bool = true;
                theNbGroups: int = 1): bool {.importcpp: "InitPoints",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc initPoints*(this: var Select3D_SensitivePrimitiveArray;
                theVerts: Handle[Graphic3dBuffer]; theInitLoc: TopLocLocation;
                theToEvalMinMax: bool = true; theNbGroups: int = 1): bool {.
    importcpp: "InitPoints", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc setMinMax*(this: var Select3D_SensitivePrimitiveArray; theMinX: cdouble;
               theMinY: cdouble; theMinZ: cdouble; theMaxX: cdouble; theMaxY: cdouble;
               theMaxZ: cdouble) {.importcpp: "SetMinMax",
                                 header: "Select3D_SensitivePrimitiveArray.hxx".}
proc toDetectElements*(this: Select3D_SensitivePrimitiveArray): bool {.noSideEffect,
    importcpp: "ToDetectElements", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc setDetectElements*(this: var Select3D_SensitivePrimitiveArray;
                       theToDetect: bool) {.importcpp: "SetDetectElements",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc toDetectElementMap*(this: Select3D_SensitivePrimitiveArray): bool {.
    noSideEffect, importcpp: "ToDetectElementMap",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc setDetectElementMap*(this: var Select3D_SensitivePrimitiveArray;
                         theToDetect: bool) {.importcpp: "SetDetectElementMap",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc toDetectNodes*(this: Select3D_SensitivePrimitiveArray): bool {.noSideEffect,
    importcpp: "ToDetectNodes", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc setDetectNodes*(this: var Select3D_SensitivePrimitiveArray; theToDetect: bool) {.
    importcpp: "SetDetectNodes", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc toDetectNodeMap*(this: Select3D_SensitivePrimitiveArray): bool {.noSideEffect,
    importcpp: "ToDetectNodeMap", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc setDetectNodeMap*(this: var Select3D_SensitivePrimitiveArray; theToDetect: bool) {.
    importcpp: "SetDetectNodeMap", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc toDetectEdges*(this: Select3D_SensitivePrimitiveArray): bool {.noSideEffect,
    importcpp: "ToDetectEdges", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc setDetectEdges*(this: var Select3D_SensitivePrimitiveArray; theToDetect: bool) {.
    importcpp: "SetDetectEdges", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc lastDetectedElement*(this: Select3D_SensitivePrimitiveArray): int {.
    noSideEffect, importcpp: "LastDetectedElement",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc lastDetectedElementMap*(this: Select3D_SensitivePrimitiveArray): Handle[
    TColStdHPackedMapOfInteger] {.noSideEffect,
                                 importcpp: "LastDetectedElementMap",
                                 header: "Select3D_SensitivePrimitiveArray.hxx".}
proc lastDetectedNode*(this: Select3D_SensitivePrimitiveArray): int {.noSideEffect,
    importcpp: "LastDetectedNode", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc lastDetectedNodeMap*(this: Select3D_SensitivePrimitiveArray): Handle[
    TColStdHPackedMapOfInteger] {.noSideEffect, importcpp: "LastDetectedNodeMap",
                                 header: "Select3D_SensitivePrimitiveArray.hxx".}
proc lastDetectedEdgeNode1*(this: Select3D_SensitivePrimitiveArray): int {.
    noSideEffect, importcpp: "LastDetectedEdgeNode1",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc lastDetectedEdgeNode2*(this: Select3D_SensitivePrimitiveArray): int {.
    noSideEffect, importcpp: "LastDetectedEdgeNode2",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc dumpJson*(this: Select3D_SensitivePrimitiveArray;
              theOStream: var StandardOStream; theDepth: int = -1) {.noSideEffect,
    importcpp: "DumpJson", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc matches*(this: var Select3D_SensitivePrimitiveArray;
             theMgr: var SelectBasicsSelectingVolumeManager;
             thePickResult: var SelectBasicsPickResult): bool {.
    importcpp: "Matches", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc getConnected*(this: var Select3D_SensitivePrimitiveArray): Handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitivePrimitiveArray.hxx".}
proc size*(this: Select3D_SensitivePrimitiveArray): int {.noSideEffect,
    importcpp: "Size", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc nbSubElements*(this: Select3D_SensitivePrimitiveArray): int {.noSideEffect,
    importcpp: "NbSubElements", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc box*(this: Select3D_SensitivePrimitiveArray; theIdx: int): Select3D_BndBox3d {.
    noSideEffect, importcpp: "Box", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc center*(this: Select3D_SensitivePrimitiveArray; theIdx: int; theAxis: int): float {.
    noSideEffect, importcpp: "Center",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc swap*(this: var Select3D_SensitivePrimitiveArray; theIdx1: int; theIdx2: int) {.
    importcpp: "Swap", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc boundingBox*(this: var Select3D_SensitivePrimitiveArray): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc centerOfGeometry*(this: Select3D_SensitivePrimitiveArray): Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc hasInitLocation*(this: Select3D_SensitivePrimitiveArray): bool {.noSideEffect,
    importcpp: "HasInitLocation", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc invInitLocation*(this: Select3D_SensitivePrimitiveArray): GTrsf {.noSideEffect,
    importcpp: "InvInitLocation", header: "Select3D_SensitivePrimitiveArray.hxx".}
proc set*(this: var Select3D_SensitivePrimitiveArray;
         theOwnerId: Handle[SelectMgrEntityOwner]) {.importcpp: "Set",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc bvh*(this: var Select3D_SensitivePrimitiveArray) {.importcpp: "BVH",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
type
  Select3D_SensitivePrimitiveArraybaseType* = Select3D_SensitiveSet

proc getTypeName*(): cstring {.importcpp: "Select3D_SensitivePrimitiveArray::get_type_name(@)",
                            header: "Select3D_SensitivePrimitiveArray.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Select3D_SensitivePrimitiveArray::get_type_descriptor(@)",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
proc dynamicType*(this: Select3D_SensitivePrimitiveArray): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Select3D_SensitivePrimitiveArray.hxx".}
discard "forward decl of Select3D_SensitivePrimitiveArray"
type
  HandleSelect3D_SensitivePrimitiveArray* = Handle[
      Select3D_SensitivePrimitiveArray]

