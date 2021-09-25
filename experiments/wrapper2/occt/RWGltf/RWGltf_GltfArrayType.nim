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

## ! Low-level glTF enumeration defining Array type.

type
  RWGltfGltfArrayType* {.size: sizeof(cint), importcpp: "RWGltf_GltfArrayType",
                        header: "RWGltf_GltfArrayType.hxx".} = enum
    RWGltfGltfArrayTypeUNKNOWN, ## !< unknown or invalid type
    RWGltfGltfArrayTypeIndices, ## !< "indices"    within "primitive"  element
    RWGltfGltfArrayTypePosition, ## !< "POSITION"   within "attributes" element
    RWGltfGltfArrayTypeNormal, ## !< "NORMAL"     within "attributes" element
    RWGltfGltfArrayTypeColor, ## !< "COLOR"      within "attributes" element
    RWGltfGltfArrayTypeTCoord0, ## !< "TEXCOORD_0" within "attributes" element
    RWGltfGltfArrayTypeTCoord1, ## !< "TEXCOORD_1" within "attributes" element
    RWGltfGltfArrayTypeJoint, ## !< "JOINT"      within "attributes" element
    RWGltfGltfArrayTypeWeight ## !< "WEIGHT"     within "attributes" element


## ! Parse GltfArrayType from string.

proc rWGltfGltfParseAttribType*(theType: cstring): RWGltfGltfArrayType =
  discard

