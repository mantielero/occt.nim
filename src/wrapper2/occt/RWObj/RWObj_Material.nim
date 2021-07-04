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
  ../Quantity/Quantity_Color, ../TCollection/TCollection_AsciiString

## ! Material definition for OBJ file format.

type
  RWObj_Material* {.importcpp: "RWObj_Material", header: "RWObj_Material.hxx", bycopy.} = object
    Name* {.importc: "Name".}: TCollection_AsciiString ## !< material name (identifier) as defined in MTL file
    DiffuseTexture* {.importc: "DiffuseTexture".}: TCollection_AsciiString ## !< path to the texture image file defining diffuse color
    SpecularTexture* {.importc: "SpecularTexture".}: TCollection_AsciiString ## !< path to the texture image file defining specular color
    BumpTexture* {.importc: "BumpTexture".}: TCollection_AsciiString ## !< path to the texture image file defining normal map
    AmbientColor* {.importc: "AmbientColor".}: Quantity_Color
    DiffuseColor* {.importc: "DiffuseColor".}: Quantity_Color
    SpecularColor* {.importc: "SpecularColor".}: Quantity_Color
    Shininess* {.importc: "Shininess".}: Standard_ShortReal
    Transparency* {.importc: "Transparency".}: Standard_ShortReal


proc constructRWObj_Material*(): RWObj_Material {.constructor,
    importcpp: "RWObj_Material(@)", header: "RWObj_Material.hxx".}