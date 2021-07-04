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

import
  Graphic3d_BvhCStructureSet, Graphic3d_BvhCStructureSetTrsfPers,
  Graphic3d_Camera, Graphic3d_ZLayerId, Graphic3d_ZLayerSettings,
  Graphic3d_RenderingParams, ../NCollection/NCollection_Array1,
  ../NCollection/NCollection_IndexedMap, ../NCollection/NCollection_Sequence

## ! Defines index map of structures.

type
  Graphic3d_IndexedMapOfStructure* = NCollection_IndexedMap[
      ptr Graphic3d_CStructure]

## ! Defines array of indexed maps of structures.

type
  Graphic3d_ArrayOfIndexedMapOfStructure* = NCollection_Array1[
      Graphic3d_IndexedMapOfStructure]

discard "forward decl of Graphic3d_CullingTool"
type
  Graphic3d_Layer* {.importcpp: "Graphic3d_Layer", header: "Graphic3d_Layer.hxx",
                    bycopy.} = object of Standard_Transient ## ! Initializes associated priority list and layer properties
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

  Graphic3d_Layerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_Layer::get_type_name(@)",
                              header: "Graphic3d_Layer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_Layer::get_type_descriptor(@)",
    header: "Graphic3d_Layer.hxx".}
proc DynamicType*(this: Graphic3d_Layer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_Layer.hxx".}
proc constructGraphic3d_Layer*(theId: Graphic3d_ZLayerId;
                              theNbPriorities: Standard_Integer;
                              theBuilder: handle[Select3D_BVHBuilder3d]): Graphic3d_Layer {.
    constructor, importcpp: "Graphic3d_Layer(@)", header: "Graphic3d_Layer.hxx".}
proc destroyGraphic3d_Layer*(this: var Graphic3d_Layer) {.
    importcpp: "#.~Graphic3d_Layer()", header: "Graphic3d_Layer.hxx".}
proc LayerId*(this: Graphic3d_Layer): Graphic3d_ZLayerId {.noSideEffect,
    importcpp: "LayerId", header: "Graphic3d_Layer.hxx".}
proc FrustumCullingBVHBuilder*(this: Graphic3d_Layer): handle[Select3D_BVHBuilder3d] {.
    noSideEffect, importcpp: "FrustumCullingBVHBuilder",
    header: "Graphic3d_Layer.hxx".}
proc SetFrustumCullingBVHBuilder*(this: var Graphic3d_Layer;
                                 theBuilder: handle[Select3D_BVHBuilder3d]) {.
    importcpp: "SetFrustumCullingBVHBuilder", header: "Graphic3d_Layer.hxx".}
proc IsImmediate*(this: Graphic3d_Layer): Standard_Boolean {.noSideEffect,
    importcpp: "IsImmediate", header: "Graphic3d_Layer.hxx".}
proc LayerSettings*(this: Graphic3d_Layer): Graphic3d_ZLayerSettings {.noSideEffect,
    importcpp: "LayerSettings", header: "Graphic3d_Layer.hxx".}
  ## ! Sets settings of the layer object.
proc SetLayerSettings*(this: var Graphic3d_Layer;
                      theSettings: Graphic3d_ZLayerSettings) {.
    importcpp: "SetLayerSettings", header: "Graphic3d_Layer.hxx".}
proc Add*(this: var Graphic3d_Layer; theStruct: ptr Graphic3d_CStructure;
         thePriority: Standard_Integer;
         isForChangePriority: Standard_Boolean = Standard_False) {.importcpp: "Add",
    header: "Graphic3d_Layer.hxx".}
proc Remove*(this: var Graphic3d_Layer; theStruct: ptr Graphic3d_CStructure;
            thePriority: var Standard_Integer;
            isForChangePriority: Standard_Boolean = Standard_False): bool {.
    importcpp: "Remove", header: "Graphic3d_Layer.hxx".}
proc NbStructures*(this: Graphic3d_Layer): Standard_Integer {.noSideEffect,
    importcpp: "NbStructures", header: "Graphic3d_Layer.hxx".}
proc NbStructuresNotCulled*(this: Graphic3d_Layer): Standard_Integer {.noSideEffect,
    importcpp: "NbStructuresNotCulled", header: "Graphic3d_Layer.hxx".}
proc NbPriorities*(this: Graphic3d_Layer): Standard_Integer {.noSideEffect,
    importcpp: "NbPriorities", header: "Graphic3d_Layer.hxx".}
proc Append*(this: var Graphic3d_Layer; theOther: Graphic3d_Layer): Standard_Boolean {.
    importcpp: "Append", header: "Graphic3d_Layer.hxx".}
proc ArrayOfStructures*(this: Graphic3d_Layer): Graphic3d_ArrayOfIndexedMapOfStructure {.
    noSideEffect, importcpp: "ArrayOfStructures", header: "Graphic3d_Layer.hxx".}
proc InvalidateBVHData*(this: var Graphic3d_Layer) {.importcpp: "InvalidateBVHData",
    header: "Graphic3d_Layer.hxx".}
proc InvalidateBoundingBox*(this: Graphic3d_Layer) {.noSideEffect,
    importcpp: "InvalidateBoundingBox", header: "Graphic3d_Layer.hxx".}
proc BoundingBox*(this: Graphic3d_Layer; theViewId: Standard_Integer;
                 theCamera: handle[Graphic3d_Camera];
                 theWindowWidth: Standard_Integer;
                 theWindowHeight: Standard_Integer;
                 theToIncludeAuxiliary: Standard_Boolean): Bnd_Box {.noSideEffect,
    importcpp: "BoundingBox", header: "Graphic3d_Layer.hxx".}
proc considerZoomPersistenceObjects*(this: Graphic3d_Layer;
                                    theViewId: Standard_Integer;
                                    theCamera: handle[Graphic3d_Camera];
                                    theWindowWidth: Standard_Integer;
                                    theWindowHeight: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "considerZoomPersistenceObjects",
    header: "Graphic3d_Layer.hxx".}
proc UpdateCulling*(this: var Graphic3d_Layer; theViewId: Standard_Integer;
                   theSelector: Graphic3d_CullingTool;
                   theFrustumCullingState: FrustumCulling) {.
    importcpp: "UpdateCulling", header: "Graphic3d_Layer.hxx".}
proc IsCulled*(this: Graphic3d_Layer): bool {.noSideEffect, importcpp: "IsCulled",
    header: "Graphic3d_Layer.hxx".}
proc NbOfTransformPersistenceObjects*(this: Graphic3d_Layer): Standard_Integer {.
    noSideEffect, importcpp: "NbOfTransformPersistenceObjects",
    header: "Graphic3d_Layer.hxx".}
proc CullableStructuresBVH*(this: Graphic3d_Layer): Graphic3d_BvhCStructureSet {.
    noSideEffect, importcpp: "CullableStructuresBVH", header: "Graphic3d_Layer.hxx".}
proc CullableTrsfPersStructuresBVH*(this: Graphic3d_Layer): Graphic3d_BvhCStructureSetTrsfPers {.
    noSideEffect, importcpp: "CullableTrsfPersStructuresBVH",
    header: "Graphic3d_Layer.hxx".}
proc NonCullableStructures*(this: Graphic3d_Layer): NCollection_IndexedMap[
    ptr Graphic3d_CStructure] {.noSideEffect, importcpp: "NonCullableStructures",
                              header: "Graphic3d_Layer.hxx".}
proc DumpJson*(this: Graphic3d_Layer; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_Layer.hxx".}