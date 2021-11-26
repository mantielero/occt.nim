##  Author: Kirill Gavrilov
##  Copyright (c) 2015-2019 OPEN CASCADE SAS
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

discard "forward decl of Image_Texture"
type
  RWGltfMaterialMetallicRoughness* {.importcpp: "RWGltf_MaterialMetallicRoughness", header: "RWGltf_MaterialMetallicRoughness.hxx",
                                    bycopy.} = object of StandardTransient
    baseColorTexture* {.importc: "BaseColorTexture".}: Handle[ImageTexture] ## !< RGB texture for the base color
    metallicRoughnessTexture* {.importc: "MetallicRoughnessTexture".}: Handle[
        ImageTexture]         ## !< RG texture packing the metallic and roughness properties together
    emissiveTexture* {.importc: "EmissiveTexture".}: Handle[ImageTexture] ## !< RGB emissive map controls the color and intensity of the light being emitted by the material
    occlusionTexture* {.importc: "OcclusionTexture".}: Handle[ImageTexture] ## !< R occlusion map indicating areas of indirect lighting
    normalTexture* {.importc: "NormalTexture".}: Handle[ImageTexture] ## !< normal map
    id* {.importc: "Id".}: TCollectionAsciiString ## !< material identifier
    name* {.importc: "Name".}: TCollectionAsciiString ## !< material name
    baseColor* {.importc: "BaseColor".}: QuantityColorRGBA ## !< base color (or scale factor to the texture); [1.0, 1.0, 1.0, 1.0] by default
    emissiveFactor* {.importc: "EmissiveFactor".}: Graphic3dVec3 ## !< emissive color; [0.0, 0.0, 0.0] by default
    metallic* {.importc: "Metallic".}: StandardShortReal ## !< metalness  (or scale factor to the texture) within range [0.0, 1.0]; 1.0 by default
    roughness* {.importc: "Roughness".}: StandardShortReal ## !< roughness  (or scale factor to the texture) within range [0.0, 1.0]; 1.0 by default
    alphaCutOff* {.importc: "AlphaCutOff".}: StandardShortReal ## !< alpha cutoff value; 0.5 by default
    alphaMode* {.importc: "AlphaMode".}: RWGltfGltfAlphaMode ## !< alpha mode; RWGltf_GltfAlphaMode_Opaque by default
    isDoubleSided* {.importc: "IsDoubleSided".}: bool ## !< specifies whether the material is double sided; FALSE by default


proc constructRWGltfMaterialMetallicRoughness*(): RWGltfMaterialMetallicRoughness {.
    constructor, importcpp: "RWGltf_MaterialMetallicRoughness(@)",
    header: "RWGltf_MaterialMetallicRoughness.hxx".}

























