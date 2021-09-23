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

import
  ../Graphic3d/Graphic3d_Vec, ../Quantity/Quantity_ColorRGBA,
  RWGltf_GltfAlphaMode, ../Standard/Standard_Transient,
  ../TCollection/TCollection_AsciiString

discard "forward decl of Image_Texture"
type
  RWGltf_MaterialMetallicRoughness* {.importcpp: "RWGltf_MaterialMetallicRoughness", header: "RWGltf_MaterialMetallicRoughness.hxx",
                                     bycopy.} = object of Standard_Transient
    BaseColorTexture* {.importc: "BaseColorTexture".}: handle[Image_Texture] ## !< RGB texture for the base color
    MetallicRoughnessTexture* {.importc: "MetallicRoughnessTexture".}: handle[
        Image_Texture]        ## !< RG texture packing the metallic and roughness properties together
    EmissiveTexture* {.importc: "EmissiveTexture".}: handle[Image_Texture] ## !< RGB emissive map controls the color and intensity of the light being emitted by the material
    OcclusionTexture* {.importc: "OcclusionTexture".}: handle[Image_Texture] ## !< R occlusion map indicating areas of indirect lighting
    NormalTexture* {.importc: "NormalTexture".}: handle[Image_Texture] ## !< normal map
    Id* {.importc: "Id".}: TCollection_AsciiString ## !< material identifier
    Name* {.importc: "Name".}: TCollection_AsciiString ## !< material name
    BaseColor* {.importc: "BaseColor".}: Quantity_ColorRGBA ## !< base color (or scale factor to the texture); [1.0, 1.0, 1.0, 1.0] by default
    EmissiveFactor* {.importc: "EmissiveFactor".}: Graphic3d_Vec3 ## !< emissive color; [0.0, 0.0, 0.0] by default
    Metallic* {.importc: "Metallic".}: Standard_ShortReal ## !< metalness  (or scale factor to the texture) within range [0.0, 1.0]; 1.0 by default
    Roughness* {.importc: "Roughness".}: Standard_ShortReal ## !< roughness  (or scale factor to the texture) within range [0.0, 1.0]; 1.0 by default
    AlphaCutOff* {.importc: "AlphaCutOff".}: Standard_ShortReal ## !< alpha cutoff value; 0.5 by default
    AlphaMode* {.importc: "AlphaMode".}: RWGltf_GltfAlphaMode ## !< alpha mode; RWGltf_GltfAlphaMode_Opaque by default
    IsDoubleSided* {.importc: "IsDoubleSided".}: Standard_Boolean ## !< specifies whether the material is double sided; FALSE by default


proc constructRWGltf_MaterialMetallicRoughness*(): RWGltf_MaterialMetallicRoughness {.
    constructor, importcpp: "RWGltf_MaterialMetallicRoughness(@)",
    header: "RWGltf_MaterialMetallicRoughness.hxx".}