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

type
  Graphic3dIndexedMapOfStructure* = NCollectionIndexedMap[ptr Graphic3dCStructure]

## ! Defines array of indexed maps of structures.

type
  Graphic3dArrayOfIndexedMapOfStructure* = NCollectionArray1[
      Graphic3dIndexedMapOfStructure]

discard "forward decl of Graphic3d_CullingTool"
type
  Graphic3dLayer* {.importcpp: "Graphic3d_Layer", header: "Graphic3d_Layer.hxx",
                   bycopy.} = object of StandardTransient ## ! Initializes associated priority list and layer properties
                                                     ## ! Returns set of Graphic3d_CStructures structures for building BVH tree.
                                                     ## ! Updates BVH trees if their state has been invalidated.
                                                     ## ! Array of Graphic3d_CStructures by priority rendered in layer.
    ## ! Overall number of structures rendered in the layer.
    ## ! Number of NOT culled structures in the layer.
    ## ! Layer setting flags.
    ## ! Layer id.
    ## ! Set of Graphic3d_CStructures structures for building BVH tree.
    ## ! Set of transform persistent Graphic3d_CStructures for building BVH tree.
    ## ! Indexed map of always rendered structures.
    ## ! Is needed for implementation of stochastic order of BVH traverse.
    ## ! Defines if the primitive set for BVH is outdated.
    ## ! Defines if the cached bounding box is outdated.
    ## ! Cached layer bounding box.

  Graphic3dLayerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_Layer::get_type_name(@)",
                            header: "Graphic3d_Layer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_Layer::get_type_descriptor(@)",
    header: "Graphic3d_Layer.hxx".}
