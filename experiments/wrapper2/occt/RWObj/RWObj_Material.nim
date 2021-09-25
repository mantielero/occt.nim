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

## ! Material definition for OBJ file format.

type
  RWObjMaterial* {.importcpp: "RWObj_Material", header: "RWObj_Material.hxx", bycopy.} = object
    name* {.importc: "Name".}: TCollectionAsciiString ## !< material name (identifier) as defined in MTL file
    diffuseTexture* {.importc: "DiffuseTexture".}: TCollectionAsciiString ## !< path to the texture image file defining diffuse color
    specularTexture* {.importc: "SpecularTexture".}: TCollectionAsciiString ## !< path to the texture image file defining specular color
    bumpTexture* {.importc: "BumpTexture".}: TCollectionAsciiString ## !< path to the texture image file defining normal map
    ambientColor* {.importc: "AmbientColor".}: QuantityColor
    diffuseColor* {.importc: "DiffuseColor".}: QuantityColor
    specularColor* {.importc: "SpecularColor".}: QuantityColor
    shininess* {.importc: "Shininess".}: StandardShortReal
    transparency* {.importc: "Transparency".}: StandardShortReal


proc constructRWObjMaterial*(): RWObjMaterial {.constructor,
    importcpp: "RWObj_Material(@)", header: "RWObj_Material.hxx".}
