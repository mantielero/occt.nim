##  Author: Kirill Gavrilov
##  Copyright (c) 2016-2019 OPEN CASCADE SAS
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
  ../Image/Image_Texture, ../Quantity/Quantity_ColorRGBA

## ! glTF 1.0 format common (obsolete) material definition.

type
  RWGltf_MaterialCommon* {.importcpp: "RWGltf_MaterialCommon",
                          header: "RWGltf_MaterialCommon.hxx", bycopy.} = object of Standard_Transient
    AmbientTexture* {.importc: "AmbientTexture".}: handle[Image_Texture] ## !< image defining ambient color
    DiffuseTexture* {.importc: "DiffuseTexture".}: handle[Image_Texture] ## !< image defining diffuse color
    SpecularTexture* {.importc: "SpecularTexture".}: handle[Image_Texture] ## !< image defining specular color
    Id* {.importc: "Id".}: TCollection_AsciiString ## !< material identifier
    Name* {.importc: "Name".}: TCollection_AsciiString ## !< material name
    AmbientColor* {.importc: "AmbientColor".}: Quantity_Color
    DiffuseColor* {.importc: "DiffuseColor".}: Quantity_Color
    SpecularColor* {.importc: "SpecularColor".}: Quantity_Color
    EmissiveColor* {.importc: "EmissiveColor".}: Quantity_Color
    Shininess* {.importc: "Shininess".}: Standard_ShortReal
    Transparency* {.importc: "Transparency".}: Standard_ShortReal


proc constructRWGltf_MaterialCommon*(): RWGltf_MaterialCommon {.constructor,
    importcpp: "RWGltf_MaterialCommon(@)", header: "RWGltf_MaterialCommon.hxx".}