proc dynamicType*(this: Graphic3dLayer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_Layer.hxx".}
proc constructGraphic3dLayer*(theId: Graphic3dZLayerId;
                             theNbPriorities: StandardInteger;
                             theBuilder: Handle[Select3D_BVHBuilder3d]): Graphic3dLayer {.
    constructor, importcpp: "Graphic3d_Layer(@)", header: "Graphic3d_Layer.hxx".}
proc destroyGraphic3dLayer*(this: var Graphic3dLayer) {.
    importcpp: "#.~Graphic3d_Layer()", header: "Graphic3d_Layer.hxx".}
proc layerId*(this: Graphic3dLayer): Graphic3dZLayerId {.noSideEffect,
    importcpp: "LayerId", header: "Graphic3d_Layer.hxx".}
proc frustumCullingBVHBuilder*(this: Graphic3dLayer): Handle[Select3D_BVHBuilder3d] {.
    noSideEffect, importcpp: "FrustumCullingBVHBuilder",
    header: "Graphic3d_Layer.hxx".}
proc setFrustumCullingBVHBuilder*(this: var Graphic3dLayer;
                                 theBuilder: Handle[Select3D_BVHBuilder3d]) {.
    importcpp: "SetFrustumCullingBVHBuilder", header: "Graphic3d_Layer.hxx".}
proc isImmediate*(this: Graphic3dLayer): StandardBoolean {.noSideEffect,
    importcpp: "IsImmediate", header: "Graphic3d_Layer.hxx".}
proc layerSettings*(this: Graphic3dLayer): Graphic3dZLayerSettings {.noSideEffect,
    importcpp: "LayerSettings", header: "Graphic3d_Layer.hxx".}
  ## ! Sets settings of the layer object.
proc setLayerSettings*(this: var Graphic3dLayer;
                      theSettings: Graphic3dZLayerSettings) {.
    importcpp: "SetLayerSettings", header: "Graphic3d_Layer.hxx".}
proc add*(this: var Graphic3dLayer; theStruct: ptr Graphic3dCStructure;
         thePriority: StandardInteger;
         isForChangePriority: StandardBoolean = standardFalse) {.importcpp: "Add",
    header: "Graphic3d_Layer.hxx".}
proc remove*(this: var Graphic3dLayer; theStruct: ptr Graphic3dCStructure;
            thePriority: var StandardInteger;
            isForChangePriority: StandardBoolean = standardFalse): bool {.
    importcpp: "Remove", header: "Graphic3d_Layer.hxx".}
proc nbStructures*(this: Graphic3dLayer): StandardInteger {.noSideEffect,
    importcpp: "NbStructures", header: "Graphic3d_Layer.hxx".}
proc nbStructuresNotCulled*(this: Graphic3dLayer): StandardInteger {.noSideEffect,
    importcpp: "NbStructuresNotCulled", header: "Graphic3d_Layer.hxx".}
proc nbPriorities*(this: Graphic3dLayer): StandardInteger {.noSideEffect,
    importcpp: "NbPriorities", header: "Graphic3d_Layer.hxx".}
proc append*(this: var Graphic3dLayer; theOther: Graphic3dLayer): StandardBoolean {.
    importcpp: "Append", header: "Graphic3d_Layer.hxx".}
proc arrayOfStructures*(this: Graphic3dLayer): Graphic3dArrayOfIndexedMapOfStructure {.
    noSideEffect, importcpp: "ArrayOfStructures", header: "Graphic3d_Layer.hxx".}
proc invalidateBVHData*(this: var Graphic3dLayer) {.importcpp: "InvalidateBVHData",
    header: "Graphic3d_Layer.hxx".}
proc invalidateBoundingBox*(this: Graphic3dLayer) {.noSideEffect,
    importcpp: "InvalidateBoundingBox", header: "Graphic3d_Layer.hxx".}
proc boundingBox*(this: Graphic3dLayer; theViewId: StandardInteger;
                 theCamera: Handle[Graphic3dCamera];
                 theWindowWidth: StandardInteger;
                 theWindowHeight: StandardInteger;
                 theToIncludeAuxiliary: StandardBoolean): BndBox {.noSideEffect,
    importcpp: "BoundingBox", header: "Graphic3d_Layer.hxx".}
proc considerZoomPersistenceObjects*(this: Graphic3dLayer;
                                    theViewId: StandardInteger;
                                    theCamera: Handle[Graphic3dCamera];
                                    theWindowWidth: StandardInteger;
                                    theWindowHeight: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "considerZoomPersistenceObjects",
    header: "Graphic3d_Layer.hxx".}
proc updateCulling*(this: var Graphic3dLayer; theViewId: StandardInteger;
                   theSelector: Graphic3dCullingTool;
                   theFrustumCullingState: FrustumCulling) {.
    importcpp: "UpdateCulling", header: "Graphic3d_Layer.hxx".}
proc isCulled*(this: Graphic3dLayer): bool {.noSideEffect, importcpp: "IsCulled",
    header: "Graphic3d_Layer.hxx".}
proc nbOfTransformPersistenceObjects*(this: Graphic3dLayer): StandardInteger {.
    noSideEffect, importcpp: "NbOfTransformPersistenceObjects",
    header: "Graphic3d_Layer.hxx".}
proc cullableStructuresBVH*(this: Graphic3dLayer): Graphic3dBvhCStructureSet {.
    noSideEffect, importcpp: "CullableStructuresBVH", header: "Graphic3d_Layer.hxx".}
proc cullableTrsfPersStructuresBVH*(this: Graphic3dLayer): Graphic3dBvhCStructureSetTrsfPers {.
    noSideEffect, importcpp: "CullableTrsfPersStructuresBVH",
    header: "Graphic3d_Layer.hxx".}
proc nonCullableStructures*(this: Graphic3dLayer): NCollectionIndexedMap[
    ptr Graphic3dCStructure] {.noSideEffect, importcpp: "NonCullableStructures",
                             header: "Graphic3d_Layer.hxx".}
proc dumpJson*(this: Graphic3dLayer; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_Layer.hxx".}

