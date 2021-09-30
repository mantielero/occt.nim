##  Author: Kirill Gavrilov
##  Copyright (c) 2018-2019 OPEN CASCADE SAS
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

discard "forward decl of RWGltf_MaterialMetallicRoughness"
discard "forward decl of RWGltf_MaterialCommon"
type
  RWGltfGltfLatePrimitiveArray* {.importcpp: "RWGltf_GltfLatePrimitiveArray",
                                 header: "RWGltf_GltfLatePrimitiveArray.hxx",
                                 bycopy.} = object of PolyTriangulation ## ! Constructor.
    ## !< PBR material
    ## !< common (obsolete) material
    ## !< bounding box
    ## !< entity id
    ## !< entity name
    ## !< type of primitive array

  RWGltfGltfLatePrimitiveArraybaseType* = PolyTriangulation

proc getTypeName*(): cstring {.importcpp: "RWGltf_GltfLatePrimitiveArray::get_type_name(@)",
                            header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "RWGltf_GltfLatePrimitiveArray::get_type_descriptor(@)",
    header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc dynamicType*(this: RWGltfGltfLatePrimitiveArray): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc constructRWGltfGltfLatePrimitiveArray*(theId: TCollectionAsciiString;
    theName: TCollectionAsciiString): RWGltfGltfLatePrimitiveArray {.constructor,
    importcpp: "RWGltf_GltfLatePrimitiveArray(@)",
    header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc destroyRWGltfGltfLatePrimitiveArray*(this: var RWGltfGltfLatePrimitiveArray) {.
    importcpp: "#.~RWGltf_GltfLatePrimitiveArray()",
    header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc id*(this: RWGltfGltfLatePrimitiveArray): TCollectionAsciiString {.noSideEffect,
    importcpp: "Id", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc name*(this: RWGltfGltfLatePrimitiveArray): TCollectionAsciiString {.
    noSideEffect, importcpp: "Name", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc setName*(this: var RWGltfGltfLatePrimitiveArray;
             theName: TCollectionAsciiString) {.importcpp: "SetName",
    header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc primitiveMode*(this: RWGltfGltfLatePrimitiveArray): RWGltfGltfPrimitiveMode {.
    noSideEffect, importcpp: "PrimitiveMode",
    header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc setPrimitiveMode*(this: var RWGltfGltfLatePrimitiveArray;
                      theMode: RWGltfGltfPrimitiveMode) {.
    importcpp: "SetPrimitiveMode", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc hasStyle*(this: RWGltfGltfLatePrimitiveArray): bool {.noSideEffect,
    importcpp: "HasStyle", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc baseColor*(this: RWGltfGltfLatePrimitiveArray): QuantityColorRGBA {.
    noSideEffect, importcpp: "BaseColor",
    header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc materialPbr*(this: RWGltfGltfLatePrimitiveArray): Handle[
    RWGltfMaterialMetallicRoughness] {.noSideEffect, importcpp: "MaterialPbr", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc setMaterialPbr*(this: var RWGltfGltfLatePrimitiveArray;
                    theMat: Handle[RWGltfMaterialMetallicRoughness]) {.
    importcpp: "SetMaterialPbr", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc materialCommon*(this: RWGltfGltfLatePrimitiveArray): Handle[
    RWGltfMaterialCommon] {.noSideEffect, importcpp: "MaterialCommon",
                           header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc setMaterialCommon*(this: var RWGltfGltfLatePrimitiveArray;
                       theMat: Handle[RWGltfMaterialCommon]) {.
    importcpp: "SetMaterialCommon", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc data*(this: RWGltfGltfLatePrimitiveArray): NCollectionSequence[
    RWGltfGltfPrimArrayData] {.noSideEffect, importcpp: "Data",
                              header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc addPrimArrayData*(this: var RWGltfGltfLatePrimitiveArray;
                      theType: RWGltfGltfArrayType): var RWGltfGltfPrimArrayData {.
    importcpp: "AddPrimArrayData", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc boundingBox*(this: RWGltfGltfLatePrimitiveArray): BndBox {.noSideEffect,
    importcpp: "BoundingBox", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc setBoundingBox*(this: var RWGltfGltfLatePrimitiveArray; theBox: BndBox) {.
    importcpp: "SetBoundingBox", header: "RWGltf_GltfLatePrimitiveArray.hxx".}

























