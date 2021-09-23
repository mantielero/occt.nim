##  Copyright (c) 2019 OPEN CASCADE SAS
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
  ../Graphic3d/Graphic3d_AlphaMode, ../Graphic3d/Graphic3d_Vec,
  ../Image/Image_Texture, ../Quantity/Quantity_ColorRGBA,
  ../Standard/Standard_Dump

## ! Metallic-roughness PBR material definition.

type
  XCAFDoc_VisMaterialPBR* {.importcpp: "XCAFDoc_VisMaterialPBR",
                           header: "XCAFDoc_VisMaterialPBR.hxx", bycopy.} = object
    BaseColorTexture* {.importc: "BaseColorTexture".}: handle[Image_Texture] ## !< RGB texture for the base color
    MetallicRoughnessTexture* {.importc: "MetallicRoughnessTexture".}: handle[
        Image_Texture]        ## !< RG texture packing the metallic and roughness properties together
    EmissiveTexture* {.importc: "EmissiveTexture".}: handle[Image_Texture] ## !< RGB emissive map controls the color and intensity of the light being emitted by the material
    OcclusionTexture* {.importc: "OcclusionTexture".}: handle[Image_Texture] ## !< R occlusion map indicating areas of indirect lighting
    NormalTexture* {.importc: "NormalTexture".}: handle[Image_Texture] ## !< normal map
    BaseColor* {.importc: "BaseColor".}: Quantity_ColorRGBA ## !< base color (or scale factor to the texture); [1.0, 1.0, 1.0, 1.0] by default
    EmissiveFactor* {.importc: "EmissiveFactor".}: Graphic3d_Vec3 ## !< emissive color; [0.0, 0.0, 0.0] by default
    Metallic* {.importc: "Metallic".}: Standard_ShortReal ## !< metalness  (or scale factor to the texture) within range [0.0, 1.0]; 1.0 by default
    Roughness* {.importc: "Roughness".}: Standard_ShortReal ## !< roughness  (or scale factor to the texture) within range [0.0, 1.0]; 1.0 by default
    RefractionIndex* {.importc: "RefractionIndex".}: Standard_ShortReal ## !< IOR (index of refraction) within range [1.0, 3.0]; 1.5 by default
    IsDefined* {.importc: "IsDefined".}: Standard_Boolean ## !< defined flag; FALSE by default
                                                      ## ! Empty constructor.


proc constructXCAFDoc_VisMaterialPBR*(): XCAFDoc_VisMaterialPBR {.constructor,
    importcpp: "XCAFDoc_VisMaterialPBR(@)", header: "XCAFDoc_VisMaterialPBR.hxx".}
proc IsEqual*(this: XCAFDoc_VisMaterialPBR; theOther: XCAFDoc_VisMaterialPBR): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "XCAFDoc_VisMaterialPBR.hxx".}
proc DumpJson*(this: XCAFDoc_VisMaterialPBR; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFDoc_VisMaterialPBR.hxx".}