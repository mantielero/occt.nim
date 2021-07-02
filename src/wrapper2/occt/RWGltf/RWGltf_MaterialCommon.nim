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

## ! glTF 1.0 format common (obsolete) material definition.

type
  RWGltfMaterialCommon* {.importcpp: "RWGltf_MaterialCommon",
                         header: "RWGltf_MaterialCommon.hxx", bycopy.} = object of StandardTransient
    ambientTexture* {.importc: "AmbientTexture".}: Handle[ImageTexture] ## !< image defining ambient color
    diffuseTexture* {.importc: "DiffuseTexture".}: Handle[ImageTexture] ## !< image defining diffuse color
    specularTexture* {.importc: "SpecularTexture".}: Handle[ImageTexture] ## !< image defining specular color
    id* {.importc: "Id".}: TCollectionAsciiString ## !< material identifier
    name* {.importc: "Name".}: TCollectionAsciiString ## !< material name
    ambientColor* {.importc: "AmbientColor".}: QuantityColor
    diffuseColor* {.importc: "DiffuseColor".}: QuantityColor
    specularColor* {.importc: "SpecularColor".}: QuantityColor
    emissiveColor* {.importc: "EmissiveColor".}: QuantityColor
    shininess* {.importc: "Shininess".}: StandardShortReal
    transparency* {.importc: "Transparency".}: StandardShortReal


proc constructRWGltfMaterialCommon*(): RWGltfMaterialCommon {.constructor,
    importcpp: "RWGltf_MaterialCommon(@)", header: "RWGltf_MaterialCommon.hxx".}

