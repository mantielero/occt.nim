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

import
  ../Bnd/Bnd_Box, ../NCollection/NCollection_Sequence, ../Poly/Poly_Triangulation,
  RWGltf_GltfPrimArrayData, RWGltf_GltfPrimitiveMode,
  ../Quantity/Quantity_ColorRGBA

discard "forward decl of RWGltf_MaterialMetallicRoughness"
discard "forward decl of RWGltf_MaterialCommon"
type
  RWGltf_GltfLatePrimitiveArray* {.importcpp: "RWGltf_GltfLatePrimitiveArray",
                                  header: "RWGltf_GltfLatePrimitiveArray.hxx",
                                  bycopy.} = object of Poly_Triangulation ## !
                                                                     ## Constructor.
    ## !< PBR material
    ## !< common (obsolete) material
    ## !< bounding box
    ## !< entity id
    ## !< entity name
    ## !< type of primitive array

  RWGltf_GltfLatePrimitiveArraybase_type* = Poly_Triangulation

proc get_type_name*(): cstring {.importcpp: "RWGltf_GltfLatePrimitiveArray::get_type_name(@)",
                              header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "RWGltf_GltfLatePrimitiveArray::get_type_descriptor(@)",
    header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc DynamicType*(this: RWGltf_GltfLatePrimitiveArray): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc constructRWGltf_GltfLatePrimitiveArray*(theId: TCollection_AsciiString;
    theName: TCollection_AsciiString): RWGltf_GltfLatePrimitiveArray {.constructor,
    importcpp: "RWGltf_GltfLatePrimitiveArray(@)",
    header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc destroyRWGltf_GltfLatePrimitiveArray*(
    this: var RWGltf_GltfLatePrimitiveArray) {.
    importcpp: "#.~RWGltf_GltfLatePrimitiveArray()",
    header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc Id*(this: RWGltf_GltfLatePrimitiveArray): TCollection_AsciiString {.
    noSideEffect, importcpp: "Id", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc Name*(this: RWGltf_GltfLatePrimitiveArray): TCollection_AsciiString {.
    noSideEffect, importcpp: "Name", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc SetName*(this: var RWGltf_GltfLatePrimitiveArray;
             theName: TCollection_AsciiString) {.importcpp: "SetName",
    header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc PrimitiveMode*(this: RWGltf_GltfLatePrimitiveArray): RWGltf_GltfPrimitiveMode {.
    noSideEffect, importcpp: "PrimitiveMode",
    header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc SetPrimitiveMode*(this: var RWGltf_GltfLatePrimitiveArray;
                      theMode: RWGltf_GltfPrimitiveMode) {.
    importcpp: "SetPrimitiveMode", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc HasStyle*(this: RWGltf_GltfLatePrimitiveArray): bool {.noSideEffect,
    importcpp: "HasStyle", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc BaseColor*(this: RWGltf_GltfLatePrimitiveArray): Quantity_ColorRGBA {.
    noSideEffect, importcpp: "BaseColor",
    header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc MaterialPbr*(this: RWGltf_GltfLatePrimitiveArray): handle[
    RWGltf_MaterialMetallicRoughness] {.noSideEffect, importcpp: "MaterialPbr", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc SetMaterialPbr*(this: var RWGltf_GltfLatePrimitiveArray;
                    theMat: handle[RWGltf_MaterialMetallicRoughness]) {.
    importcpp: "SetMaterialPbr", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc MaterialCommon*(this: RWGltf_GltfLatePrimitiveArray): handle[
    RWGltf_MaterialCommon] {.noSideEffect, importcpp: "MaterialCommon",
                            header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc SetMaterialCommon*(this: var RWGltf_GltfLatePrimitiveArray;
                       theMat: handle[RWGltf_MaterialCommon]) {.
    importcpp: "SetMaterialCommon", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc Data*(this: RWGltf_GltfLatePrimitiveArray): NCollection_Sequence[
    RWGltf_GltfPrimArrayData] {.noSideEffect, importcpp: "Data",
                               header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc AddPrimArrayData*(this: var RWGltf_GltfLatePrimitiveArray;
                      theType: RWGltf_GltfArrayType): var RWGltf_GltfPrimArrayData {.
    importcpp: "AddPrimArrayData", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc BoundingBox*(this: RWGltf_GltfLatePrimitiveArray): Bnd_Box {.noSideEffect,
    importcpp: "BoundingBox", header: "RWGltf_GltfLatePrimitiveArray.hxx".}
proc SetBoundingBox*(this: var RWGltf_GltfLatePrimitiveArray; theBox: Bnd_Box) {.
    importcpp: "SetBoundingBox", header: "RWGltf_GltfLatePrimitiveArray.hxx".}