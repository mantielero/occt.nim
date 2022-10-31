import ../../tkernel/standard/standard_types
import graphic3d_types
import ../../tkmath/bnd/bnd_types





##  Copyright (c) 2011-2019 OPEN CASCADE SAS
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

## ! Defines index map of structures.

#type
#  Graphic3dIndexedMapOfStructure* = NCollectionIndexedMap[ptr Graphic3dCStructure]

## ! Defines array of indexed maps of structures.

#type
#  Graphic3dArrayOfIndexedMapOfStructure* = NCollectionArray1[
#      Graphic3dIndexedMapOfStructure]



proc newGraphic3dLayer*(theId: Graphic3dZLayerId; theNbPriorities: cint;
                       theBuilder: Handle[Select3D_BVHBuilder3d]): Graphic3dLayer {.
    cdecl, constructor, importcpp: "Graphic3d_Layer(@)", header: "Graphic3d_Layer.hxx".}
proc destroyGraphic3dLayer*(this: var Graphic3dLayer) {.cdecl,
    importcpp: "#.~Graphic3d_Layer()", header: "Graphic3d_Layer.hxx".}
proc layerId*(this: Graphic3dLayer): Graphic3dZLayerId {.noSideEffect, cdecl,
    importcpp: "LayerId", header: "Graphic3d_Layer.hxx".}
proc frustumCullingBVHBuilder*(this: Graphic3dLayer): Handle[Select3D_BVHBuilder3d] {.
    noSideEffect, cdecl, importcpp: "FrustumCullingBVHBuilder", header: "Graphic3d_Layer.hxx".}
proc setFrustumCullingBVHBuilder*(this: var Graphic3dLayer;
                                 theBuilder: Handle[Select3D_BVHBuilder3d]) {.
    cdecl, importcpp: "SetFrustumCullingBVHBuilder", header: "Graphic3d_Layer.hxx".}
proc isImmediate*(this: Graphic3dLayer): bool {.noSideEffect, cdecl,
    importcpp: "IsImmediate", header: "Graphic3d_Layer.hxx".}
proc layerSettings*(this: Graphic3dLayer): Graphic3dZLayerSettings {.noSideEffect,
    cdecl, importcpp: "LayerSettings", header: "Graphic3d_Layer.hxx".}
  ## ! Sets settings of the layer object.
proc setLayerSettings*(this: var Graphic3dLayer;
                      theSettings: Graphic3dZLayerSettings) {.cdecl,
    importcpp: "SetLayerSettings", header: "Graphic3d_Layer.hxx".}
proc add*(this: var Graphic3dLayer; theStruct: ptr Graphic3dCStructure;
         thePriority: cint; isForChangePriority: bool = false) {.cdecl,
    importcpp: "Add", header: "Graphic3d_Layer.hxx".}
proc remove*(this: var Graphic3dLayer; theStruct: ptr Graphic3dCStructure;
            thePriority: var cint; isForChangePriority: bool = false): bool {.cdecl,
    importcpp: "Remove", header: "Graphic3d_Layer.hxx".}
proc nbStructures*(this: Graphic3dLayer): cint {.noSideEffect, cdecl,
    importcpp: "NbStructures", header: "Graphic3d_Layer.hxx".}
proc nbStructuresNotCulled*(this: Graphic3dLayer): cint {.noSideEffect, cdecl,
    importcpp: "NbStructuresNotCulled", header: "Graphic3d_Layer.hxx".}
proc nbPriorities*(this: Graphic3dLayer): cint {.noSideEffect, cdecl,
    importcpp: "NbPriorities", header: "Graphic3d_Layer.hxx".}
proc append*(this: var Graphic3dLayer; theOther: Graphic3dLayer): bool {.cdecl,
    importcpp: "Append", header: "Graphic3d_Layer.hxx".}
proc arrayOfStructures*(this: Graphic3dLayer): Graphic3dArrayOfIndexedMapOfStructure {.
    noSideEffect, cdecl, importcpp: "ArrayOfStructures", header: "Graphic3d_Layer.hxx".}
proc invalidateBVHData*(this: var Graphic3dLayer) {.cdecl,
    importcpp: "InvalidateBVHData", header: "Graphic3d_Layer.hxx".}
proc invalidateBoundingBox*(this: Graphic3dLayer) {.noSideEffect, cdecl,
    importcpp: "InvalidateBoundingBox", header: "Graphic3d_Layer.hxx".}
proc boundingBox*(this: Graphic3dLayer; theViewId: cint;
                 theCamera: Handle[Graphic3dCamera]; theWindowWidth: cint;
                 theWindowHeight: cint; theToIncludeAuxiliary: bool): BndBox {.
    noSideEffect, cdecl, importcpp: "BoundingBox", header: "Graphic3d_Layer.hxx".}
proc considerZoomPersistenceObjects*(this: Graphic3dLayer; theViewId: cint;
                                    theCamera: Handle[Graphic3dCamera];
                                    theWindowWidth: cint; theWindowHeight: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "considerZoomPersistenceObjects", header: "Graphic3d_Layer.hxx".}
#proc updateCulling*(this: var Graphic3dLayer; theViewId: cint;
#                   theSelector: Graphic3dCullingTool;
#                   theFrustumCullingState: FrustumCulling) {.cdecl,
#    importcpp: "UpdateCulling", header: "Graphic3d_Layer.hxx".}
proc isCulled*(this: Graphic3dLayer): bool {.noSideEffect, cdecl,
    importcpp: "IsCulled", header: "Graphic3d_Layer.hxx".}
proc nbOfTransformPersistenceObjects*(this: Graphic3dLayer): cint {.noSideEffect,
    cdecl, importcpp: "NbOfTransformPersistenceObjects", header: "Graphic3d_Layer.hxx".}
proc cullableStructuresBVH*(this: Graphic3dLayer): Graphic3dBvhCStructureSet {.
    noSideEffect, cdecl, importcpp: "CullableStructuresBVH", header: "Graphic3d_Layer.hxx".}
proc cullableTrsfPersStructuresBVH*(this: Graphic3dLayer): Graphic3dBvhCStructureSetTrsfPers {.
    noSideEffect, cdecl, importcpp: "CullableTrsfPersStructuresBVH", header: "Graphic3d_Layer.hxx".}
#proc nonCullableStructures*(this: Graphic3dLayer): NCollectionIndexedMap[
#    ptr Graphic3dCStructure] {.noSideEffect, cdecl,
#                             importcpp: "NonCullableStructures", header: "Graphic3d_Layer.hxx".}
proc dumpJson*(this: Graphic3dLayer; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_Layer.hxx".}


